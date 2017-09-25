////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP05 = White Balance
// Module Name:    sensor_bmp = read and write BMP files emulating a image sensor
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This is part of the testbench
//
// Dependencies:
//    AVNT_IP05_DEFINES.v
//
// Revision:
//    1.0
////////////////////////////////////////////////////////////////////////////////




`timescale 1ns / 100 ps

`define MEM_BLUE  blob_tb.mem_blue
`define MEM_GREEN blob_tb.mem_green
`define MEM_RED   blob_tb.mem_red
    
`include "AVNT_IP03_DEFINES.v"



module sensor_bmp (

    clk,

    start,
    save,
    check,
    mode,

    fname, 
    
    frame_valid,
    line_valid,
    pixel_data,
    rgb_data

);

parameter PIXSIZE = `PIXSIZE; 

input clk;
input start;
input save;
input check; // unused in this release

input [7:0] mode; // can only have the value of: 2 in this release

input [8*16-1:0] fname;

output  frame_valid;
output  line_valid;
output [PIXSIZE-1:0] pixel_data;

output [3*(PIXSIZE)-1:0] rgb_data;

reg frame_valid;
reg line_valid;
reg [PIXSIZE-1:0] pixel_data;

//------------------------------------------------------

integer file;
integer foffset;

integer biCompression;       
integer biSizeImage;
integer biXPelsPerMeter;
integer biYPelsPerMeter;
integer biClrUsed;
integer biClrImportant;
reg [15:0]  bfType;
integer     bfSize;
reg [15:0]   bfReserved1, bfReserved2;
integer  bfOffBits;
integer  biSize, biWidth, biHeight;
reg [15:0] biPlanes, biBitCount;

reg [PIXSIZE-1:0] image_in  [0:`ROWS-1][0:`COLS-1][0:2];
reg [PIXSIZE-1:0] image_out [0:`ROWS-1][0:`COLS-1][0:2];


reg [7:0] header[0:1023];

reg [3*(PIXSIZE)-1:0] rgb_data;


function [31:0] ch_endian32(input [31:0] value);
    begin
	    ch_endian32[ 7: 0] = value[31:24];
	    ch_endian32[15: 8] = value[23:16];
	    ch_endian32[23:16] = value[15: 8];
	    ch_endian32[31:24] = value[ 7: 0];	

    end
endfunction


function [15:0] ch_endian16(input [15:0] value);
    begin
	    ch_endian16[ 7: 0] = value[15: 8];
	    ch_endian16[15: 8] = value[ 7: 0];	
    end
endfunction


integer fpo;

// ------------------------------------------------------------------------------------------------------
// Task to read .BMP files into the testbench
// ------------------------------------------------------------------------------------------------------

task readBMP(input [128*8:1] read_filename);
    integer fp,fp2,fpos;
    integer  i, j, k, frin,frout,yy,xx;
    reg [PIXSIZE-1:0] red,green,blue;
    reg [7:0] byte;
begin   

    // Open File
    fp = $fopen(read_filename, "rb") ;// must be binary read mode
    if (!fp) begin
        $display("readBmp: Open error!\n");
        $finish;
    end
    // $display("input file : %s", read_filename);
                
    // Read Header Informations
    frin  = $fread(bfType,  fp); // $display("biType: %s",bfType);

    frin = $fread(bfSize,  fp); bfSize=ch_endian32(bfSize); //$display("bfSize: %d",bfSize);
    frin = $fread(bfReserved1, fp); //$display("bfReserved1: %h",bfReserved1);
    frin = $fread(bfReserved2, fp); //$display("bfReserved2: %h",bfReserved2);
    frin = $fread(bfOffBits,  fp); bfOffBits=ch_endian32(bfOffBits); //$display("bfOffBits: %h",bfOffBits);

    frin = $fread(biSize,  fp); biSize=ch_endian32(biSize); //$display("biSize: %h",biSize);
    frin = $fread(biWidth, fp); biWidth=ch_endian32(biWidth); //$display("biWidth: %d",biWidth);
    if (biWidth%4) begin
        $display("Sorry, biWidth mod 4 must be zero in this program. Found =%d",biWidth);
        $finish;
    end

    frin = $fread(biHeight, fp);    biHeight=ch_endian32(biHeight); //$display("biHeight: %d",biHeight);
    frin = $fread(biPlanes, fp);    biPlanes=ch_endian16(biPlanes); //$display("biPlanes: %d",biPlanes);
    frin = $fread(biBitCount,  fp); biBitCount=ch_endian16(biBitCount); //$display("biBitCount: %d",biBitCount);
    if (biBitCount !=24) begin
        $display("Sorry, biBitCount must be 24 in this program. Found=%d",biBitCount);
        $finish;
    end
    frin = $fread(biCompression,  fp);  biCompression=ch_endian32(biCompression); //$display("biCompression: %d",biCompression);
    frin = $fread(biSizeImage,  fp);    biSizeImage=ch_endian32(biSizeImage); //$display("biSizeImage: %d",biSizeImage);
    frin = $fread(biXPelsPerMeter, fp); biXPelsPerMeter=ch_endian32(biXPelsPerMeter); //$display("biXPelsPerMeter: %d",biXPelsPerMeter);
    frin = $fread(biYPelsPerMeter, fp); biYPelsPerMeter=ch_endian32(biYPelsPerMeter); //$display("biYPelsPerMeter: %d",biYPelsPerMeter);
    frin = $fread(biClrUsed,  fp);      biClrUsed=ch_endian32(biClrUsed); //$display("biClrUsed: %d",biClrUsed);
    frin = $fread(biClrImportant,  fp); biClrImportant=ch_endian32(biClrImportant); //$display("biClrImportant: %d",biClrImportant);

    fpos=$ftell(fp);

    foffset = fpos;

    frin=$fseek(fp,0,0);

    fpo = $fopen(fname,"wb");
    $display("initializing %s",fname);

    for (i=0;i<fpos;i=i+1) begin
        frin = $fread(byte,fp); 
        $fwrite(fpo,"%c",byte);
        header[i]=byte;
    end

    for(yy=0;yy<biHeight;yy=yy+1) begin
        for(xx=0;xx<biWidth;xx=xx+1) begin
            red     = image_out[yy][xx][0];
            green   = image_out[yy][xx][1];
            blue    = image_out[yy][xx][2];
            $fwrite(fpo,"%c",255);
            $fwrite(fpo,"%c",255);
            $fwrite(fpo,"%c",0);
        end
    end

    $fclose(fpo);

    $display("Current POS=%d",$ftell(fp));

    $display("Actual rows,cols=%d,%d   out of available: ROWS,COLS =%d,%d",biHeight,biWidth,`ROWS,`COLS);

    // Read RGB Data
    for (i=0; i<  biHeight; i=i+1) begin
        for (j=0; j<  biWidth; j=j+1) begin
                for (k=0; k<3; k=k+1) begin
                        frin = $fread(byte,fp);
                        image_in[biHeight-i-1][j][2-k]= byte << (PIXSIZE-8);
                end
        end
    end

    $fclose(fp);
end
endtask
// ------------------------------------------------------------------------------------------------------

reg [31:0] cx, cy, mem_pos,xx,yy;  //integer


reg [PIXSIZE-1:0] red,green,blue;

reg [31:0] pred,pgreen,pblue;
reg [31:0] LNS;
reg [31:0] MAXLNS, MLNS;

reg [31:0] MAXR;
reg [31:0] MAXG;
reg [31:0] MAXB;


reg [31:0] AVR, AVG, AVB;
reg [31:0] cntx, cnty;


// ------------------------------------------------------------------------------------------------------
// INITIAL
// ------------------------------------------------------------------------------------------------------


initial
	begin
	frame_valid = 0;
  line_valid  = 0;
    
   
// Read the file when the start signal comes

  while (1) begin
    $display("Waiting for start...");
	wait(start); wait(~start);

    readBMP(`INBMP); 

	
	`define START_PAUSE 12000
	`define PAUSE_DURATION 16
	`define PAUSE_PERIOD 2000
    
    if (mode == 2) begin // full rgb mode

        frame_valid = 1;


        for(cy=0;cy< biHeight ;cy=cy+1) begin

		    line_valid = 1;
		    for(cx=0;cx<biWidth;cx=cx+1) begin
                rgb_data = {image_in[cy][cx][0] , image_in[cy][cx][1] , image_in[cy][cx][2]};
                wait(!clk); wait(clk);
				
				if ((cy*biWidth+cx)%`PAUSE_PERIOD==4) begin
				  line_valid = 0;
					repeat (`PAUSE_DURATION) @(posedge clk);
					line_valid = 1;
				end
				
				
		    end

            /* comment this out to remove blanking pixels at end of each row 
    	    
            line_valid = 0;
	        rgb_data = 24'h0;
	        repeat (20) @(posedge clk);
            */
            
	    end
        
      //  #1
      line_valid  = 0;
	    frame_valid = 0;
	    
	     
    

    end else begin
        $display("\n\nERROR: sensor_bmp supports only mode 2!!\n\n");
        $finish;
    end

 
  end // while (1)
   
      
end
// ------------------------------------------------------------------------------------------------------


integer frin,i,yyy;

reg [1:0] line_valid_fall_reg;
always @(posedge clk)
    line_valid_fall_reg <= {line_valid_fall_reg[0],line_valid};


wire line_valid_fall = line_valid_fall_reg==2'b10;
integer pix_error;

reg [PIXSIZE-1:0] ri,ro,gi,go,bi,bo;

// ------------------------------------------------------------------------------------------------------
// SAVE THE IMAGE OUTPUT
// ------------------------------------------------------------------------------------------------------

always @(posedge save) begin


    fpo = $fopen(fname,"wb");
    $display("saving into %s",fname);

    for (i=0;i<foffset;i=i+1)
        $fwrite(fpo,"%c",header[i]);

    mem_pos = 0;   

for(yy=0;yy<biHeight;yy=yy+1) begin
		for(xx=0;xx<biWidth;xx=xx+1) begin

            blue    = `MEM_BLUE[mem_pos];
            green   = `MEM_GREEN[mem_pos];
            red     = `MEM_RED[mem_pos];

            image_out[biHeight-yy-1][xx][0] = red;
            image_out[biHeight-yy-1][xx][1] = green;
            image_out[biHeight-yy-1][xx][2] = blue;
            mem_pos = mem_pos+1;

		end
	end

	for(yy=0;yy<biHeight;yy=yy+1) begin
		for(xx=0;xx<biWidth;xx=xx+1) begin
            red     = image_out[yy][xx][2];
            green   = image_out[yy][xx][1];
            blue    = image_out[yy][xx][0];
            $fwrite(fpo,"%c",red[PIXSIZE-1:PIXSIZE-8]);
            $fwrite(fpo,"%c",green[PIXSIZE-1:PIXSIZE-8]);
            $fwrite(fpo,"%c",blue[PIXSIZE-1:PIXSIZE-8]);
		end
	end




    $fclose(fpo);
   
  
end

// ------------------------------------------------------------------------------------------------------


endmodule

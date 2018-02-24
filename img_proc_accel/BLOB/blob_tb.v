////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP05 = White Balance
// Module Name:    white_bal_tb = Test Bench
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This is the testbench top module
//
// Dependencies:
//    AVNT_IP05_DEFINES.v
//    sensor_bmp.v
//
// Revision:
//    1.0
////////////////////////////////////////////////////////////////////////////////


`define sclk_PERIOD     8

`include "AVNT_IP03_DEFINES.v"

module blob_tb;


// This parameter will be propagated downwards in the device-under-test
parameter PIXSIZE = `PIXSIZE;


reg [PIXSIZE-1 : 0] mem_red   [0 : (1<<(`A_BITS))-1];
reg [PIXSIZE-1 : 0] mem_green [0 : (1<<(`A_BITS))-1];
reg [PIXSIZE-1 : 0] mem_blue  [0 : (1<<(`A_BITS))-1];

reg [PIXSIZE-1 : 0] mem_label [0 : (1<<(`A_BITS))-1];

reg [PIXSIZE-1  :0] image_gold [0:`ROWS-1][0:`COLS-1][0:2];

reg [7:0] test_mode;
wire line_valid,frame_valid,frame_valid_o,data_valid;


// ----------------------------------------------------------------
// Prepare System Clock and Reset signals
// ----------------------------------------------------------------

reg clk;
always #(`sclk_PERIOD/2) clk = ~clk;
initial clk = 1'b0;

reg rst_n;
initial begin
    rst_n = 0;
    repeat (10) @(posedge clk);
    #1
    rst_n = 1;
end


// ----------------------------------------------------------------
// Store waveforms for the simulator. Run for 40 000 000 ns
// ----------------------------------------------------------------


initial
begin
  $shm_open("waves.shm");
  $shm_probe(blob_tb,"AS");


  #1_000_000_000
  $shm_close;
  $finish;
end


// ----------------------------------------------------------------
// Create image file names for storing the output of each mode 
// ----------------------------------------------------------------

reg save;
reg check;

reg  [10:0] sel;


reg [8*16-1:0] fname;
reg [3:0] iteration;

wire [3:0] sel_name  = {3'b00,sel[10:8]};
wire [3:0] iter_name = iteration;

always@ (posedge clk) begin
    $swrite(fname,"o_%h_%h.bmp",sel_name, iter_name);
end

// ----------------------------------------------------------------
// Initiate Image File Saving for each new frame
// ----------------------------------------------------------------

initial begin

    test_mode = 2; // 2: full rgb mode

    save = 0;
    check= 0;

    wait (rst_n);

    while(1) begin
        
        @(negedge frame_valid) begin
        #10
        check = 1;
        save = 1;
        #100
        save = 0;
        end
    end

end


reg [9:0] lcnt;
initial lcnt = 0;

always @(negedge frame_valid) begin
    if (lcnt == 32) begin
        #100
        save = 1;
        #10
        save = 0;
        lcnt = 0;
    end else begin
        lcnt = lcnt +1;
    end
end

reg sensor_start;

reg  [ 5:0] set_addr;
reg [`DIVSIZE-1:0] set_data;
reg  write_b;

// ----------------------------------------------------------------
// This task is used for writting to the configuration registers. 
// ----------------------------------------------------------------

task write_data ;
input [ 5:0] addr;
input [`DIVSIZE-1:0] data;

begin
        @(posedge clk);
        #1
        set_addr = addr;
        set_data = data;
        @(posedge clk);
        #1 write_b  = 1'b0;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        #1 write_b  = 1'b1;
        repeat(10) @(posedge clk);

end
endtask

// ----------------------------------------------------------------
// THIS IS THE MAIN TEST-BENCH PROCESS
// ----------------------------------------------------------------
// Runs a sequence of frames for each white-balance mode. When we
// enter a mode that requires setting of registers, register values
// are written.
// ----------------------------------------------------------------


initial begin 


    set_addr  = 0;
    set_data  = 0;
    write_b   = 1;
    sel       = 0;
    iteration = 0;

    sensor_start = 0;
    
    repeat (1000) @(posedge clk); // an initial delay to allow time for reset etc.

    sel[10:8] = 3'b001;  // select algorithm

    repeat (5) begin

        
        iteration = 0;
        
        case (sel[10:8]) 
            3'b010: begin
                    write_data(6'b10_0000,   `OSTOP );  // top
                    write_data(6'b10_0001,   `OSLEFT);  // left
                    write_data(6'b10_0010,       60 );  // size
                    write_data(6'b10_0011,        3 );  // mode
                    write_data(6'b10_0100,  `BMP_HOR);  // number of columns
            end
            3'b011: begin

					write_data(6'b11_0000, 100<<(`DIVSIZE/2-8));   //red     256<<(`DIVSIZE/2-8)   <--- 1
                    write_data(6'b11_0001, 400<<(`DIVSIZE/2-8));   //green   256<<(`DIVSIZE/2-8)   <--- 1
                    write_data(6'b11_0010, 100<<(`DIVSIZE/2-8));   //blue    256<<(`DIVSIZE/2-8)   <--- 1
					
                    sel[1:0] = 2'b00;

            end
            3'b100: begin
                    write_data(6'b01_0000, 500);   //threshold
            end
        endcase
                
        //repeat (100) @(posedge clk);
        
        #1 sensor_start = 1;
        @(posedge clk);
        #1 sensor_start = 0;
    
        repeat(6) begin
            wait(frame_valid);
            wait(!frame_valid);

            repeat (8) @(posedge clk);   //use this to create intra-frame delay
            
            iteration = iteration + 1;
            sensor_start = 1;
            @(posedge clk);
            sensor_start = 0;
        end
        
        if (sel[10:8] < 4) sel[10:8] = sel[10:8] + 1; else sel[10:8] = 0;
        
         $display("Changing to the next method for estimation of WB parameters...");

    end
    
    // use this code to stop simulation when all cases have been tested
    #10_000_000
    $shm_close;
    $finish;
    
end


// ----------------------------------------------------------------
// Structural code. Connects the IP05 (white balance) and the
// module which generates pixel flow from BMP files (sensor_bmp).
// ----------------------------------------------------------------


wire  [3*PIXSIZE-1:0] rgb_data;


 
sensor_bmp U_sensor_bmp (

    .clk           ( clk               ),

    .start         ( sensor_start      ),
    .save          ( save              ),
    .check         ( 1'b0              ),
    .mode          ( test_mode         ),   
    .fname         ( fname             ),

    .frame_valid   ( frame_valid       ),
    .line_valid    ( line_valid        ),
    .pixel_data    (                   ),
    .rgb_data      ( rgb_data          )
    
    

);


wire [PIXSIZE-1:0] o_red,o_green,o_blue;

wire [7:0] ll_data;
wire [8:0] ll_index;

wire [7:0] memlabelwrite, memlabelread;

reg pingpong;
wire pongping;

assign pongping = !pingpong;

reg [7:0] xx,yy;

wire [17:0] readpos, writepos;

assign readpos  = {pongping,xx,yy};
assign writepos = {pingpong,xx,yy};


assign memlabelread = mem_label[readpos];


always @(posedge clk  or negedge rst_n) begin 
	if (~rst_n) begin
		xx <= 0;
		yy <= 0;
		pingpong <= 0;
	end else begin
		if (~frame_valid) begin
			xx <= 0;
			yy <= 0; 
		end else begin
			xx <= xx+1;
			mem_label[writepos] <= memlabelwrite;
			if (xx==255) begin
				yy <= yy+1;
				xx <= 0;
				if (yy==253) begin
					yy <= 0;
					pingpong <= !pingpong;
				end
			end
        end
    end
end



reg [13:0] col_cnt = 256;
reg [11:0] row_cnt = 248;

AVNT_IP03_BLOBA blob_a (
    .clk           ( clk              ), 
    .reset_n       ( rst_n            ), 

    .pixelin       ( rgb_data[1:0]    ),  
    .frame_valid   ( frame_valid      ), 
    .data_valid    ( line_valid       ), 
    
    .col_cnt       ( col_cnt          ), 
    .row_cnt       ( row_cnt          ), 
    .feature       ( 2'b00            ), 
    
	.ll_index      ( ll_index         ),

    .labelout      ( memlabelwrite    ), 
    .o_frame_valid ( frame_valid_o    ),
    .o_data_valid  ( data_valid       ),
	
	.ll_data       ( ll_data          ),
	
	.too_many_labels ( too_many_labels)
 );

 
 wire [7:0] o_label;
 
 AVNT_IP03_BLOBB blob_b (
    .clk           ( clk              ), 
    .reset_n       ( rst_n            ), 

    .labelin       ( memlabelread     ),  
    .frame_valid   ( frame_valid      ), 
    .data_valid    ( line_valid       ), 
  
    	
	.ll_data       ( ll_data          ),

    .labelout      ( o_label            ), 
    .o_frame_valid ( frame_valid_o    ),
    .o_data_valid  ( data_valid       ),
	
	.ll_index      ( ll_index         )
 );
 
 
 assign o_red   = (o_label>0) ?  ( o_label[3:0]<<4 )  : 0;
 assign o_green = (o_label>0) ?  180  : 0;
 assign o_blue  = (o_label>0) ?  ( o_label[4:1]<<4 )  : 0;


	
	

reg [26:0] pos;

initial pos=0;

//---------------------------------------------------------------------
// store data for verification
//---------------------------------------------------------------------
always @(posedge clk) begin
    if (~frame_valid) begin
        pos <= 0;
    end else begin
        if (data_valid) begin
            mem_red[pos]   <= o_red     ;
            mem_green[pos] <= o_green   ;
            mem_blue[pos]  <= o_blue    ;
            pos <= pos+1;
        end
    end
end

endmodule

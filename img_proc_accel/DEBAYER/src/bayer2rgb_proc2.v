////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP04 = Bayer to RGB Conversion
// Module Name:    bayer2rgb_proc2 = Applies the demosaicing
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This module applies the demosaicing operations on the
//    R,G,G,B components as appropriately read depending on
//    the selected mode.

// Dependencies:
//    (no dependency)
//
// Revision:
//    1.0
////////////////////////////////////////////////////////////////////////////////

module bayer2rgb_proc2(

    row,
    col,
    
    c_rows_r,
    c_cols_r,
    c_bayer_mode,
    
    r0,
    r1,
    r2,

    r3,
    r4,
    r5,

    r6,
    r7,
    r8,

    red,
    green,
    blue    

);

parameter PIXSIZE = 16;
parameter ROW_W   = 13;
parameter COL_W   = 14;

input [ROW_W:0] row;
input [COL_W:0] col;

input [ROW_W:0] c_rows_r;
input [COL_W:0] c_cols_r;
input [1:0] c_bayer_mode;
    
input [PIXSIZE-1:0] r0;
input [PIXSIZE-1:0] r1;
input [PIXSIZE-1:0] r2;

input [PIXSIZE-1:0] r3;
input [PIXSIZE-1:0] r4;
input [PIXSIZE-1:0] r5;

input [PIXSIZE-1:0] r6;
input [PIXSIZE-1:0] r7;
input [PIXSIZE-1:0] r8;

output [PIXSIZE-1:0] red;
output [PIXSIZE-1:0] green;
output [PIXSIZE-1:0] blue;   


reg    [PIXSIZE-1:0] red;
reg    [PIXSIZE-1:0] green;
reg    [PIXSIZE-1:0] blue;   

always @(*) begin

    if (row==0) begin
    

      if (col == c_cols_r ) begin
        if (c_bayer_mode[0] == 0) begin
            // G on B 
            red   = r4; 
            green = r1; 
            blue  = r2; 
        end else begin
            // B 
            red    = r5;  
            green  = r4;
            blue   = r1;
        end
      end
      else if (col[0] == 1'b0) begin
        
        if (c_bayer_mode[0] == 0) begin
            // B 
            red   = r3;
            green = r0;
            blue  = r1;
        end else begin
            // G 
            red    = r4;
            green  = r1;
            blue   = (r0+r2)/2;
        end
      end else begin

        if (c_bayer_mode[0] == 0) begin
              // G on 1st row
              red    = r4;
              green  = r1;
              blue   = (r0+r2)/2;
        end else begin
            // B 
            red   = r3;
            green = (r2+r0)/2; 
            blue  = r1;
        end

      end
      

    end else if (col==c_cols_r) begin
        // do nothing (i.e. keep values from previous column!
      if (row[0] == 1'b0) begin
        
        if (c_bayer_mode[0] == 0) begin
            // G on B 
            red   = (r1+r7)/2; // OK
            green = r4;        // OK
            blue  = r5;        // OK
        end else begin
            // B 
            red    = (r2+r8)/2; // OK 
            green  = (r1+r7)/2;
            blue   = r4;
        end
      end else begin

        if (c_bayer_mode[0] == 0) begin
              // R
              red    = r4;
              green  = (r1+r7)/2;
              blue   = (r2+r8)/2;
        end else begin
            // G on R
            red   = r5; // OK
            green = r4; // OK
            blue  = (r1+r7)/2; // OK
        end

      end
        //
    end else begin
        case ({row[0],col[0]})
        2'b00 : begin
            if (c_bayer_mode[0] == 0) begin
                // B
                red   = r0;
                green = (r1+r3)/2;
                blue  = r4;
            end else begin
                // G on B row
                red    = r1;
                green  = r4;
                blue   = r3;
            end
        end
       2'b11 : begin
            if (c_bayer_mode[0] == 0) begin
                // R
                red  = r4;
                green = (r1+r3)/2;
                blue   = r0;
            end else begin
                // G on R row
                red    = r3;
                green  = r4;
                blue   = r1;
            end

        end
       2'b01 : begin
            if (c_bayer_mode[0] == 0) begin
                // G on B row
                red    = r1;
                green  = r4;
                blue   = r3;
            end else begin
                // B
                red   = r0;
                green = (r1+r3)/2;
                blue  = r4;
            end
        end
       default  : begin // 2'b10
            if (c_bayer_mode[0] == 0) begin
                // G in R row
                red    = r3;
                green  = r4;
                blue   = r1;
            end else begin
                // R
                red  = r4;
                green = (r1+r3)/2;
                blue   = r0;
            end
        end
        endcase
    end
end

endmodule

////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP04 = Bayer to RGB Conversion
// Module Name:    BTR_TOP = Top Level Module
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This module connects the three methods for converting a pixel
//    flow in Bayer Pattern to RGB pixels
//
// Dependencies:
//    bayer2rgb_proc.v
//    debayer_ip_mode0.v
//    debayer_ip_mode1.v
//    dp_ram_rtl.v
//    pclk_fifo.v
//    sync.v
//
// Revision:
//    1.0
////////////////////////////////////////////////////////////////////////////////


`timescale 1 ns / 100 ps

module AVNT_IP04_BTR_TOP (

	clk, 
	rst_n, 

//---------------------------------------------------------------------
// control signals
//---------------------------------------------------------------------
    c_en,
    c_rows,
    c_cols,
    c_bayer_mode,
	c_inpshift,
    c_op,

//---------------------------------------------------------------------
//  sensor interface
//---------------------------------------------------------------------
	pclk, 
    frame_valid,
    data_valid, 
	sensor_data,    


//---------------------------------------------------------------------   
// output signals
//---------------------------------------------------------------------

    frame_valid_o ,
    data_valid_o  ,
    pixel_data_o  

);

parameter PIXINSZ = 16; // sensor data width
parameter PIXSIZE =  8; // internal data width
parameter ROW_W   = 13; // row vector width, must hold #of rows 
parameter COL_W   = 14; // column vector width, must hold #of columns max is 14

//---------------------------------------------------------------------
input clk;
input rst_n;

//---------------------------------------------------------------------
// control signals
//---------------------------------------------------------------------
input c_en;
input [ROW_W:0] c_rows;
input [COL_W:0] c_cols;

input [1:0] c_bayer_mode; // 00: BG   01: GB    10 : RG     11: GR
                          //     GB       BG         GR         RG
							 
input [3:0] c_inpshift;   // shift input bits in order to bring data in MSbits							 
							 
input [1:0] c_op;         // 00 : interpolating, 01: simple 4-1, 10: simple 4-4

//---------------------------------------------------------------------
// interface to the incoming pixel flow
//---------------------------------------------------------------------
input pclk;
input frame_valid;
input data_valid;
input [PIXINSZ-1:0] sensor_data;

//---------------------------------------------------------------------   
// output signals
//---------------------------------------------------------------------
output  frame_valid_o;
output  data_valid_o;
output [3*PIXSIZE-1:0] pixel_data_o;

reg  frame_valid_o;
reg  data_valid_o;
reg [3*PIXSIZE-1:0] pixel_data_o;

// apply shifting of input

reg frame_valid_r;
reg data_valid_r;

reg  [PIXSIZE-1:0] sensor_data_shifted;

wire [PIXINSZ-1:0] sensor_data_shift1;
wire [PIXINSZ-1:0] sensor_data_shift2;
wire [PIXINSZ-1:0] sensor_data_shift4;
wire [PIXINSZ-1:0] sensor_data_shift8;


wire [3*PIXSIZE-1:0] pixel_data_o_0;
wire [3*PIXSIZE-1:0] pixel_data_o_1;


assign sensor_data_shift8 = (c_inpshift[3]==1'b1) ? sensor_data        << 8 : sensor_data;
assign sensor_data_shift4 = (c_inpshift[2]==1'b1) ? sensor_data_shift8 << 4 : sensor_data_shift8;
assign sensor_data_shift2 = (c_inpshift[1]==1'b1) ? sensor_data_shift4 << 2 : sensor_data_shift4;
assign sensor_data_shift1 = (c_inpshift[0]==1'b1) ? sensor_data_shift2 << 1 : sensor_data_shift2;

always @(posedge clk) begin
    sensor_data_shifted <= sensor_data_shift1[PIXINSZ-1:(PIXINSZ-PIXSIZE)];
    
    frame_valid_r <= frame_valid;
    data_valid_r  <= data_valid;
end



wire [PIXSIZE-1:0] sclk_pixel_data;

// input processing: clock decoupling fifo

defparam U_pclk_fifo.DATA_W=PIXSIZE;
pclk_fifo U_pclk_fifo (
    .rst_n                ( rst_n               ),
    .pclk                 ( pclk                ),
    .sclk                 ( clk                 ),

    .pclk_frame_valid     ( frame_valid_r       ),
    .pclk_line_valid      ( data_valid_r        ),
    .pclk_pixel_data      ( sensor_data_shifted ),

    .sclk_frame_valid     ( sclk_frame_valid    ),
    .sclk_line_valid      ( sclk_line_valid     ),
    .sclk_pixel_data      ( sclk_pixel_data     )
);

// write address signals
wire [COL_W-1:0] waddr0, waddr1, waddr2;

wire [COL_W-1:0] waddr0_0, waddr1_0, waddr2_0;
wire [COL_W-1:0] waddr0_1, waddr1_1, waddr2_1;

// read address signals

wire [COL_W-1:0] raddr0, raddr1, raddr2;

wire [COL_W-1:0] raddr0_0, raddr1_0, raddr2_0;
wire [COL_W-1:0] raddr0_1, raddr1_1, raddr2_1;

// memory data inputs
wire [PIXSIZE-1:0] din0,  din1,   din2,   din3;

wire [PIXSIZE-1:0] din0_0,  din1_0,   din2_0;
wire [PIXSIZE-1:0] din0_1,  din1_1,   din2_1;

// memory data outputs
wire [PIXSIZE-1:0] dout0, dout1,  dout2;

// Debayerizer algorithm

defparam U_debayer_ip_mode1.PIXSIZE = PIXSIZE; 
defparam U_debayer_ip_mode1.ROW_W   = ROW_W;
defparam U_debayer_ip_mode1.COL_W   = COL_W;

debayer_ip_mode1 U_debayer_ip_mode1 (
    .clk           ( clk              ),
    .rst_n         ( rst_n            ),

    .c_en          ( c_en             ),
    .c_rows        ( c_rows           ),
    .c_cols        ( c_cols           ),
    .c_bayer_mode  ( c_bayer_mode     ),
    .c_opwire      ( c_op[1]          ),
 
    .frame_valid   ( sclk_frame_valid ),
    .line_valid    ( sclk_line_valid  ),
    .pixel_data    ( sclk_pixel_data  ),
    
    .waddr0        ( waddr0_1           ),
    .we0           ( we0_1              ),
    .din0          ( din0_1             ),
    .raddr0        ( raddr0_1           ),
 
    .waddr1        ( waddr1_1           ),
    .we1           ( we1_1              ),
    .din1          ( din1_1             ),
    .raddr1        ( raddr1_1           ),

    .waddr2        ( waddr2_1           ),
    .we2           ( we2_1              ),
    .din2          ( din2_1             ),
    .raddr2        ( raddr2_1           ),



    .dout0         ( dout0            ),
    .dout1         ( dout1            ),
    .dout2         ( dout2            ),

    .frame_valid_o ( frame_valid_o_1    ),
    .line_valid_o  ( data_valid_o_1     ),
    .pixel_data_o  ( pixel_data_o_1     ),
    .frame_start_o ( ),
    .line_start_o  ( )

);

// c_bayer_mode

debayer_ip_mode0 debayer_ip_mode0  (
    .clk           ( clk              ),
    .rst_n         ( rst_n            ),

    .c_en          ( c_en             ),
    .c_rows        ( c_rows           ),
    .c_cols        ( c_cols           ),
    .c_bayer_mode  ( c_bayer_mode     ),
 
    .frame_valid   ( sclk_frame_valid ),
    .line_valid    ( sclk_line_valid  ),
    .pixel_data    ( sclk_pixel_data  ),
 

    .waddr0        ( waddr0_0         ),
    .we0           ( we0_0            ),
    .din0          ( din0_0           ),
    .raddr0        ( raddr0_0         ),
 
    .waddr1        ( waddr1_0         ),
    .we1           ( we1_0            ),
    .din1          ( din1_0           ),
    .raddr1        ( raddr1_0         ),


    .dout0         ( dout0            ),
    .dout1         ( dout1            ),

    .frame_valid_o ( frame_valid_o_0  ),
    .line_valid_o  ( data_valid_o_0   ),
    .pixel_data_o  ( pixel_data_o_0   ),

    .frame_start_o ( ),
    .line_start_o  ( )

);


// first memory (0)
assign waddr0 = (c_op==2'b01) ? waddr0_0 : waddr0_1;
assign we0    = (c_op==2'b01) ? we0_0    : we0_1;
assign din0   = (c_op==2'b01) ? din0_0   : din0_1;
assign raddr0 = (c_op==2'b01) ? raddr0_0 : raddr0_1;

// second memory (1)
assign waddr1 = (c_op==2'b01) ? waddr1_0 : waddr1_1;
assign we1    = (c_op==2'b01) ? we1_0    : we1_1;
assign din1   = (c_op==2'b01) ? din1_0   : din1_1;
assign raddr1 = (c_op==2'b01) ? raddr1_0 : raddr1_1;

// third memory (2)
assign waddr2 =  waddr2_1;
assign we2    =  we2_1;
assign din2   =  din2_1;
assign raddr2 =  raddr2_1;


// Instantiation of the memory units:

defparam U_mem0.DATA_W = PIXSIZE;
defparam U_mem0.ADDR_W = COL_W;

dp_ram_rtl U_mem0 (

    .clk    ( clk    ),

    .addra  ( waddr0 ),
    .wea    ( we0    ),
    .dina   ( din0   ),

    .addrb  ( raddr0 ),
    .doutb  ( dout0  )

);

defparam U_mem1.DATA_W = PIXSIZE;
defparam U_mem1.ADDR_W = COL_W;
dp_ram_rtl U_mem1 (

    .clk    ( clk    ),

    .addra  ( waddr1 ),
    .wea    ( we1    ),
    .dina   ( din1   ),

    .addrb  ( raddr1 ),
    .doutb  ( dout1  )

);

defparam U_mem2.DATA_W = PIXSIZE;
defparam U_mem2.ADDR_W = COL_W;
dp_ram_rtl U_mem2 (

    .clk    ( clk    ),

    .addra  ( waddr2 ),
    .wea    ( we2    ),
    .dina   ( din2   ),

    .addrb  ( raddr2 ),
    .doutb  ( dout2  )

);

wire frame_valid_o_i;
wire data_valid_o_i;
wire [3*`PIXSIZE-1:0] pixel_data_o_i;

assign frame_valid_o_i  = (c_op==2'b01) ? frame_valid_o_0 : frame_valid_o_1;
assign data_valid_o_i   = (c_op==2'b01) ? data_valid_o_0  : data_valid_o_1;
assign pixel_data_o_i   = (c_op==2'b01) ? pixel_data_o_0  : pixel_data_o_1;

always @(posedge clk or negedge rst_n) begin

    if (rst_n == 1'b0) begin
      frame_valid_o  <= 0;
      data_valid_o   <= 0;
      pixel_data_o   <= 0;
    end else begin
      frame_valid_o  <= frame_valid_o_i;
      data_valid_o   <= data_valid_o_i;
      pixel_data_o   <= pixel_data_o_i;
    end 
end


endmodule

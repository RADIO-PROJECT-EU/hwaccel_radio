////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP16 = Integral Image Generator
// Module Name:    dp_ram_rtl = Memory Module
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This module will infer a memory that can hold an entire row
//    of pixels.
//
// Dependencies:
//    (no dependency)
//
// Revision:
//
//    0.1   Code copy from IP13
//    1.0	Initial Release
//
///////////////////////////////////////////////////////////////////////////////


`define STANDALONE
`ifdef STANDALONE
`include "./CODE/AVNT_IP16_DEFINES.v"
`else
`include "../CODE/AVNT_IP_DEFINES.v"
`endif


module dp_ram_rtl (

    clk,

    addra,
    wea,
    dina,

    addrb,
    doutb,
	
	enb

);

`define ADDR_W `D16_COL_W
`define DATA_W `D16_IIWORDSIZE

`define ASYNC


input clk;

input  [ `ADDR_W - 1 : 0] addra;
input  wea;
input  [ `DATA_W - 1 : 0] dina;

input  [ `ADDR_W - 1 : 0] addrb;
output [ `DATA_W - 1 : 0] doutb;

input  enb;


reg [ `DATA_W - 1 : 0] mem[ ( 1 << `ADDR_W )-1 : 0];

`ifndef ASYNC
reg [ `DATA_W - 1 : 0] doutb;
`endif

reg [ `DATA_W - 1 : 0] doutb_i;

always @(posedge clk) begin

    if (wea) 
        mem[addra] <= dina;
        

    if (enb) 
		doutb_i <= mem[addrb];

end
    
	

`ifdef ASYNC

assign doutb = doutb_i;

`else

always @(posedge clk) begin

    doutb <= doutb_i;

end

`endif

endmodule

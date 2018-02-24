////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP04 = Bayer to RGB Conversion
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
//    1.0
////////////////////////////////////////////////////////////////////////////////

module dp_ram_rtl (

    clk,

    addra,
    wea,
    dina,

    addrb,
    doutb

);

parameter DATA_W = 10;
parameter ADDR_W = 12;

input clk;

input  [ ADDR_W - 1 : 0] addra;
input  wea;
input  [ DATA_W - 1 : 0] dina;

input  [ ADDR_W - 1 : 0] addrb;
output [ DATA_W - 1 : 0] doutb;


reg [ DATA_W - 1 : 0] mem[ ( 1 << ADDR_W )-1 : 0];
reg [ DATA_W - 1 : 0] doutb;


always @(posedge clk) begin

    if (wea) 
        mem[addra] <= dina;

    doutb <= mem[addrb];

end

endmodule

`define COLW    14
`define ROWW    12
`define WIDTH    8


module dp_ram_rtl_wl (

    clk,

    addra,
    wea,
    dina,

    addrb,
    doutb

);

parameter AW=`COLW;
parameter DW=`WIDTH;
parameter MEM_SZ = (1<<AW);

input           clk;

input  [AW-1 : 0] addra;
input             wea;
input  [DW-1 : 0] dina;

input  [AW-1 : 0] addrb;
output [DW-1 : 0] doutb;


reg [DW-1 : 0] mem[MEM_SZ+5:0];
//reg [DW-1 : 0] doutb;

always @(posedge clk) begin

    if (wea) 
        mem[addra] <= dina;

end

assign doutb = mem[addrb];
	
endmodule

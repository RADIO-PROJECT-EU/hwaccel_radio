////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IPR1 = Trigger from Motion
// Module Name:    IPR1_TRIGMOT
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This implements the trigger part of motion-based ADL recognition methods
//    that have been developed in the context of the RADIO project.
//
// Dependencies:
//
// Revision:
//    1.2
////////////////////////////////////////////////////////////////////////////////

`include "AVNT_MEMORIES.v"

module AVNT_IPR1_TRIGMOT (

    clk,
    reset_n,

    pixelin,
	frame_valid,
    data_valid,
    
    col_cnt,
    row_cnt,

    sensitivity,  
    threshold,	

	triggerout,
	o_frame_valid,
	o_data_valid,
	
	cogx_o,
	cogy_o,
	left_o,
	right_o,
	top_o,
	bottom_o
	
);

`define TRIGMON_IOPORTS
`ifdef TRIGMON_IOPORTS

	// Inputs

	input                clk;              // The system clock
	input                reset_n;          // The system reset (active low)

	input [7:0]          pixelin;           // Input pixel (8 bits)
	input                frame_valid;       // When '0' we are between frames
	input                data_valid;        // When '1' the pixelin input has valid data

	input [7:0]          sensitivity;       // Allowed delta for each block individually
	input [15:0]         threshold;         // Allowed number of chnaged blocks
	
	// Outputs
	
	output               triggerout;		// When a number of changed blocks above the threshold is found this is '1' else it is '0'
	output				 o_frame_valid;     // When '0' we are between frames
	output				 o_data_valid;	    // When '1' the output contains valid data


	
	// all outputs are registered:
	
	reg                     triggerout;
	reg                     o_frame_valid;
	reg					    o_data_valid;
	
	
	reg [7:0]	cogx_o;
	reg [7:0]	cogy_o;
	reg [7:0]	left_o;
	reg [7:0]	right_o;
	reg [7:0]	top_o;
	reg [7:0]	bottom_o;
	
	
	
	
`endif

`define TRIGMON_REGSANDSIGNALS
`ifdef TRIGMON_REGSANDSIGNALS

	wire [7:0]    addra;
	wire [7:0]    dina;
	reg           wea1;
    reg           wea2;
	wire [7:0]    addrb;
	wire [7:0]    dout1;
	wire [7:0]    dout2;

	reg  [9:0]    x;
	reg  [9:0]    y;
	
	reg  [7:0]    a1,a2,a3,a4,a5,a6,a7,a8;
	
	reg  [10:0]   blockaverage;  
	reg  [10:0]   blockprev;  
	
	reg [20:0]    cogx, cogy;
	reg [7:0]     minx,maxx,miny,maxy;
	
	
	reg           active;
	
`endif


// CountXY :
// ----------------------------------------------
// Counts coordinates of the current pixel
// ----------------------------------------------
always @(posedge clk or negedge reset_n) begin
	if (~reset_n) begin
		// reset pixel counters
		x = 0;
		y = 0;
	end 
	else begin
		// calculate pixel X,Y
		if ((frame_valid)&&(data_valid)) begin
			if (x==512) begin
				if (y==512) begin
					y = 0;
					x = 0;
				end 
				else begin
					y = y + 1;
				end
			end 
			else begin
				x = x + 1;
			end
		end
	end
end



`define TRIGMON_BLOCK_STORE
// Store average value per block of 8x8 pixels in memory
`ifdef TRIGMON_BLOCK_STORE

	// ---------------------------------------------------------------------------------------------------
	// Here we instantiate two memory blocks of width 11 and lenght 64x64: 512x512 image in 8x8 blocks
	// inpout is read at clock rising edge
	// output is provided at clock rising edge
	// If addra = addrb then doutb will be the existing value, dina will be the value to write
	// ---------------------------------------------------------------------------------------------------

	dp_ram_64X64X11 blocks1(

		.clk	(clk  ),

		.addra  (addra),
		.wea    (wea1  ),
		.dina   (dina ),

		.addrb  (addrb),
		.doutb  (dout1)
	);
	
	dp_ram_64X64X11 blocks1 (

		.clk	(clk  ),

		.addra  (addra),
		.wea    (wea2 ),
		.dina   (dina ),

		.addrb  (addrb),
		.doutb  (dout2)
	);
	
		
    // We send same address to both memories
	// We send same write data but select based on wea 1 or 2
	// We read both but use based on active 0 or 1
		
	assign dina = blockaverage;
	assign addra = (x%8)+(y%8)<<3;
	assign addrb = (x%8)+(y%8)<<3;

	assign blocksofar = (active)?dout2:dout1;
	assign blockprev  = (active)?dout1:dout2;
	
	assign diff       = blockav-blockprev;

// Process blocks and generate triggers
always @(posedge clk or negedge reset_n) begin
	if (~reset_n) begin
		// reset
		a1 = 0; a2 = 0; a3 = 0; a4 = 0;
		a5 = 0; a6 = 0; a7 = 0; a8 = 0;
		b1 = 0; b2 = 0; b3 = 0; b4 = 0;
		b5 = 0; b6 = 0; b7 = 0; b8 = 0;
		wea1 = 0;
		wea2 = 0;
		blockav = 0;
		blockaverage = 0;
		triggerout = 0;
		totalchanges = 0;
		active = 0;
		cogx = 0;
		cogy = 0;
	    minx = 63;
		maxx = 0;
		miny = 63;
		maxy = 0;
	end 
	else begin
		// make sure we reset counters and switch active memory at start of each frame
		if ((x==0)&&(y==0)) begin
		
			cogx_o   <= cogx>>12;
			cogy_o   <= cogy>>12;
			left_o   <= minx;
			right_o  <= maxx;
			top_o    <= miny;
			bottom_o <= maxy;
		
			cogx = 0;
			cogy = 0;
			minx = 63;
			maxx = 0;
			miny = 63;
			maxy = 0;
			
			totalchanges <= 0;
			active <= ~active;
		end
	    // always shift pixelvalue
		a1 <= a2;
		a2 <= a3;
		a3 <= a4;
		a4 <= a5;
		a5 <= a6;
		a6 <= a7;
		a7 <= a8;
		a8 <= pixelvalue;
		// if last column in block add pixels
		if ( x%8 == 0 ) begin
			// if last row in block prepare for next
			if (y%8 == 0 ) begin
				// Compare with previous block and count changes:
				if (abs(diff)>sensitivity) begin
				    
					cogx = cogx + (x>>3);
					cogy = cogy + (y>>3);
					if ((x>>3)<minx) minx = x>>3;
					if ((x>>3)>maxx) maxx = x>>3;
					if ((y>>3)<miny) miny = y>>3;
					if ((y>>3)>maxy) maxy = y>>3;
					
					totalchanges <= totalchanges + 1;
					if (totalchanges > threshold) begin
						triggerout <= 1;
					end
					else begin
						triggerout <= 0;
					end
				end
				blockaverage <= 0;	
			end
			else begin
				blockaverage <= blockav;
			end
			// add average of row to previous average
			blockav <= blocksofar + ((a1+a2+a3+a4+a5+a6+a7+a8)>>3);
			if (active) wea1 = 1; else wea2 = 1;	
		end
		else begin
		    wea1 = 0; 
			wea2 = 0;
		end
	end
end

`endif

endmodule

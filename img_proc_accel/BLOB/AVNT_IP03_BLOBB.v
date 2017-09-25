////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP03 = Blob Extraction
// Module Name:    IP03_BLOBB
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This implements 2st pass of the CCL algorithm. This needs to be
//    connected to the bus via a DMA interface as it has to bring the
//    label data back from the system memory
//
// Dependencies:
//
// Revision:
//    1.0
////////////////////////////////////////////////////////////////////////////////

`define COLW      14
`define ROWW      12
`define FEATNUM    4
`define LABELSIZE  8    //up to 255 labels can exist!



module AVNT_IP03_BLOBB (

    clk,
    reset_n,

    labelin,
	frame_valid,
    data_valid,    

	ll_data,
	
	labelout,
	o_frame_valid,
	o_data_valid,
	
	ll_index
);

`define BLOB_IOPORTS
`ifdef BLOB_IOPORTS

	// Inputs

	input                clk;              // The system clock
	input                reset_n;          // The system reset (active low)

	input [`LABELSIZE-1:0] labelin;         // Input pixel from feature image
	input                frame_valid;       // When '0' we are between frames
	input                data_valid;        // When '1' the pixelin input has valid data

	input [`LABELSIZE-1:0] ll_data;

	
	// Outputs
	
	output [`LABELSIZE-1:0] labelout;		// The output label numberes for each pixel
	output					o_frame_valid;  // When '0' we are between frames
	output					o_data_valid;	// When '1' the labelout output contains valid data
	
	
	output [`LABELSIZE:0] ll_index;
	
	// all outputs are registered:
	
	//reg    [`LABELSIZE-1:0] labelout;
	reg                     o_frame_valid;
	reg					    o_data_valid;
	reg    [`LABELSIZE:0] ll_index;
	
`endif


`define BLOB_READ_LABELS_IN
`ifdef BLOB_READ_LABELS_IN

	// ---------------------------------
	// Read labeled pixels
	// ---------------------------------

	always @(posedge clk  or negedge reset_n) begin 
		if (~reset_n) begin

			ll_index <= 0;
			
		end else begin
		
			if ((data_valid)&&(frame_valid)) begin
				ll_index <= labelin;
			end else begin
				ll_index <= 0;
			end
		end
	end
	
	assign labelout = ll_data;
`endif
	
`define DELAY_SYNC_SIGNALS
`ifdef DELAY_SYNC_SIGNALS

always @(posedge clk  or negedge reset_n) begin 
		if (~reset_n) begin
			o_frame_valid <= 0;
			o_data_valid  <= 0;			
		end else begin
			o_frame_valid <= frame_valid;
			o_data_valid  <= data_valid;		
		end
	end

`endif


endmodule

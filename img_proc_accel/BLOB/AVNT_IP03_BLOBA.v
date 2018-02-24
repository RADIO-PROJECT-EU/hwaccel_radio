////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP03 = Blob Extraction
// Module Name:    IP03_BLOBA
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This implements 1st pass of the CCL algorithm
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

// ---------------------------------------------------------------------- 
// W A R N I N G : The code works only for features 0..3
// ----------------------------------------------------------------------


module AVNT_IP03_BLOBA (

    clk,
    reset_n,

    pixelin,
	frame_valid,
    data_valid,
    
    col_cnt,
    row_cnt,

    feature,   

	ll_index,	

	labelout,
	o_frame_valid,
	o_data_valid,
	
	ll_data,

	
	too_many_labels
	
);

`define BLOB_IOPORTS
`ifdef BLOB_IOPORTS

	// Inputs

	input                clk;              // The system clock
	input                reset_n;          // The system reset (active low)

	input [`FEATNUM-1:0] pixelin;           // Input pixel from feature images - each bit corresponds to a different feature
	input                frame_valid;       // When '0' we are between frames
	input                data_valid;        // When '1' the pixelin input has valid data

	input [`COLW-1:0]    col_cnt;           // Number of columns (frame width)
	input [`ROWW-1:0]    row_cnt;           // Number of rows (frame height)

	input [`FEATNUM-1:0] feature;           // Each bit enables or disables a feature 
	
	input  [`LABELSIZE:0] ll_index;
	
	// Outputs
	
	output [`LABELSIZE-1:0] labelout;		// The output label numberes for each pixel
	output					o_frame_valid;  // When '0' we are between frames
	output					o_data_valid;	// When '1' the labelout output contains valid data
	output                  too_many_labels;// When this is '1' then we encountered too many lablels and the CCL will not work
	
	output [`LABELSIZE-1:0] ll_data;	

	
	// all outputs are registered:
	
	reg    [`LABELSIZE-1:0] labelout;
	reg                     o_frame_valid;
	reg					    o_data_valid;
	reg                     too_many_labels;
	
`endif

/* [                         Operating Principle                                  ] 
// --------------------------------------------------------------------------------
// As the pixels are read in, we check if a pixel has the feature we look for and
// if yes, we add it to a region. The region number in this 1st pass is a new
// region if the pixel has no neighbour of the same feature or the neighbour's 
// number in any other case. 

// Output for each pixel is a vector with FEATNUM numbers, each number beeing the
// region number that corresponds to that feature for the pixel.

Connectivity checks are carried out by checking the labels of pixels that are North-East, North, North-West 
and West of the current pixel (assuming 8-connectivity). 4-connectivity uses only North and West neighbors 
of the current pixel. The following conditions are checked to determine the value of the label to be assigned 
to the current pixel (4-connectivity is assumed)

Conditions to check:

	Does the pixel to the left (West) have the same value?
			Yes - We are in the same region. Assign the same label to the current pixel
			No - Check next condition
		
	Does the pixel to the North of the current pixel have the same value but not the same label?
			Yes - We know that the North and West pixels belong to the same region and must be merged. 
			      Assign the current pixel the minimum of the North and West labels, and record their 
				  equivalence relationship
			No - Check next condition
			
	Do the pixel's North and West neighbors have different pixel values?
			Yes - Create a new label id and assign it to the current pixel
			
The algorithm continues this way, and creates new region labels whenever necessary. The key to a fast algorithm, 
however, is how this merging is done. This algorithm uses the union-find data structure which provides excellent 
performance for keeping track of equivalence relationships [7]. Union-find essentially stores labels which correspond 
to the same blob in a disjoint-set data structure, making it easy to remember the equivalence of two labels by the 
use of an interface method Eg: findSet(l). findSet(l) returns the minimum label value that is equivalent 
to the function argument 'l'.


--------------------------------------------------------------------------------- */

`define BLOB_REGSANDSIGNALS
`ifdef BLOB_REGSANDSIGNALS
	wire [`COLW-1:0]    addra;
	wire [`LABELSIZE-1:0] dina;
	reg                 wea;
	wire [`COLW-1:0]    addrb;
	wire [`LABELSIZE-1:0]  doutb;

	reg  [`COLW-1:0]    xpos;
	reg  [`ROWW-1:0]    ypos;
	
	reg  [`LABELSIZE-1:0]  n1,n2,n3;
	wire [`LABELSIZE-1:0]  n4;
	reg  				   curpix;
	
	reg  [`LABELSIZE:0] nextlab;
	wire [`LABELSIZE:0] nextlab_wire;
	
	reg  [`LABELSIZE:0] linked[0:511];
	reg                 llmode;
	
	wire [`LABELSIZE:0] ll_index2;
	reg                 changell;
	
	reg  [8:0] toggle;
	wire [8:0] toggle2;
	
	reg                 reset_labels;
	
`endif

`define BLOB_ROW_MEMORY
`ifdef BLOB_ROW_MEMORY

	// ---------------------------------------------------------------------------------------------------
	// Here we instantiate a memory block of width FEATNUM and lenght equal to the maximum row length
	// They are used to store the previou srow when a new row is read in, so thatth epixel neigbourghood
	// is local. For each pixel at (row,col) we need (row-1,col-1) (row-1,col) (row-1,col+1) (row,col-1).
	//
	//      . . . . x x x x x x x x x x x x x 
	//      . . . . x X
	// ---------------------------------------------------------------------------------------------------

	dp_ram_rtl_wl rowmem (

		.clk	(clk  ),

		.addra  (addra),
		.wea    (wea  ),
		.dina   (dina ),

		.addrb  (addrb),
		.doutb  (doutb)
	);

`endif

`define BLOB_READ_FEATURES_IN
`ifdef BLOB_READ_FEATURES_IN

	// ---------------------------------
	// Read valid feature pixels
	// ---------------------------------

	assign dina = labelout;
	
	always @(posedge clk  or negedge reset_n) begin 
		if (~reset_n) begin

			xpos <= 0;
			ypos <= 0;
			wea  <= 1'b0;
			reset_labels <= 0;
			llmode <= 0;
			toggle <= 9'b000000000;
			
		end else begin
		
			//if ((ypos>row_cnt-2)&&(xpos==0)&&(ypos[0]==1'b0)) begin //every second row near the end of the frame
			//	llmode <= llmode + 1;
			//end
			
			if (ypos>row_cnt-2) begin 
				llmode <= 1;
			end
			
			
			if ((ypos==row_cnt-1)&&(xpos==0)) begin
				toggle[8] <= ~(toggle[8]);
			end
		
			if (frame_valid) begin
				
				reset_labels <= 0;
				
				if (data_valid) begin
					wea <= 1'b1;
					xpos <=xpos+1;
					if (xpos>col_cnt) begin
						xpos <= 0;
						ypos <= ypos+1;
					end
				end 
				else 
				begin
					wea <= 1'b0;
				end
			end else begin
				wea <= 1'b0;
				xpos <= 0;
				ypos <= 0;
				reset_labels <= 1;
				llmode <= 0;
			end
			
		end
	end
	
	
	// Create Neigbourhood
	
	assign addrb = (xpos < col_cnt - 5) ? xpos+5 : col_cnt - 5;
	assign addra = xpos;
	
	assign n4    = labelout;
	
	always @(posedge clk  or negedge reset_n) begin 
		if (~reset_n) begin

			n1 <= 0;
			n2 <= 0;
			n3 <= 0;
			//n4 <= 0;
					
		end else begin
		
			n1 <= n2;
			n2 <= n3;
		    n3 <= doutb; //PIXEL ABOVE!
			
			//n4 <= labelout;  // The previous current pixel....
			
		end
	end
	

	
	wire [8:0] a_neighbour_has_a_label;
	wire [8:0] nzn1,nzn2,nzn3,nzn4;
	wire [8:0] smallest_n1n2;
	wire [8:0] smallest_n2n3;
	wire [8:0] smallest_label;

	
	assign a_neighbour_has_a_label = n1 | n2 | n3 | n4;
 	
	assign nzn1 = (n1==0) ? 255 : linked[n1+toggle];
	assign nzn2 = (n2==0) ? 255 : linked[n2+toggle];
	assign nzn3 = (n3==0) ? 255 : linked[n3+toggle];
	assign nzn4 = (n4==0) ? 255 : linked[n4+toggle];
	
	assign smallest_n1n2  = (         nzn1 < nzn2)  ? nzn1          : nzn2;  
	assign smallest_n2n3  = (smallest_n1n2 < nzn3)  ? smallest_n1n2 : nzn3;  
	assign smallest_label = (smallest_n2n3 < nzn4)  ? smallest_n2n3 : nzn4;
	
	wire error1, error2;
	assign error1 = (smallest_label==0);
	assign error2 = (nextlab_wire==0);
	
	
	assign nextlab_wire = nextlab+1;
	
	// Check neighbourhood
	always @(posedge clk  or negedge reset_n) begin 
		if (~reset_n) begin

			labelout 		<= 0;
			nextlab  		<= 0;
			too_many_labels <= 0;
			curpix          <= 0;
			linked[0]       <= 0;
			
					
		end else begin
		
			// if the pixel has the feature:
			
				case (feature[3:0])
					
					4'b00_00  : curpix <= pixelin[0];
					
					4'b00_10  : curpix <= pixelin[1];
					
					4'b01_00  : curpix <= pixelin[2];
					
					4'b10_00  : curpix <= pixelin[3];					
					
					default   : curpix <= pixelin[0];

				endcase
				
				
			if ((curpix==1'b1)&&(llmode==0)) begin 
			
				// if no neighbour has it:
				if (a_neighbour_has_a_label == 0) begin
					// 	 Make a new label
					labelout <= nextlab_wire;
					nextlab  <= nextlab_wire;
					linked[nextlab_wire+toggle] <= nextlab_wire;
				
					//   Check if we have too many labels
					if (nextlab_wire[`LABELSIZE]==1'b1) begin
						nextlab <= 0;
						too_many_labels <= 1;
					end
				end else begin
				
					// if a neighbour has it:
					//   Use neigbours label
					labelout   <= smallest_label;
					if (n1>0) linked[n1+toggle] <= smallest_label;
					if (n2>0) linked[n2+toggle] <= smallest_label;
					if (n3>0) linked[n3+toggle] <= smallest_label;
					if (n4>0) linked[n4+toggle] <= smallest_label;
				
				end
			   
			end else begin
				labelout <= 0;
			end
			
			// at the start of each frame, reset the label counter
			if (reset_labels) begin
				nextlab 		<= 0;
				too_many_labels <= 0;
			end

			
		end
	end
	
	assign toggle2[8] = ~(toggle[8]);
	assign toggle2[7:0] = 0;
	assign ll_index2 = ll_index+toggle2;
	assign ll_data = linked[ll_index2];

`endif

`define MINIMIZE_LL
`ifdef MINIMIZE_LL

reg [8:0] cl,parent;

always @(posedge clk  or negedge reset_n) begin 
	if (~reset_n) begin
	
		cl <= 1;
		changell <= 0;
		
	end else begin
	
		if (llmode==1) begin
			
			parent <= linked[cl+toggle];
			cl  <= cl+1;
			if (cl==nextlab+1) cl<=1;
			
			if ((parent < cl-1)&&(linked[parent+toggle]>0)) begin
				linked[cl-1+toggle] <= linked[parent+toggle];
				changell <= 1;
			end else begin
				changell <= 0;
			end

		end
	
	end
end
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

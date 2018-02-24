
////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP16 = Integral Image Generator
// Module Name:    TOP = Top Level Module
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This module is used to generate an integral image
//
// Dependencies: dp_ram_rtl.v
//  
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




module AVNT_IP16_TOP (  /* INTEGRAL IMAGE GENERATOR */

    // INPUTS:
	
    clk,           // input pixel clock
    rst_n,		   // active_low reset

    Y_i,           // input (luminance component Y')

    frame_valid_i, // frame data is valid when this is '1'
    data_valid_i,  // pixel data is valid when this is '1'

	cs_n,          // component select (active low)
    addr,          // address of internal register  
    set_data,      // data to internal register
	get_data,      // data from intgernal register
    write_b,       // write (active low) to internal register

	// OUTPUTS:
	
	II_o,           // output (Integral Image Pixel)
				  
	frame_valid_o, // frame data is valid when this is '1'
	data_valid_o   // pixel data is valid when this is '1'
);
	
`define D16_PORTS
`ifdef D16_PORTS
	input clk;
	input rst_n;

	input [`D16_PIXSIZE-1:0] Y_i;
	input frame_valid_i;
	input data_valid_i;
	 
	input                      cs_n;
	input  [2:0]               addr;
	input  [`D16_PARSIZE-1:0]  set_data;
	output [`D16_PARSIZE-1:0]  get_data;
	input                      write_b;
	
	reg    [`D16_PARSIZE-1:0]  get_data;
	
	output [`D16_IIWORDSIZE-1:0] II_o;            

	reg    [`D16_IIWORDSIZE-1:0] II_o;          

	output frame_valid_o;
	output data_valid_o;
	
	reg frame_valid_o;
	reg data_valid_o;
	
`endif
	
`define D16_REGS
`ifdef D16_REGS

	reg [`D16_PARSIZE-1:0] mode;         // address 0: Mode of operation
	reg [`D16_PARSIZE-1:0] reg1;         // address 1: Register 1 (reserved in release 1)
	reg [`D16_PARSIZE-1:0] reg2;         // address 2: Register 2 (reserved in release 1)
	reg [`D16_PARSIZE-1:0] width;        // address 3: width of image
	reg [`D16_PARSIZE-1:0] height;       // address 4: height of image	

	// INTERNAL REGISTER SET WRITE 
	
	always @(posedge clk or negedge rst_n) begin

	if (~rst_n) 
		begin
		
			mode        <= {(`D16_PARSIZE){1'b0}};     // [15:0] unused
			
			reg1		<= {(`D16_PARSIZE){1'b0}};    	// [15:0] unused
			
			reg2		<= {(`D16_PARSIZE){1'b0}};     // [15:0] unused
													   
			width       <= 0;                          // Number of Columns
		
			height      <= 0;						   // Number of Rows
			
		end
	else
		begin
			if ((write_b == 1'b0)&&(cs_n == 1'b0)) begin
				$display("write...");
				case (addr)

					 3'b000: mode 	 <= set_data; 
				     3'b001: reg1    <= set_data; 
				     3'b010: reg2    <= set_data; 
				     3'b011: width   <= set_data; 
				     3'b100: height  <= set_data; 
				    	
					 default: begin
					 // do nothing
					 end
					
				endcase
			end	
	end
end	

//synchronous register readout

always @(posedge clk or negedge rst_n) begin
	if (~rst_n) 
		get_data <= 0;
	else
	begin
		case (addr)
			3'b000:  get_data <= mode;
			3'b001:  get_data <= reg1;
			3'b010:  get_data <= reg2;
			3'b011:  get_data <= width;
			3'b100:  get_data <= height;
			default: get_data <= 0;
		endcase
	end
end

`endif


`define D16_MAIN_CALCULATION
`ifdef D16_MAIN_CALCULATION
	
//   #  #  #  @  .  .  .  
//   #  #  #  @  .  .  .        
//   #  #  #  @  .  .  .  
//   #  # 00 01  .  .  .  
//   @  @ 10 11  .  .  .  
//   .  .  .  .  .  .  .  	
	
	
	
// the current pixel
reg [`D16_PIXSIZE-1:0] Y_ir;

// integral pixels already calculated
reg [`D16_IIWORDSIZE-1:0] ac_00_r, ac_01_r, ac_10_r;

// new calculated integral pixel
wire [`D16_IIWORDSIZE-1:0] nc_11;

wire [`D16_IIWORDSIZE-1:0] nc_11_c0;
wire [`D16_IIWORDSIZE-1:0] nc_11_r0;
wire [`D16_IIWORDSIZE-1:0] nc_11_c0_r0;

// this allows us to generate integral image in a single pass
assign nc_11       = ac_01_r + ac_10_r - ac_00_r + Y_ir;
assign nc_11_c0    = ac_01_r + Y_ir;
assign nc_11_r0    = ac_10_r + Y_ir;
assign nc_11_c0_r0 = Y_ir;

`endif


	// we need a dual port "row" memory
	
	reg  [`D16_COL_W-1:0] waddr, raddr;
		
	wire [`D16_IIWORDSIZE-1:0] dout;
	reg  [`D16_IIWORDSIZE-1:0] dout_r;
	reg  [`D16_IIWORDSIZE-1:0] din;
	reg  we;
	wire enb;
	
	

	dp_ram_rtl U_mem (
		.clk    ( clk    ),
		.addra  ( waddr  ),
		.wea    ( we     ),
		.dina   ( din    ),
		.addrb  ( raddr  ),
		.doutb  ( dout   ),
		.enb    ( enb    )
	);





	//we keep a history of frame_valid_i and data_valid_i so that at
	//various points in the data_flow we can resync to them
	reg [10:0] frame_valid_r;
	reg        data_valid_r;

	reg frame_d2;
	
	//we need an internal copy of frame_valid_i so that we can
	//synchronize the rising of frame_valid with data_valid
	wire frame_valid_i_int;

	assign frame_valid_i_int = frame_valid_i & ( data_valid_i | frame_d2);


	// counters for column and row
	reg [`D16_PARSIZE-1:0] column_count;
	reg [`D16_PARSIZE-1:0] row_count;

	wire [1:0] frame_del;
	assign frame_del = { frame_d2, frame_valid_i_int };

	assign enb = data_valid_i;
	
	always @(posedge clk or negedge rst_n) begin
		if (~rst_n) begin
				frame_d2     <= 1'b1; 
				data_valid_r <= 0;
				data_valid_o <= 0;
				we <= 0;
				waddr <= 0;
				raddr <= 3;
				column_count <= 0;
				row_count    <= 0;
				Y_ir <= 0;
			end
		else begin
			frame_valid_r <= {{frame_valid_r[9:0]},frame_valid_i_int};
			
			
			frame_d2 <= frame_valid_i_int;
			
			frame_valid_o <= frame_valid_r[0];  // here we adjust the frame valid signal to the pipeline stages

		
			data_valid_o <= data_valid_i;
			
			
			Y_ir <= Y_i;
			
			we <= 1;
			
			
			if (data_valid_i) begin
			
				if (raddr == width-1 ) begin 
						raddr<= 0;
				end else begin 
						raddr    <= raddr + 1; //   increase read address pointer  
				end		
			end
			
				
			if (data_valid_i) begin
															
				if (column_count==0) begin   //
				        ac_10_r  <= 0  ;     // 
				end else begin               // use previous integral pixel as location 10
				        ac_10_r  <= nc_11;   //
				end                          //
							
				II_o     <= nc_11;            // we send the previous integral pixel to the output to be stored
							
				if (row_count==0) begin       
				        ac_01_r <= 0;                //
						ac_00_r <= 0;                //
				end else begin                       //
						
						
				        ac_01_r  <= dout;            // use the readout intergal pixel for location 01
						
						
						if (column_count==0) begin   //
							ac_00_r  <= 0;           //
						end else begin               //
							ac_00_r  <= ac_01_r;     // also use the integral pixel above (i.e. at 01) for location 00 
						end							 //
				end                                  // 
							
//				we       <= 1;         // access the DP-ram: 
							
				if (waddr == width-1) begin
						waddr <= 0;
				end else begin
						waddr    <= waddr + 1; //   increase write address pointer
				end	


				din <= nc_11;     // write current integral pixel
							
				if (column_count == width-1) begin
					column_count <= 0;
					if (row_count == height-1) begin
						row_count<=0;
					end else begin
						row_count    <= row_count+1;
					end
				end else begin
					column_count <= column_count + 1;
				end
			
			end

			if (frame_del == 2'b00) begin  //was 01
				row_count    <= 0;
				column_count <= 0;
				waddr   <= 0;
				raddr   <= 3;
			end 
			
		end
	end //always block

endmodule

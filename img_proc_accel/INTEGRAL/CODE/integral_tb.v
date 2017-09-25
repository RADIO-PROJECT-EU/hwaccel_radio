////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP16 = Integral Image Generator
// Module Name:    integral_tb = Test Bench
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This is the testbench top module
//
// Dependencies:
//    AVNT_IP16_DEFINES.v
//    sensor_bmp.v
//
// Revision:
//
//    0.1   Code copy from IP13
//    1.0	Initial Release
//
///////////////////////////////////////////////////////////////////////////////


`define sclk_PERIOD     8

`include "./CODE/AVNT_IP16_DEFINES.v"

module integral_tb;


// This parameter will be propagated downwards in the device-under-test
parameter PIXSIZE = `D16_PIXSIZE;


reg [PIXSIZE-1 : 0] mem_red   [0 : (1<<(`D16_A_BITS))-1];
reg [PIXSIZE-1 : 0] mem_green [0 : (1<<(`D16_A_BITS))-1];
reg [PIXSIZE-1 : 0] mem_blue  [0 : (1<<(`D16_A_BITS))-1];

reg [PIXSIZE-1  :0] image_gold [0:`D16_ROWS-1][0:`D16_COLS-1][0:2];

reg [7:0] test_mode;
wire line_valid,frame_valid,frame_valid_o,data_valid_o;


reg [8*16-1:0] message;

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
  `ifdef SHM_SIMULATION
  $shm_open("waves.shm");
  $shm_probe(integral_tb,"AS");
  


  #1_000_000_000
  $shm_close;
  $finish;
  `endif
end


// ----------------------------------------------------------------
// Create image file names for storing the output of each mode 
// ----------------------------------------------------------------

reg save;
reg check;

reg  [10:0] sel;


reg [8*16-1:0] fname;
reg [3:0] iteration;

wire [3:0] sel_name  = sel[3:0];
wire [3:0] iter_name = iteration;

always@ (posedge clk) begin
    //$swrite(fname,"o.bmp");
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
reg  [`D16_PARSIZE-1:0] set_data;
wire [`D16_PARSIZE-1:0] get_data;
reg  write_b;

// ----------------------------------------------------------------
// This task is used for writting to the configuration registers. 
// ----------------------------------------------------------------

task write_data ;
input [ 5:0] addr;
input [`D16_PARSIZE-1:0] data;

begin
        @(posedge clk);
        #1
        set_addr = addr;
        set_data = data;
        @(posedge clk);
        #1 write_b  = 1'b0;
        @(posedge clk);
        #1 write_b  = 1'b1;
        repeat(3) @(posedge clk);

end
endtask


// ----------------------------------------------------------------
// This task is used for reading from the configuration registers. 
// ----------------------------------------------------------------

task read_data ;
input [ 5:0] addr;

begin
        @(posedge clk);
        #1
        set_addr = addr;
        @(posedge clk);
        #1 write_b  = 1'b1;
        @(posedge clk);
        $swrite(message,"REG(0x%h)=0x%h",addr, get_data);
		$display("%s",message);
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

wire [4:0] outmode, inmode;

`ifdef D16_TEST_DOWN

	`ifdef D16_TEST2D
		assign inmode  = 5'b00000;
		assign outmode = {{1'b0},{iteration[0]},sel[2:0]}; //supports only the two first 2d modes (i.e no2d and point1)
	`else
		assign inmode  = 5'b00000;
		assign outmode = sel[2:0];
	`endif
`else
	`ifdef D16_TEST2D
		assign inmode = sel[2:0];
		assign outmode  = 5'b11000; 
	`else
		assign inmode = sel[2:0];
		assign outmode  = 5'b00000;
	`endif
`endif
	
initial begin 


    set_addr  = 0;
    set_data  = 0;
    write_b   = 1;
    sel       = 0;
    iteration = 0;

    sensor_start = 0;
    
    repeat (1000) @(posedge clk); // an initial delay to allow time for reset etc.

	write_data(3'b011,    `D16_BMP_HOR);  // width
    write_data(3'b100,    `D16_BMP_VER);  // height
	
	repeat (10) @(posedge clk);
				
	read_data(3'b011);
	read_data(3'b100);
	
	repeat (10) @(posedge clk);
			
    repeat (8) begin

        iteration = 0;
		
        write_data(3'b000, `D16_MODE);  // mode

                
        repeat (10) @(posedge clk);
        
		read_data(3'b000);

        repeat (10) @(posedge clk);
        
        #1 sensor_start = 1;
        @(posedge clk);
        #1 sensor_start = 0;
    
        repeat(4) begin
            wait(frame_valid);
            wait(!frame_valid);
			

			`ifndef D16_MIN_FRAME_BLANK
            repeat (9) @(posedge clk);   //use this to create intra-frame delay
			
			iteration = iteration + 1;
					
			write_data(3'b000, `D16_MODE);  // mode
          
			repeat (10) @(posedge clk);

			read_data(3'b000);

			repeat (10) @(posedge clk);
			`endif
					
		
            sensor_start = 1;
            @(posedge clk);
            sensor_start = 0;
			
        end

		sel = sel + 1;
        
    end
    
    // use this code to stop simulation when all cases have been tested
    #100_000_000
    //$shm_close;
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
wire [`D16_IIWORDSIZE-1:0] o_II;

assign o_red   = o_II[23-`GSHIFTR:16-`GSHIFTR]; //o_II[23:16];  //8ms
assign o_green = o_II[23-`GSHIFTG:16-`GSHIFTG]; //o_II[15: 8];  //8ms
assign o_blue  = o_II[23-`GSHIFTB:16-`GSHIFTB]; //o_II[ 7: 0];


AVNT_IP16_TOP U_cr_top (
    .clk           ( clk              ), 
    .rst_n         ( rst_n            ), 

    .Y_i           ( rgb_data[3*(PIXSIZE)-1:2*(PIXSIZE)]  ),
	
    .frame_valid_i ( frame_valid      ), 
    .data_valid_i  ( line_valid       ), 
    
	.cs_n          ( 1'b0             ),
    .addr          ( set_addr[2:0]    ), 
    .set_data      ( set_data         ), 
    .get_data      ( get_data         ), 
    .write_b       ( write_b          ), 
    
    .II_o           ( o_II            ), 
	
    .frame_valid_o ( frame_valid_o    ),
    .data_valid_o  ( data_valid_o     )
 );

reg [26:0] pos;

initial pos=0;

//---------------------------------------------------------------------
// store data for verification
//---------------------------------------------------------------------
always @(posedge clk) begin
    if (~frame_valid_o) begin
        pos <= 0;
    end else begin
        if (data_valid_o) begin
            mem_red[pos]   <= o_red   ;
            mem_green[pos] <= o_green ;
            mem_blue[pos]  <= o_blue  ;
            pos <= pos+1;
        end
    end
end

endmodule

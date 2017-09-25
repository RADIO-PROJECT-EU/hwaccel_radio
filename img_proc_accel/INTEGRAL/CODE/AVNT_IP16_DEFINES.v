////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP16 = Integral Image Generator
// Module Name:    (none)
// Target Devices: Xilixn, Altera 
// Synthesis:      Quartus II version 10.0
// Simulation:     Modelsim Altera 6.5e
//
// Description:
//    This defines IP block parameters and inputs for the testbench
//
// Dependencies:  (none)
//
// Revision:
//
//    0.1   Code copy from IP13
//    1.0	Initial Release
//
///////////////////////////////////////////////////////////////////////////////


//`define SHM_SIMULATION

// ------------------------------------------------------------ //
// The following defines are for the actual IP code             ??

`define D16_COL_W 9
`define D16_ROW_W 9

`define D16_PARSIZE 16

`define D16_PIXSIZE 8 

`define D16_IIWORDSIZE (`D16_COL_W + `D16_ROW_W + `D16_PIXSIZE)

// ------------------------------------------------------------ //
// USE THE FOLLOWING DEFINES TO CHOOSE INPUT IMAGE FOR THE TEST //

`define GSHIFTR 0
`define GSHIFTG 8
`define GSHIFTB 16

//`define D16_INBMP "patt1.bmp"
//`define D16_INBMP "patt2.bmp"
`define D16_INBMP "all_ones.bmp"
//`define D16_INBMP "all_ff.bmp"
//`define D16_INBMP "chair_os.bmp"



`define D16_MODE 8'h00

`define D16_BMP_HOR 256
`define D16_BMP_VER 256

`define D16_ROWS 1024 
`define D16_COLS 4092 
`define D16_A_BITS 26

`define EARLIEST_PAUSE 20
`define PAUSE_DURATION  8
`define PAUSE_PERIOD  200

//`define D16_TEST_LVCLOSETOFV
//`define NOINVALIDS
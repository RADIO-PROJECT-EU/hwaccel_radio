////////////////////////////////////////////////////////////////////////////////
// Company:  AVN Technologies - components for efficient image processing	
// Engineer: VGM
//
// Design Name:    AVNT_IP03 = Blob Extraction
// Module Name:    (none)
// Target Devices: Xilinx , Altera Cyclone III
//
// Description:
//    This defines IP block parameters and inputs for the testbench
//
// Dependencies:
//
// Revision:
//    1.0
////////////////////////////////////////////////////////////////////////////////

`define ALTERA
//`define XILINX
//'define BAHAVIORAL

// ------------------------------------------------------------ //
// USE THE FOLLOWING DEFINES TO CHOOSE INPUT IMAGE FOR THE TEST //

`define INBMP "2.bmp"
`define BMP_HOR 256
`define OSTOP  'd40
`define OSLEFT 'd0

//`define INBMP   "3.bmp"
//`define BMP_HOR 256
//`define OSTOP  'd60
//`define OSLEFT 'd140
  
//`define INBMP "240_320.bmp"
//`define BMP_HOR 240
//`define OSTOP  'd130
//`define OSLEFT 'd80

// ------------------------------------------------------------ //
`define ROWS 1024 
`define COLS 4092 
`define A_BITS 26

//Pixel Size at 12 is a good trade-off between size and quality
`define PIXSIZE 8
`define DIVSIZE (`PIXSIZE*2)
//NOLSB set to 6 for pixel size>10 else set to 4
`define NOLSB 4
`define PIXAV_L 10            // Suggested(for speed): 12
`define PIXAV_H (26-`PIXAV_L)

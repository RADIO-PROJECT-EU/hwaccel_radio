// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Jan 26 15:32:15 2018
// Host        : ESIT044 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               C:/Avnet/hdl/Projects/fmchc_python1300c/PZ7030_FMC2/fmchc_python1300c.srcs/sources_1/bd/fmchc_python1300c/ip/fmchc_python1300c_avnet_hdmi_in_0_0/fmchc_python1300c_avnet_hdmi_in_0_0_stub.v
// Design      : fmchc_python1300c_avnet_hdmi_in_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030sbg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "avnet_hdmi_in,Vivado 2016.4" *)
module fmchc_python1300c_avnet_hdmi_in_0_0(hdmii_clk, io_hdmii_clk, io_hdmii_spdif, 
  io_hdmii_video, audio_spdif, video_vblank, video_hblank, video_de, video_data)
/* synthesis syn_black_box black_box_pad_pin="hdmii_clk,io_hdmii_clk,io_hdmii_spdif,io_hdmii_video[15:0],audio_spdif,video_vblank,video_hblank,video_de,video_data[15:0]" */;
  output hdmii_clk;
  input io_hdmii_clk;
  input io_hdmii_spdif;
  input [15:0]io_hdmii_video;
  output audio_spdif;
  output video_vblank;
  output video_hblank;
  output video_de;
  output [15:0]video_data;
endmodule

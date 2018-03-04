// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Jan 26 15:32:14 2018
// Host        : ESIT044 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fmchc_python1300c_avnet_hdmi_out_0_0_stub.v
// Design      : fmchc_python1300c_avnet_hdmi_out_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030sbg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "avnet_hdmi_out,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, oe, embed_syncs, audio_spdif, 
  video_vblank, video_hblank, video_de, video_data, io_hdmio_spdif, io_hdmio_video, 
  io_hdmio_clk)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,oe,embed_syncs,audio_spdif,video_vblank,video_hblank,video_de,video_data[15:0],io_hdmio_spdif,io_hdmio_video[15:0],io_hdmio_clk" */;
  input clk;
  input reset;
  input oe;
  input embed_syncs;
  input audio_spdif;
  input video_vblank;
  input video_hblank;
  input video_de;
  input [15:0]video_data;
  output io_hdmio_spdif;
  output [15:0]io_hdmio_video;
  output io_hdmio_clk;
endmodule

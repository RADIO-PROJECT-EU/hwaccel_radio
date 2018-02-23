// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Jan 26 12:28:49 2018
// Host        : ESIT044 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fmchc_python1300c_v_rgb2ycrcb_0_0_stub.v
// Design      : fmchc_python1300c_v_rgb2ycrcb_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030sbg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "v_rgb2ycrcb,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aclken, aresetn, s_axis_video_tdata, 
  s_axis_video_tready, s_axis_video_tvalid, s_axis_video_tlast, s_axis_video_tuser_sof, 
  m_axis_video_tdata, m_axis_video_tvalid, m_axis_video_tready, m_axis_video_tlast, 
  m_axis_video_tuser_sof)
/* synthesis syn_black_box black_box_pad_pin="aclk,aclken,aresetn,s_axis_video_tdata[23:0],s_axis_video_tready,s_axis_video_tvalid,s_axis_video_tlast,s_axis_video_tuser_sof,m_axis_video_tdata[23:0],m_axis_video_tvalid,m_axis_video_tready,m_axis_video_tlast,m_axis_video_tuser_sof" */;
  input aclk;
  input aclken;
  input aresetn;
  input [23:0]s_axis_video_tdata;
  output s_axis_video_tready;
  input s_axis_video_tvalid;
  input s_axis_video_tlast;
  input s_axis_video_tuser_sof;
  output [23:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tlast;
  output m_axis_video_tuser_sof;
endmodule

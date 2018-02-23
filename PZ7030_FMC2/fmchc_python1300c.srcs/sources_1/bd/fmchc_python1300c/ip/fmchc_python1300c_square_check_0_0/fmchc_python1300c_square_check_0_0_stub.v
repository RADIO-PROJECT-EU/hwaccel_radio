// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Jan 26 15:32:49 2018
// Host        : ESIT044 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Avnet/hdl/Projects/fmchc_python1300c/PZ7030_FMC2/fmchc_python1300c.srcs/sources_1/bd/fmchc_python1300c/ip/fmchc_python1300c_square_check_0_0/fmchc_python1300c_square_check_0_0_stub.v
// Design      : fmchc_python1300c_square_check_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030sbg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "square_check,Vivado 2016.4" *)
module fmchc_python1300c_square_check_0_0(s_axi_AXI_Lite_RGB_1_N_AWADDR, 
  s_axi_AXI_Lite_RGB_1_N_AWVALID, s_axi_AXI_Lite_RGB_1_N_AWREADY, 
  s_axi_AXI_Lite_RGB_1_N_WDATA, s_axi_AXI_Lite_RGB_1_N_WSTRB, 
  s_axi_AXI_Lite_RGB_1_N_WVALID, s_axi_AXI_Lite_RGB_1_N_WREADY, 
  s_axi_AXI_Lite_RGB_1_N_BRESP, s_axi_AXI_Lite_RGB_1_N_BVALID, 
  s_axi_AXI_Lite_RGB_1_N_BREADY, s_axi_AXI_Lite_RGB_1_N_ARADDR, 
  s_axi_AXI_Lite_RGB_1_N_ARVALID, s_axi_AXI_Lite_RGB_1_N_ARREADY, 
  s_axi_AXI_Lite_RGB_1_N_RDATA, s_axi_AXI_Lite_RGB_1_N_RRESP, 
  s_axi_AXI_Lite_RGB_1_N_RVALID, s_axi_AXI_Lite_RGB_1_N_RREADY, 
  s_axi_AXI_Lite_RGB_2_AWADDR, s_axi_AXI_Lite_RGB_2_AWVALID, 
  s_axi_AXI_Lite_RGB_2_AWREADY, s_axi_AXI_Lite_RGB_2_WDATA, s_axi_AXI_Lite_RGB_2_WSTRB, 
  s_axi_AXI_Lite_RGB_2_WVALID, s_axi_AXI_Lite_RGB_2_WREADY, s_axi_AXI_Lite_RGB_2_BRESP, 
  s_axi_AXI_Lite_RGB_2_BVALID, s_axi_AXI_Lite_RGB_2_BREADY, 
  s_axi_AXI_Lite_RGB_2_ARADDR, s_axi_AXI_Lite_RGB_2_ARVALID, 
  s_axi_AXI_Lite_RGB_2_ARREADY, s_axi_AXI_Lite_RGB_2_RDATA, s_axi_AXI_Lite_RGB_2_RRESP, 
  s_axi_AXI_Lite_RGB_2_RVALID, s_axi_AXI_Lite_RGB_2_RREADY, ap_clk, ap_rst_n, interrupt, 
  m_axi_AXI_Lite_RGB_1_N_AWADDR, m_axi_AXI_Lite_RGB_1_N_AWLEN, 
  m_axi_AXI_Lite_RGB_1_N_AWSIZE, m_axi_AXI_Lite_RGB_1_N_AWBURST, 
  m_axi_AXI_Lite_RGB_1_N_AWLOCK, m_axi_AXI_Lite_RGB_1_N_AWREGION, 
  m_axi_AXI_Lite_RGB_1_N_AWCACHE, m_axi_AXI_Lite_RGB_1_N_AWPROT, 
  m_axi_AXI_Lite_RGB_1_N_AWQOS, m_axi_AXI_Lite_RGB_1_N_AWVALID, 
  m_axi_AXI_Lite_RGB_1_N_AWREADY, m_axi_AXI_Lite_RGB_1_N_WDATA, 
  m_axi_AXI_Lite_RGB_1_N_WSTRB, m_axi_AXI_Lite_RGB_1_N_WLAST, 
  m_axi_AXI_Lite_RGB_1_N_WVALID, m_axi_AXI_Lite_RGB_1_N_WREADY, 
  m_axi_AXI_Lite_RGB_1_N_BRESP, m_axi_AXI_Lite_RGB_1_N_BVALID, 
  m_axi_AXI_Lite_RGB_1_N_BREADY, m_axi_AXI_Lite_RGB_1_N_ARADDR, 
  m_axi_AXI_Lite_RGB_1_N_ARLEN, m_axi_AXI_Lite_RGB_1_N_ARSIZE, 
  m_axi_AXI_Lite_RGB_1_N_ARBURST, m_axi_AXI_Lite_RGB_1_N_ARLOCK, 
  m_axi_AXI_Lite_RGB_1_N_ARREGION, m_axi_AXI_Lite_RGB_1_N_ARCACHE, 
  m_axi_AXI_Lite_RGB_1_N_ARPROT, m_axi_AXI_Lite_RGB_1_N_ARQOS, 
  m_axi_AXI_Lite_RGB_1_N_ARVALID, m_axi_AXI_Lite_RGB_1_N_ARREADY, 
  m_axi_AXI_Lite_RGB_1_N_RDATA, m_axi_AXI_Lite_RGB_1_N_RRESP, 
  m_axi_AXI_Lite_RGB_1_N_RLAST, m_axi_AXI_Lite_RGB_1_N_RVALID, 
  m_axi_AXI_Lite_RGB_1_N_RREADY, m_axi_AXI_Lite_RGB_2_AWADDR, 
  m_axi_AXI_Lite_RGB_2_AWLEN, m_axi_AXI_Lite_RGB_2_AWSIZE, 
  m_axi_AXI_Lite_RGB_2_AWBURST, m_axi_AXI_Lite_RGB_2_AWLOCK, 
  m_axi_AXI_Lite_RGB_2_AWREGION, m_axi_AXI_Lite_RGB_2_AWCACHE, 
  m_axi_AXI_Lite_RGB_2_AWPROT, m_axi_AXI_Lite_RGB_2_AWQOS, 
  m_axi_AXI_Lite_RGB_2_AWVALID, m_axi_AXI_Lite_RGB_2_AWREADY, 
  m_axi_AXI_Lite_RGB_2_WDATA, m_axi_AXI_Lite_RGB_2_WSTRB, m_axi_AXI_Lite_RGB_2_WLAST, 
  m_axi_AXI_Lite_RGB_2_WVALID, m_axi_AXI_Lite_RGB_2_WREADY, m_axi_AXI_Lite_RGB_2_BRESP, 
  m_axi_AXI_Lite_RGB_2_BVALID, m_axi_AXI_Lite_RGB_2_BREADY, 
  m_axi_AXI_Lite_RGB_2_ARADDR, m_axi_AXI_Lite_RGB_2_ARLEN, m_axi_AXI_Lite_RGB_2_ARSIZE, 
  m_axi_AXI_Lite_RGB_2_ARBURST, m_axi_AXI_Lite_RGB_2_ARLOCK, 
  m_axi_AXI_Lite_RGB_2_ARREGION, m_axi_AXI_Lite_RGB_2_ARCACHE, 
  m_axi_AXI_Lite_RGB_2_ARPROT, m_axi_AXI_Lite_RGB_2_ARQOS, 
  m_axi_AXI_Lite_RGB_2_ARVALID, m_axi_AXI_Lite_RGB_2_ARREADY, 
  m_axi_AXI_Lite_RGB_2_RDATA, m_axi_AXI_Lite_RGB_2_RRESP, m_axi_AXI_Lite_RGB_2_RLAST, 
  m_axi_AXI_Lite_RGB_2_RVALID, m_axi_AXI_Lite_RGB_2_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_AXI_Lite_RGB_1_N_AWADDR[4:0],s_axi_AXI_Lite_RGB_1_N_AWVALID,s_axi_AXI_Lite_RGB_1_N_AWREADY,s_axi_AXI_Lite_RGB_1_N_WDATA[31:0],s_axi_AXI_Lite_RGB_1_N_WSTRB[3:0],s_axi_AXI_Lite_RGB_1_N_WVALID,s_axi_AXI_Lite_RGB_1_N_WREADY,s_axi_AXI_Lite_RGB_1_N_BRESP[1:0],s_axi_AXI_Lite_RGB_1_N_BVALID,s_axi_AXI_Lite_RGB_1_N_BREADY,s_axi_AXI_Lite_RGB_1_N_ARADDR[4:0],s_axi_AXI_Lite_RGB_1_N_ARVALID,s_axi_AXI_Lite_RGB_1_N_ARREADY,s_axi_AXI_Lite_RGB_1_N_RDATA[31:0],s_axi_AXI_Lite_RGB_1_N_RRESP[1:0],s_axi_AXI_Lite_RGB_1_N_RVALID,s_axi_AXI_Lite_RGB_1_N_RREADY,s_axi_AXI_Lite_RGB_2_AWADDR[4:0],s_axi_AXI_Lite_RGB_2_AWVALID,s_axi_AXI_Lite_RGB_2_AWREADY,s_axi_AXI_Lite_RGB_2_WDATA[31:0],s_axi_AXI_Lite_RGB_2_WSTRB[3:0],s_axi_AXI_Lite_RGB_2_WVALID,s_axi_AXI_Lite_RGB_2_WREADY,s_axi_AXI_Lite_RGB_2_BRESP[1:0],s_axi_AXI_Lite_RGB_2_BVALID,s_axi_AXI_Lite_RGB_2_BREADY,s_axi_AXI_Lite_RGB_2_ARADDR[4:0],s_axi_AXI_Lite_RGB_2_ARVALID,s_axi_AXI_Lite_RGB_2_ARREADY,s_axi_AXI_Lite_RGB_2_RDATA[31:0],s_axi_AXI_Lite_RGB_2_RRESP[1:0],s_axi_AXI_Lite_RGB_2_RVALID,s_axi_AXI_Lite_RGB_2_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_AXI_Lite_RGB_1_N_AWADDR[31:0],m_axi_AXI_Lite_RGB_1_N_AWLEN[7:0],m_axi_AXI_Lite_RGB_1_N_AWSIZE[2:0],m_axi_AXI_Lite_RGB_1_N_AWBURST[1:0],m_axi_AXI_Lite_RGB_1_N_AWLOCK[1:0],m_axi_AXI_Lite_RGB_1_N_AWREGION[3:0],m_axi_AXI_Lite_RGB_1_N_AWCACHE[3:0],m_axi_AXI_Lite_RGB_1_N_AWPROT[2:0],m_axi_AXI_Lite_RGB_1_N_AWQOS[3:0],m_axi_AXI_Lite_RGB_1_N_AWVALID,m_axi_AXI_Lite_RGB_1_N_AWREADY,m_axi_AXI_Lite_RGB_1_N_WDATA[31:0],m_axi_AXI_Lite_RGB_1_N_WSTRB[3:0],m_axi_AXI_Lite_RGB_1_N_WLAST,m_axi_AXI_Lite_RGB_1_N_WVALID,m_axi_AXI_Lite_RGB_1_N_WREADY,m_axi_AXI_Lite_RGB_1_N_BRESP[1:0],m_axi_AXI_Lite_RGB_1_N_BVALID,m_axi_AXI_Lite_RGB_1_N_BREADY,m_axi_AXI_Lite_RGB_1_N_ARADDR[31:0],m_axi_AXI_Lite_RGB_1_N_ARLEN[7:0],m_axi_AXI_Lite_RGB_1_N_ARSIZE[2:0],m_axi_AXI_Lite_RGB_1_N_ARBURST[1:0],m_axi_AXI_Lite_RGB_1_N_ARLOCK[1:0],m_axi_AXI_Lite_RGB_1_N_ARREGION[3:0],m_axi_AXI_Lite_RGB_1_N_ARCACHE[3:0],m_axi_AXI_Lite_RGB_1_N_ARPROT[2:0],m_axi_AXI_Lite_RGB_1_N_ARQOS[3:0],m_axi_AXI_Lite_RGB_1_N_ARVALID,m_axi_AXI_Lite_RGB_1_N_ARREADY,m_axi_AXI_Lite_RGB_1_N_RDATA[31:0],m_axi_AXI_Lite_RGB_1_N_RRESP[1:0],m_axi_AXI_Lite_RGB_1_N_RLAST,m_axi_AXI_Lite_RGB_1_N_RVALID,m_axi_AXI_Lite_RGB_1_N_RREADY,m_axi_AXI_Lite_RGB_2_AWADDR[31:0],m_axi_AXI_Lite_RGB_2_AWLEN[7:0],m_axi_AXI_Lite_RGB_2_AWSIZE[2:0],m_axi_AXI_Lite_RGB_2_AWBURST[1:0],m_axi_AXI_Lite_RGB_2_AWLOCK[1:0],m_axi_AXI_Lite_RGB_2_AWREGION[3:0],m_axi_AXI_Lite_RGB_2_AWCACHE[3:0],m_axi_AXI_Lite_RGB_2_AWPROT[2:0],m_axi_AXI_Lite_RGB_2_AWQOS[3:0],m_axi_AXI_Lite_RGB_2_AWVALID,m_axi_AXI_Lite_RGB_2_AWREADY,m_axi_AXI_Lite_RGB_2_WDATA[31:0],m_axi_AXI_Lite_RGB_2_WSTRB[3:0],m_axi_AXI_Lite_RGB_2_WLAST,m_axi_AXI_Lite_RGB_2_WVALID,m_axi_AXI_Lite_RGB_2_WREADY,m_axi_AXI_Lite_RGB_2_BRESP[1:0],m_axi_AXI_Lite_RGB_2_BVALID,m_axi_AXI_Lite_RGB_2_BREADY,m_axi_AXI_Lite_RGB_2_ARADDR[31:0],m_axi_AXI_Lite_RGB_2_ARLEN[7:0],m_axi_AXI_Lite_RGB_2_ARSIZE[2:0],m_axi_AXI_Lite_RGB_2_ARBURST[1:0],m_axi_AXI_Lite_RGB_2_ARLOCK[1:0],m_axi_AXI_Lite_RGB_2_ARREGION[3:0],m_axi_AXI_Lite_RGB_2_ARCACHE[3:0],m_axi_AXI_Lite_RGB_2_ARPROT[2:0],m_axi_AXI_Lite_RGB_2_ARQOS[3:0],m_axi_AXI_Lite_RGB_2_ARVALID,m_axi_AXI_Lite_RGB_2_ARREADY,m_axi_AXI_Lite_RGB_2_RDATA[31:0],m_axi_AXI_Lite_RGB_2_RRESP[1:0],m_axi_AXI_Lite_RGB_2_RLAST,m_axi_AXI_Lite_RGB_2_RVALID,m_axi_AXI_Lite_RGB_2_RREADY" */;
  input [4:0]s_axi_AXI_Lite_RGB_1_N_AWADDR;
  input s_axi_AXI_Lite_RGB_1_N_AWVALID;
  output s_axi_AXI_Lite_RGB_1_N_AWREADY;
  input [31:0]s_axi_AXI_Lite_RGB_1_N_WDATA;
  input [3:0]s_axi_AXI_Lite_RGB_1_N_WSTRB;
  input s_axi_AXI_Lite_RGB_1_N_WVALID;
  output s_axi_AXI_Lite_RGB_1_N_WREADY;
  output [1:0]s_axi_AXI_Lite_RGB_1_N_BRESP;
  output s_axi_AXI_Lite_RGB_1_N_BVALID;
  input s_axi_AXI_Lite_RGB_1_N_BREADY;
  input [4:0]s_axi_AXI_Lite_RGB_1_N_ARADDR;
  input s_axi_AXI_Lite_RGB_1_N_ARVALID;
  output s_axi_AXI_Lite_RGB_1_N_ARREADY;
  output [31:0]s_axi_AXI_Lite_RGB_1_N_RDATA;
  output [1:0]s_axi_AXI_Lite_RGB_1_N_RRESP;
  output s_axi_AXI_Lite_RGB_1_N_RVALID;
  input s_axi_AXI_Lite_RGB_1_N_RREADY;
  input [4:0]s_axi_AXI_Lite_RGB_2_AWADDR;
  input s_axi_AXI_Lite_RGB_2_AWVALID;
  output s_axi_AXI_Lite_RGB_2_AWREADY;
  input [31:0]s_axi_AXI_Lite_RGB_2_WDATA;
  input [3:0]s_axi_AXI_Lite_RGB_2_WSTRB;
  input s_axi_AXI_Lite_RGB_2_WVALID;
  output s_axi_AXI_Lite_RGB_2_WREADY;
  output [1:0]s_axi_AXI_Lite_RGB_2_BRESP;
  output s_axi_AXI_Lite_RGB_2_BVALID;
  input s_axi_AXI_Lite_RGB_2_BREADY;
  input [4:0]s_axi_AXI_Lite_RGB_2_ARADDR;
  input s_axi_AXI_Lite_RGB_2_ARVALID;
  output s_axi_AXI_Lite_RGB_2_ARREADY;
  output [31:0]s_axi_AXI_Lite_RGB_2_RDATA;
  output [1:0]s_axi_AXI_Lite_RGB_2_RRESP;
  output s_axi_AXI_Lite_RGB_2_RVALID;
  input s_axi_AXI_Lite_RGB_2_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_AXI_Lite_RGB_1_N_AWADDR;
  output [7:0]m_axi_AXI_Lite_RGB_1_N_AWLEN;
  output [2:0]m_axi_AXI_Lite_RGB_1_N_AWSIZE;
  output [1:0]m_axi_AXI_Lite_RGB_1_N_AWBURST;
  output [1:0]m_axi_AXI_Lite_RGB_1_N_AWLOCK;
  output [3:0]m_axi_AXI_Lite_RGB_1_N_AWREGION;
  output [3:0]m_axi_AXI_Lite_RGB_1_N_AWCACHE;
  output [2:0]m_axi_AXI_Lite_RGB_1_N_AWPROT;
  output [3:0]m_axi_AXI_Lite_RGB_1_N_AWQOS;
  output m_axi_AXI_Lite_RGB_1_N_AWVALID;
  input m_axi_AXI_Lite_RGB_1_N_AWREADY;
  output [31:0]m_axi_AXI_Lite_RGB_1_N_WDATA;
  output [3:0]m_axi_AXI_Lite_RGB_1_N_WSTRB;
  output m_axi_AXI_Lite_RGB_1_N_WLAST;
  output m_axi_AXI_Lite_RGB_1_N_WVALID;
  input m_axi_AXI_Lite_RGB_1_N_WREADY;
  input [1:0]m_axi_AXI_Lite_RGB_1_N_BRESP;
  input m_axi_AXI_Lite_RGB_1_N_BVALID;
  output m_axi_AXI_Lite_RGB_1_N_BREADY;
  output [31:0]m_axi_AXI_Lite_RGB_1_N_ARADDR;
  output [7:0]m_axi_AXI_Lite_RGB_1_N_ARLEN;
  output [2:0]m_axi_AXI_Lite_RGB_1_N_ARSIZE;
  output [1:0]m_axi_AXI_Lite_RGB_1_N_ARBURST;
  output [1:0]m_axi_AXI_Lite_RGB_1_N_ARLOCK;
  output [3:0]m_axi_AXI_Lite_RGB_1_N_ARREGION;
  output [3:0]m_axi_AXI_Lite_RGB_1_N_ARCACHE;
  output [2:0]m_axi_AXI_Lite_RGB_1_N_ARPROT;
  output [3:0]m_axi_AXI_Lite_RGB_1_N_ARQOS;
  output m_axi_AXI_Lite_RGB_1_N_ARVALID;
  input m_axi_AXI_Lite_RGB_1_N_ARREADY;
  input [31:0]m_axi_AXI_Lite_RGB_1_N_RDATA;
  input [1:0]m_axi_AXI_Lite_RGB_1_N_RRESP;
  input m_axi_AXI_Lite_RGB_1_N_RLAST;
  input m_axi_AXI_Lite_RGB_1_N_RVALID;
  output m_axi_AXI_Lite_RGB_1_N_RREADY;
  output [31:0]m_axi_AXI_Lite_RGB_2_AWADDR;
  output [7:0]m_axi_AXI_Lite_RGB_2_AWLEN;
  output [2:0]m_axi_AXI_Lite_RGB_2_AWSIZE;
  output [1:0]m_axi_AXI_Lite_RGB_2_AWBURST;
  output [1:0]m_axi_AXI_Lite_RGB_2_AWLOCK;
  output [3:0]m_axi_AXI_Lite_RGB_2_AWREGION;
  output [3:0]m_axi_AXI_Lite_RGB_2_AWCACHE;
  output [2:0]m_axi_AXI_Lite_RGB_2_AWPROT;
  output [3:0]m_axi_AXI_Lite_RGB_2_AWQOS;
  output m_axi_AXI_Lite_RGB_2_AWVALID;
  input m_axi_AXI_Lite_RGB_2_AWREADY;
  output [31:0]m_axi_AXI_Lite_RGB_2_WDATA;
  output [3:0]m_axi_AXI_Lite_RGB_2_WSTRB;
  output m_axi_AXI_Lite_RGB_2_WLAST;
  output m_axi_AXI_Lite_RGB_2_WVALID;
  input m_axi_AXI_Lite_RGB_2_WREADY;
  input [1:0]m_axi_AXI_Lite_RGB_2_BRESP;
  input m_axi_AXI_Lite_RGB_2_BVALID;
  output m_axi_AXI_Lite_RGB_2_BREADY;
  output [31:0]m_axi_AXI_Lite_RGB_2_ARADDR;
  output [7:0]m_axi_AXI_Lite_RGB_2_ARLEN;
  output [2:0]m_axi_AXI_Lite_RGB_2_ARSIZE;
  output [1:0]m_axi_AXI_Lite_RGB_2_ARBURST;
  output [1:0]m_axi_AXI_Lite_RGB_2_ARLOCK;
  output [3:0]m_axi_AXI_Lite_RGB_2_ARREGION;
  output [3:0]m_axi_AXI_Lite_RGB_2_ARCACHE;
  output [2:0]m_axi_AXI_Lite_RGB_2_ARPROT;
  output [3:0]m_axi_AXI_Lite_RGB_2_ARQOS;
  output m_axi_AXI_Lite_RGB_2_ARVALID;
  input m_axi_AXI_Lite_RGB_2_ARREADY;
  input [31:0]m_axi_AXI_Lite_RGB_2_RDATA;
  input [1:0]m_axi_AXI_Lite_RGB_2_RRESP;
  input m_axi_AXI_Lite_RGB_2_RLAST;
  input m_axi_AXI_Lite_RGB_2_RVALID;
  output m_axi_AXI_Lite_RGB_2_RREADY;
endmodule

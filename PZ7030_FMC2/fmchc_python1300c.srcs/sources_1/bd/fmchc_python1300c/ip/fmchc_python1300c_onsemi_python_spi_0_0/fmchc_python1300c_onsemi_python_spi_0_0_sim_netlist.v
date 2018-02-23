// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Jan 26 15:32:39 2018
// Host        : ESIT044 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               C:/Avnet/hdl/Projects/fmchc_python1300c/PZ7030_FMC2/fmchc_python1300c.srcs/sources_1/bd/fmchc_python1300c/ip/fmchc_python1300c_onsemi_python_spi_0_0/fmchc_python1300c_onsemi_python_spi_0_0_sim_netlist.v
// Design      : fmchc_python1300c_onsemi_python_spi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030sbg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fmchc_python1300c_onsemi_python_spi_0_0,onsemi_vita_spi_v3_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "onsemi_vita_spi_v3_1,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module fmchc_python1300c_onsemi_python_spi_0_0
   (oe,
    io_vita_spi_sclk,
    io_vita_spi_ssel_n,
    io_vita_spi_mosi,
    io_vita_spi_miso,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input oe;
  (* x_interface_info = "avnet.com:interface:onsemi_vita_spi:1.0 IO_SPI_OUT spi_sclk" *) output io_vita_spi_sclk;
  (* x_interface_info = "avnet.com:interface:onsemi_vita_spi:1.0 IO_SPI_OUT spi_ssel_n" *) output io_vita_spi_ssel_n;
  (* x_interface_info = "avnet.com:interface:onsemi_vita_spi:1.0 IO_SPI_OUT spi_mosi" *) output io_vita_spi_mosi;
  (* x_interface_info = "avnet.com:interface:onsemi_vita_spi:1.0 IO_SPI_OUT spi_miso" *) input io_vita_spi_miso;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [7:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [7:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire io_vita_spi_miso;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire io_vita_spi_mosi;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire io_vita_spi_sclk;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire io_vita_spi_ssel_n;
  wire oe;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  fmchc_python1300c_onsemi_python_spi_0_0_onsemi_vita_spi_v3_1 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .io_vita_spi_miso(io_vita_spi_miso),
        .io_vita_spi_mosi(io_vita_spi_mosi),
        .io_vita_spi_sclk(io_vita_spi_sclk),
        .io_vita_spi_ssel_n(io_vita_spi_ssel_n),
        .oe(oe),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[7:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[7:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "afifo_32" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_afifo_32
   (D,
    dout,
    empty,
    \SPI_DATA_TX_reg[16] ,
    AR,
    s00_axi_aclk,
    wr_en,
    Q,
    rd_en);
  output [0:0]D;
  output [28:0]dout;
  output empty;
  output [0:0]\SPI_DATA_TX_reg[16] ;
  input [0:0]AR;
  input s00_axi_aclk;
  input wr_en;
  input [31:0]Q;
  input rd_en;

  wire [0:0]AR;
  wire [0:0]D;
  wire [31:0]Q;
  wire [0:0]\SPI_DATA_TX_reg[16] ;
  wire [28:0]dout;
  wire empty;
  wire rd_en;
  wire s00_axi_aclk;
  wire wr_en;

  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_async afifo_64i_16o_l
       (.AR(AR),
        .D(D),
        .Q(Q),
        .\SPI_DATA_TX_reg[16] (\SPI_DATA_TX_reg[16] ),
        .dout(dout),
        .empty(empty),
        .rd_en(rd_en),
        .s00_axi_aclk(s00_axi_aclk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "afifo_32" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_afifo_32__xdcDup__1
   (full,
    \slv_reg7_r1_reg[31] ,
    D,
    AR,
    s00_axi_aclk,
    wr_en,
    Q,
    rd_en);
  output full;
  output [31:0]\slv_reg7_r1_reg[31] ;
  output [0:0]D;
  input [0:0]AR;
  input s00_axi_aclk;
  input wr_en;
  input [25:0]Q;
  input rd_en;

  wire [0:0]AR;
  wire [0:0]D;
  wire [25:0]Q;
  wire full;
  wire rd_en;
  wire s00_axi_aclk;
  wire [31:0]\slv_reg7_r1_reg[31] ;
  wire wr_en;

  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_async__xdcDup__1 afifo_64i_16o_l
       (.AR(AR),
        .D(D),
        .Q(Q),
        .full(full),
        .rd_en(rd_en),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg7_r1_reg[31] (\slv_reg7_r1_reg[31] ),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "onsemi_vita_spi_core" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_onsemi_vita_spi_core
   (D,
    \slv_reg7_r1_reg[31] ,
    io_vita_spi_sclk,
    io_vita_spi_ssel_n,
    io_vita_spi_mosi,
    AR,
    s00_axi_aclk,
    wr_en,
    Q,
    rd_en,
    \host_spi_timing_reg[15] ,
    oe,
    io_vita_spi_miso);
  output [2:0]D;
  output [31:0]\slv_reg7_r1_reg[31] ;
  output io_vita_spi_sclk;
  output io_vita_spi_ssel_n;
  output io_vita_spi_mosi;
  input [0:0]AR;
  input s00_axi_aclk;
  input wr_en;
  input [31:0]Q;
  input rd_en;
  input [15:0]\host_spi_timing_reg[15] ;
  input oe;
  input io_vita_spi_miso;

  wire [0:0]AR;
  wire [2:0]D;
  wire [31:0]Q;
  wire T;
  wire [15:0]\host_spi_timing_reg[15] ;
  wire io_vita_spi_miso;
  wire io_vita_spi_mosi;
  wire io_vita_spi_sclk;
  wire io_vita_spi_ssel_n;
  wire oe;
  wire rd_en;
  wire s00_axi_aclk;
  wire [31:0]\slv_reg7_r1_reg[31] ;
  wire [16:16]\the_spi_seq/p_2_out ;
  wire vita_spi_mosi_o;
  wire [25:0]vita_spi_rxfifo_din;
  wire vita_spi_rxfifo_full;
  wire vita_spi_rxfifo_wen;
  wire vita_spi_sclk_o;
  wire vita_spi_ssel_n_o;
  wire [31:0]vita_spi_txfifo_dout;
  wire vita_spi_txfifo_empty;
  wire vita_spi_txfifo_ren;
  wire wr_en;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    OBUFT_vita_spi_mosi
       (.I(vita_spi_mosi_o),
        .O(io_vita_spi_mosi),
        .T(T));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    OBUFT_vita_spi_sclk
       (.I(vita_spi_sclk_o),
        .O(io_vita_spi_sclk),
        .T(T));
  LUT1 #(
    .INIT(2'h1)) 
    OBUFT_vita_spi_sclk_i_1
       (.I0(oe),
        .O(T));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFT #(
    .IOSTANDARD("DEFAULT")) 
    OBUFT_vita_spi_ssel_n
       (.I(vita_spi_ssel_n_o),
        .O(io_vita_spi_ssel_n),
        .T(T));
  fmchc_python1300c_onsemi_python_spi_0_0_spi_top vita_spi
       (.AR(AR),
        .D(D[0]),
        .Q(vita_spi_rxfifo_din),
        .dout({vita_spi_txfifo_dout[31:28],vita_spi_txfifo_dout[24:0]}),
        .empty(vita_spi_txfifo_empty),
        .full(vita_spi_rxfifo_full),
        .\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] (\the_spi_seq/p_2_out ),
        .\host_spi_timing_reg[15] (\host_spi_timing_reg[15] ),
        .io_vita_spi_miso(io_vita_spi_miso),
        .rd_en(vita_spi_txfifo_ren),
        .s00_axi_aclk(s00_axi_aclk),
        .vita_spi_mosi_o(vita_spi_mosi_o),
        .vita_spi_sclk_o(vita_spi_sclk_o),
        .vita_spi_ssel_n_o(vita_spi_ssel_n_o),
        .wr_en(vita_spi_rxfifo_wen));
  fmchc_python1300c_onsemi_python_spi_0_0_afifo_32__xdcDup__1 vita_spi_rxfifo_l
       (.AR(AR),
        .D(D[2]),
        .Q(vita_spi_rxfifo_din),
        .full(vita_spi_rxfifo_full),
        .rd_en(rd_en),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg7_r1_reg[31] (\slv_reg7_r1_reg[31] ),
        .wr_en(vita_spi_rxfifo_wen));
  fmchc_python1300c_onsemi_python_spi_0_0_afifo_32 vita_spi_txfifo_l
       (.AR(AR),
        .D(D[1]),
        .Q(Q),
        .\SPI_DATA_TX_reg[16] (\the_spi_seq/p_2_out ),
        .dout({vita_spi_txfifo_dout[31:28],vita_spi_txfifo_dout[24:0]}),
        .empty(vita_spi_txfifo_empty),
        .rd_en(vita_spi_txfifo_ren),
        .s00_axi_aclk(s00_axi_aclk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "onsemi_vita_spi_v3_1" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_onsemi_vita_spi_v3_1
   (s00_axi_rvalid,
    S_AXI_ARREADY,
    io_vita_spi_sclk,
    io_vita_spi_ssel_n,
    io_vita_spi_mosi,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    io_vita_spi_miso,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wstrb,
    oe,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_rvalid;
  output S_AXI_ARREADY;
  output io_vita_spi_sclk;
  output io_vita_spi_ssel_n;
  output io_vita_spi_mosi;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [5:0]s00_axi_awaddr;
  input io_vita_spi_miso;
  input [31:0]s00_axi_wdata;
  input [5:0]s00_axi_araddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [3:0]s00_axi_wstrb;
  input oe;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire io_vita_spi_miso;
  wire io_vita_spi_mosi;
  wire io_vita_spi_sclk;
  wire io_vita_spi_ssel_n;
  wire oe;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  fmchc_python1300c_onsemi_python_spi_0_0_onsemi_vita_spi_v3_1_S00_AXI onsemi_vita_spi_v3_1_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .io_vita_spi_miso(io_vita_spi_miso),
        .io_vita_spi_mosi(io_vita_spi_mosi),
        .io_vita_spi_sclk(io_vita_spi_sclk),
        .io_vita_spi_ssel_n(io_vita_spi_ssel_n),
        .oe(oe),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "onsemi_vita_spi_v3_1_S00_AXI" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_onsemi_vita_spi_v3_1_S00_AXI
   (s00_axi_rvalid,
    S_AXI_ARREADY,
    io_vita_spi_sclk,
    io_vita_spi_ssel_n,
    io_vita_spi_mosi,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    io_vita_spi_miso,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wstrb,
    oe,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_rvalid;
  output S_AXI_ARREADY;
  output io_vita_spi_sclk;
  output io_vita_spi_ssel_n;
  output io_vita_spi_mosi;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [5:0]s00_axi_awaddr;
  input io_vita_spi_miso;
  input [31:0]s00_axi_wdata;
  input [5:0]s00_axi_araddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [3:0]s00_axi_wstrb;
  input oe;
  input s00_axi_bready;
  input s00_axi_rready;

  wire ERROR;
  wire [5:0]L;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire \axi_araddr_reg_n_0_[5] ;
  wire \axi_araddr_reg_n_0_[6] ;
  wire \axi_araddr_reg_n_0_[7] ;
  wire axi_arready_i_1_n_0;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_1_n_0 ;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_1_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_1_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_1_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_1_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_1_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_1_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_1_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_1_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_1_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_1_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_1_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_1_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_1_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_1_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_1_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_1_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[3]_i_1_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_1_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_1_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_1_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_1_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_1_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire host_spi_reset;
  wire [31:0]host_spi_rxfifo_dout;
  wire host_spi_rxfifo_empty;
  wire host_spi_rxfifo_ren;
  wire host_spi_rxfifo_ren0;
  wire host_spi_rxfifo_ren_i_2_n_0;
  wire [15:0]host_spi_timing;
  wire [31:0]host_spi_txfifo_din;
  wire host_spi_txfifo_full;
  wire host_spi_txfifo_wen;
  wire host_spi_txfifo_wen_a1;
  wire host_spi_txfifo_wen_a10;
  wire host_spi_txfifo_wen_a1_i_2_n_0;
  wire host_spi_txfifo_wen_a1_i_3_n_0;
  wire io_vita_spi_miso;
  wire io_vita_spi_mosi;
  wire io_vita_spi_sclk;
  wire io_vita_spi_ssel_n;
  wire oe;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [1:1]slv_reg4;
  wire \slv_reg4[1]_i_1_n_0 ;
  wire \slv_reg4_r1_reg_n_0_[16] ;
  wire \slv_reg4_r1_reg_n_0_[1] ;
  wire \slv_reg4_r1_reg_n_0_[24] ;
  wire \slv_reg4_r1_reg_n_0_[9] ;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire \slv_reg5_reg_n_0_[0] ;
  wire \slv_reg5_reg_n_0_[10] ;
  wire \slv_reg5_reg_n_0_[11] ;
  wire \slv_reg5_reg_n_0_[12] ;
  wire \slv_reg5_reg_n_0_[13] ;
  wire \slv_reg5_reg_n_0_[14] ;
  wire \slv_reg5_reg_n_0_[15] ;
  wire \slv_reg5_reg_n_0_[16] ;
  wire \slv_reg5_reg_n_0_[17] ;
  wire \slv_reg5_reg_n_0_[18] ;
  wire \slv_reg5_reg_n_0_[19] ;
  wire \slv_reg5_reg_n_0_[1] ;
  wire \slv_reg5_reg_n_0_[20] ;
  wire \slv_reg5_reg_n_0_[21] ;
  wire \slv_reg5_reg_n_0_[22] ;
  wire \slv_reg5_reg_n_0_[23] ;
  wire \slv_reg5_reg_n_0_[24] ;
  wire \slv_reg5_reg_n_0_[25] ;
  wire \slv_reg5_reg_n_0_[26] ;
  wire \slv_reg5_reg_n_0_[27] ;
  wire \slv_reg5_reg_n_0_[28] ;
  wire \slv_reg5_reg_n_0_[29] ;
  wire \slv_reg5_reg_n_0_[2] ;
  wire \slv_reg5_reg_n_0_[30] ;
  wire \slv_reg5_reg_n_0_[31] ;
  wire \slv_reg5_reg_n_0_[3] ;
  wire \slv_reg5_reg_n_0_[4] ;
  wire \slv_reg5_reg_n_0_[5] ;
  wire \slv_reg5_reg_n_0_[6] ;
  wire \slv_reg5_reg_n_0_[7] ;
  wire \slv_reg5_reg_n_0_[8] ;
  wire \slv_reg5_reg_n_0_[9] ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7_r1;

  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[3]),
        .Q(\axi_araddr_reg_n_0_[5] ),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[4]),
        .Q(\axi_araddr_reg_n_0_[6] ),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[5]),
        .Q(\axi_araddr_reg_n_0_[7] ),
        .S(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(L[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(L[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(L[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(L[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[4]),
        .Q(L[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[5]),
        .Q(L[5]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(S_AXI_AWREADY),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[0]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg6[0]),
        .I1(\slv_reg5_reg_n_0_[0] ),
        .I2(slv_reg7_r1[0]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[10]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[10]_i_2 
       (.I0(slv_reg6[10]),
        .I1(\slv_reg5_reg_n_0_[10] ),
        .I2(slv_reg7_r1[10]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[11]_i_2 
       (.I0(slv_reg6[11]),
        .I1(\slv_reg5_reg_n_0_[11] ),
        .I2(slv_reg7_r1[11]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[12]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[12]_i_2 
       (.I0(slv_reg6[12]),
        .I1(\slv_reg5_reg_n_0_[12] ),
        .I2(slv_reg7_r1[12]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[13]_i_2 
       (.I0(slv_reg6[13]),
        .I1(\slv_reg5_reg_n_0_[13] ),
        .I2(slv_reg7_r1[13]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[14]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[14]_i_2 
       (.I0(slv_reg6[14]),
        .I1(\slv_reg5_reg_n_0_[14] ),
        .I2(slv_reg7_r1[14]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg6[15]),
        .I1(\slv_reg5_reg_n_0_[15] ),
        .I2(slv_reg7_r1[15]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF020202)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[16]_i_2_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(\axi_rdata[16]_i_3_n_0 ),
        .I5(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[16]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[16]_i_3 
       (.I0(\slv_reg5_reg_n_0_[16] ),
        .I1(slv_reg7_r1[16]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg4_r1_reg_n_0_[16] ),
        .I5(slv_reg6[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEFEEEEEE)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[17]_i_2_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA828A02088088000)) 
    \axi_rdata[17]_i_2 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(slv_reg7_r1[17]),
        .I4(\slv_reg5_reg_n_0_[17] ),
        .I5(slv_reg6[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[18]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg6[18]),
        .I1(\slv_reg5_reg_n_0_[18] ),
        .I2(slv_reg7_r1[18]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[19]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg6[19]),
        .I1(\slv_reg5_reg_n_0_[19] ),
        .I2(slv_reg7_r1[19]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[1]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[1]_i_2 
       (.I0(\slv_reg5_reg_n_0_[1] ),
        .I1(slv_reg7_r1[1]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg4_r1_reg_n_0_[1] ),
        .I5(slv_reg6[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg6[20]),
        .I1(\slv_reg5_reg_n_0_[20] ),
        .I2(slv_reg7_r1[20]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[21]_i_2 
       (.I0(slv_reg6[21]),
        .I1(\slv_reg5_reg_n_0_[21] ),
        .I2(slv_reg7_r1[21]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[22]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg6[22]),
        .I1(\slv_reg5_reg_n_0_[22] ),
        .I2(slv_reg7_r1[22]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg6[23]),
        .I1(\slv_reg5_reg_n_0_[23] ),
        .I2(slv_reg7_r1[23]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[30]_i_2_n_0 ),
        .I2(\axi_rdata[24]_i_2_n_0 ),
        .I3(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[24]_i_2 
       (.I0(\slv_reg5_reg_n_0_[24] ),
        .I1(slv_reg7_r1[24]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg4_r1_reg_n_0_[24] ),
        .I5(slv_reg6[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEFEEEEEE)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[25]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \axi_rdata[25]_i_2 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[7] ),
        .I2(\axi_araddr_reg_n_0_[5] ),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA828A02088088000)) 
    \axi_rdata[25]_i_3 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(slv_reg7_r1[25]),
        .I4(\slv_reg5_reg_n_0_[25] ),
        .I5(slv_reg6[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[26]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg6[26]),
        .I1(\slv_reg5_reg_n_0_[26] ),
        .I2(slv_reg7_r1[26]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[27]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg6[27]),
        .I1(\slv_reg5_reg_n_0_[27] ),
        .I2(slv_reg7_r1[27]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg6[28]),
        .I1(\slv_reg5_reg_n_0_[28] ),
        .I2(slv_reg7_r1[28]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg6[29]),
        .I1(\slv_reg5_reg_n_0_[29] ),
        .I2(slv_reg7_r1[29]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg6[2]),
        .I1(\slv_reg5_reg_n_0_[2] ),
        .I2(slv_reg7_r1[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[30]_i_3_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AE)) 
    \axi_rdata[30]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_araddr_reg_n_0_[7] ),
        .I5(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[30]_i_3 
       (.I0(slv_reg6[30]),
        .I1(\slv_reg5_reg_n_0_[30] ),
        .I2(slv_reg7_r1[30]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \axi_rdata[30]_i_4 
       (.I0(s00_axi_rvalid),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(s00_axi_aresetn),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[31]_i_3 
       (.I0(slv_reg6[31]),
        .I1(\slv_reg5_reg_n_0_[31] ),
        .I2(slv_reg7_r1[31]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[31]_i_4 
       (.I0(\axi_araddr_reg_n_0_[5] ),
        .I1(\axi_araddr_reg_n_0_[7] ),
        .I2(\axi_araddr_reg_n_0_[6] ),
        .I3(sel0[2]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg6[3]),
        .I1(\slv_reg5_reg_n_0_[3] ),
        .I2(slv_reg7_r1[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[4]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg6[4]),
        .I1(\slv_reg5_reg_n_0_[4] ),
        .I2(slv_reg7_r1[4]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[5]_i_2 
       (.I0(slv_reg6[5]),
        .I1(\slv_reg5_reg_n_0_[5] ),
        .I2(slv_reg7_r1[5]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[6]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[6]_i_2 
       (.I0(slv_reg6[6]),
        .I1(\slv_reg5_reg_n_0_[6] ),
        .I2(slv_reg7_r1[6]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[7]_i_2 
       (.I0(slv_reg6[7]),
        .I1(\slv_reg5_reg_n_0_[7] ),
        .I2(slv_reg7_r1[7]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(S_AXI_ARREADY),
        .I4(s00_axi_arvalid),
        .I5(s00_axi_rvalid),
        .O(\axi_rdata[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg6[8]),
        .I1(\slv_reg5_reg_n_0_[8] ),
        .I2(slv_reg7_r1[8]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA02)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[9]_i_2_n_0 ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(\axi_rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[9]_i_2 
       (.I0(\slv_reg5_reg_n_0_[9] ),
        .I1(slv_reg7_r1[9]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg4_r1_reg_n_0_[9] ),
        .I5(slv_reg6[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[0]_i_1_n_0 ),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[2]_i_1_n_0 ),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[31]_i_2_n_0 ),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[3]_i_1_n_0 ),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[4]_i_1_n_0 ),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[5]_i_1_n_0 ),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[6]_i_1_n_0 ),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[7]_i_1_n_0 ),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[8]_i_1_n_0 ),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  FDRE host_spi_reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg4),
        .Q(host_spi_reset),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    host_spi_rxfifo_ren_i_1
       (.I0(host_spi_rxfifo_ren_i_2_n_0),
        .I1(L[1]),
        .O(host_spi_rxfifo_ren0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    host_spi_rxfifo_ren_i_2
       (.I0(L[2]),
        .I1(L[4]),
        .I2(host_spi_txfifo_wen_a1_i_3_n_0),
        .I3(L[3]),
        .I4(L[5]),
        .I5(L[0]),
        .O(host_spi_rxfifo_ren_i_2_n_0));
  FDRE host_spi_rxfifo_ren_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_ren0),
        .Q(host_spi_rxfifo_ren),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[0] ),
        .Q(host_spi_timing[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[10] ),
        .Q(host_spi_timing[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[11] ),
        .Q(host_spi_timing[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[12] ),
        .Q(host_spi_timing[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[13] ),
        .Q(host_spi_timing[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[14] ),
        .Q(host_spi_timing[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[15] ),
        .Q(host_spi_timing[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[1] ),
        .Q(host_spi_timing[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[2] ),
        .Q(host_spi_timing[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[3] ),
        .Q(host_spi_timing[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[4] ),
        .Q(host_spi_timing[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[5] ),
        .Q(host_spi_timing[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[6] ),
        .Q(host_spi_timing[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[7] ),
        .Q(host_spi_timing[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[8] ),
        .Q(host_spi_timing[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_timing_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg_n_0_[9] ),
        .Q(host_spi_timing[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[0]),
        .Q(host_spi_txfifo_din[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[10]),
        .Q(host_spi_txfifo_din[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[11]),
        .Q(host_spi_txfifo_din[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[12]),
        .Q(host_spi_txfifo_din[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[13]),
        .Q(host_spi_txfifo_din[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[14]),
        .Q(host_spi_txfifo_din[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[15]),
        .Q(host_spi_txfifo_din[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[16]),
        .Q(host_spi_txfifo_din[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[17]),
        .Q(host_spi_txfifo_din[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[18]),
        .Q(host_spi_txfifo_din[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[19]),
        .Q(host_spi_txfifo_din[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[1]),
        .Q(host_spi_txfifo_din[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[20]),
        .Q(host_spi_txfifo_din[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[21]),
        .Q(host_spi_txfifo_din[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[22]),
        .Q(host_spi_txfifo_din[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[23]),
        .Q(host_spi_txfifo_din[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[24]),
        .Q(host_spi_txfifo_din[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[25]),
        .Q(host_spi_txfifo_din[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[26]),
        .Q(host_spi_txfifo_din[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[27]),
        .Q(host_spi_txfifo_din[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[28]),
        .Q(host_spi_txfifo_din[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[29]),
        .Q(host_spi_txfifo_din[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[2]),
        .Q(host_spi_txfifo_din[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[30]),
        .Q(host_spi_txfifo_din[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[31]),
        .Q(host_spi_txfifo_din[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[3]),
        .Q(host_spi_txfifo_din[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[4]),
        .Q(host_spi_txfifo_din[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[5]),
        .Q(host_spi_txfifo_din[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[6]),
        .Q(host_spi_txfifo_din[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[7]),
        .Q(host_spi_txfifo_din[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[8]),
        .Q(host_spi_txfifo_din[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \host_spi_txfifo_din_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg6[9]),
        .Q(host_spi_txfifo_din[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    host_spi_txfifo_wen_a1_i_1
       (.I0(host_spi_txfifo_wen_a1_i_2_n_0),
        .I1(L[1]),
        .O(host_spi_txfifo_wen_a10));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    host_spi_txfifo_wen_a1_i_2
       (.I0(L[2]),
        .I1(L[4]),
        .I2(host_spi_txfifo_wen_a1_i_3_n_0),
        .I3(L[3]),
        .I4(L[5]),
        .I5(L[0]),
        .O(host_spi_txfifo_wen_a1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    host_spi_txfifo_wen_a1_i_3
       (.I0(S_AXI_WREADY),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .O(host_spi_txfifo_wen_a1_i_3_n_0));
  FDRE host_spi_txfifo_wen_a1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_txfifo_wen_a10),
        .Q(host_spi_txfifo_wen_a1),
        .R(axi_awready_i_1_n_0));
  FDRE host_spi_txfifo_wen_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_txfifo_wen_a1),
        .Q(host_spi_txfifo_wen),
        .R(axi_awready_i_1_n_0));
  fmchc_python1300c_onsemi_python_spi_0_0_onsemi_vita_spi_core onsemi_vita_spicore_inst
       (.AR(host_spi_reset),
        .D({host_spi_rxfifo_empty,host_spi_txfifo_full,ERROR}),
        .Q(host_spi_txfifo_din),
        .\host_spi_timing_reg[15] (host_spi_timing),
        .io_vita_spi_miso(io_vita_spi_miso),
        .io_vita_spi_mosi(io_vita_spi_mosi),
        .io_vita_spi_sclk(io_vita_spi_sclk),
        .io_vita_spi_ssel_n(io_vita_spi_ssel_n),
        .oe(oe),
        .rd_en(host_spi_rxfifo_ren),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg7_r1_reg[31] (host_spi_rxfifo_dout),
        .wr_en(host_spi_txfifo_wen));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \slv_reg4[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(L[1]),
        .I2(host_spi_txfifo_wen_a1_i_2_n_0),
        .I3(s00_axi_wstrb[0]),
        .I4(slv_reg4),
        .O(\slv_reg4[1]_i_1_n_0 ));
  FDRE \slv_reg4_r1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_txfifo_full),
        .Q(\slv_reg4_r1_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_r1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_reset),
        .Q(\slv_reg4_r1_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_r1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_empty),
        .Q(\slv_reg4_r1_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_r1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ERROR),
        .Q(\slv_reg4_r1_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg4[1]_i_1_n_0 ),
        .Q(slv_reg4),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    \slv_reg5[15]_i_1 
       (.I0(L[1]),
        .I1(host_spi_rxfifo_ren_i_2_n_0),
        .I2(s00_axi_wstrb[1]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \slv_reg5[23]_i_1 
       (.I0(L[1]),
        .I1(host_spi_rxfifo_ren_i_2_n_0),
        .I2(s00_axi_wstrb[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \slv_reg5[31]_i_1 
       (.I0(L[1]),
        .I1(host_spi_rxfifo_ren_i_2_n_0),
        .I2(s00_axi_wstrb[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \slv_reg5[7]_i_1 
       (.I0(L[1]),
        .I1(host_spi_rxfifo_ren_i_2_n_0),
        .I2(s00_axi_wstrb[0]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg5_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg5_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg5_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg5_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg5_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg5_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg5_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg5_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg5_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg5_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg5_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg5_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg5_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg5_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg5_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg5_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg5_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg5_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg5_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg5_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg5_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg5_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg5_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg5_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg5_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg5_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg5_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg5_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg5_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg5_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg5_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg5_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg6[15]_i_1 
       (.I0(L[1]),
        .I1(host_spi_txfifo_wen_a1_i_2_n_0),
        .I2(s00_axi_wstrb[1]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg6[23]_i_1 
       (.I0(L[1]),
        .I1(host_spi_txfifo_wen_a1_i_2_n_0),
        .I2(s00_axi_wstrb[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg6[31]_i_1 
       (.I0(L[1]),
        .I1(host_spi_txfifo_wen_a1_i_2_n_0),
        .I2(s00_axi_wstrb[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg6[7]_i_1 
       (.I0(L[1]),
        .I1(host_spi_txfifo_wen_a1_i_2_n_0),
        .I2(s00_axi_wstrb[0]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[0]),
        .Q(slv_reg7_r1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[10]),
        .Q(slv_reg7_r1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[11]),
        .Q(slv_reg7_r1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[12]),
        .Q(slv_reg7_r1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[13]),
        .Q(slv_reg7_r1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[14]),
        .Q(slv_reg7_r1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[15]),
        .Q(slv_reg7_r1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[16]),
        .Q(slv_reg7_r1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[17]),
        .Q(slv_reg7_r1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[18]),
        .Q(slv_reg7_r1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[19]),
        .Q(slv_reg7_r1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[1]),
        .Q(slv_reg7_r1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[20]),
        .Q(slv_reg7_r1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[21]),
        .Q(slv_reg7_r1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[22]),
        .Q(slv_reg7_r1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[23]),
        .Q(slv_reg7_r1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[24]),
        .Q(slv_reg7_r1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[25]),
        .Q(slv_reg7_r1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[26]),
        .Q(slv_reg7_r1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[27]),
        .Q(slv_reg7_r1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[28]),
        .Q(slv_reg7_r1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[29]),
        .Q(slv_reg7_r1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[2]),
        .Q(slv_reg7_r1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[30]),
        .Q(slv_reg7_r1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[31]),
        .Q(slv_reg7_r1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[3]),
        .Q(slv_reg7_r1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[4]),
        .Q(slv_reg7_r1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[5]),
        .Q(slv_reg7_r1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[6]),
        .Q(slv_reg7_r1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[7]),
        .Q(slv_reg7_r1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[8]),
        .Q(slv_reg7_r1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_r1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(host_spi_rxfifo_dout[9]),
        .Q(slv_reg7_r1[9]),
        .R(axi_awready_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "spi_lowlevel" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_spi_lowlevel
   (\RxWord_reg[25]_0 ,
    MOSI_reg_0,
    SPI_BUSY,
    vita_spi_sclk_o,
    vita_spi_ssel_n_o,
    vita_spi_mosi_o,
    Q,
    D,
    s00_axi_aclk,
    AR,
    SPI_START,
    \host_spi_timing_reg[15] ,
    \TxIndex_reg[3]_0 ,
    \SPI_DATA_TX_reg[2] ,
    \SPI_DATA_TX_reg[6] ,
    \SPI_DATA_TX_reg[1] ,
    io_vita_spi_miso,
    E,
    SPI_START_reg);
  output \RxWord_reg[25]_0 ;
  output MOSI_reg_0;
  output SPI_BUSY;
  output vita_spi_sclk_o;
  output vita_spi_ssel_n_o;
  output vita_spi_mosi_o;
  output [3:0]Q;
  output [25:0]D;
  input s00_axi_aclk;
  input [0:0]AR;
  input SPI_START;
  input [15:0]\host_spi_timing_reg[15] ;
  input \TxIndex_reg[3]_0 ;
  input \SPI_DATA_TX_reg[2] ;
  input \SPI_DATA_TX_reg[6] ;
  input [1:0]\SPI_DATA_TX_reg[1] ;
  input io_vita_spi_miso;
  input [0:0]E;
  input [0:0]SPI_START_reg;

  wire \/i__n_0 ;
  wire [0:0]AR;
  wire BUSY_i_1_n_0;
  wire CS_i_1_n_0;
  wire [14:0]ClockCounter;
  wire \ClockCounter[0]_i_1_n_0 ;
  wire \ClockCounter[10]_i_1_n_0 ;
  wire \ClockCounter[11]_i_1_n_0 ;
  wire \ClockCounter[12]_i_1_n_0 ;
  wire \ClockCounter[13]_i_1_n_0 ;
  wire \ClockCounter[14]_i_1_n_0 ;
  wire \ClockCounter[15]_i_1_n_0 ;
  wire \ClockCounter[1]_i_1_n_0 ;
  wire \ClockCounter[2]_i_1_n_0 ;
  wire \ClockCounter[3]_i_1_n_0 ;
  wire \ClockCounter[4]_i_1_n_0 ;
  wire \ClockCounter[5]_i_1_n_0 ;
  wire \ClockCounter[6]_i_1_n_0 ;
  wire \ClockCounter[7]_i_1_n_0 ;
  wire \ClockCounter[8]_i_1_n_0 ;
  wire \ClockCounter[9]_i_1_n_0 ;
  wire ClockCounter_0;
  wire ClockOut;
  wire ClockOut2_in;
  wire \Counter[0]_i_2_n_0 ;
  wire \Counter[0]_i_3_n_0 ;
  wire \Counter[0]_i_4_n_0 ;
  wire \Counter[0]_i_5_n_0 ;
  wire \Counter[0]_i_6_n_0 ;
  wire \Counter[0]_i_7_n_0 ;
  wire \Counter[0]_i_8_n_0 ;
  wire \Counter[0]_i_9_n_0 ;
  wire \Counter[12]_i_2_n_0 ;
  wire \Counter[12]_i_3_n_0 ;
  wire \Counter[12]_i_4_n_0 ;
  wire \Counter[12]_i_5_n_0 ;
  wire \Counter[12]_i_6_n_0 ;
  wire \Counter[12]_i_7_n_0 ;
  wire \Counter[12]_i_8_n_0 ;
  wire \Counter[12]_i_9_n_0 ;
  wire \Counter[16]_i_2_n_0 ;
  wire \Counter[4]_i_2_n_0 ;
  wire \Counter[4]_i_3_n_0 ;
  wire \Counter[4]_i_4_n_0 ;
  wire \Counter[4]_i_5_n_0 ;
  wire \Counter[4]_i_6_n_0 ;
  wire \Counter[4]_i_7_n_0 ;
  wire \Counter[4]_i_8_n_0 ;
  wire \Counter[4]_i_9_n_0 ;
  wire \Counter[8]_i_2_n_0 ;
  wire \Counter[8]_i_3_n_0 ;
  wire \Counter[8]_i_4_n_0 ;
  wire \Counter[8]_i_5_n_0 ;
  wire \Counter[8]_i_6_n_0 ;
  wire \Counter[8]_i_7_n_0 ;
  wire \Counter[8]_i_8_n_0 ;
  wire \Counter[8]_i_9_n_0 ;
  wire \Counter_reg[0]_i_1_n_0 ;
  wire \Counter_reg[0]_i_1_n_1 ;
  wire \Counter_reg[0]_i_1_n_2 ;
  wire \Counter_reg[0]_i_1_n_3 ;
  wire \Counter_reg[0]_i_1_n_4 ;
  wire \Counter_reg[0]_i_1_n_5 ;
  wire \Counter_reg[0]_i_1_n_6 ;
  wire \Counter_reg[0]_i_1_n_7 ;
  wire \Counter_reg[12]_i_1_n_0 ;
  wire \Counter_reg[12]_i_1_n_1 ;
  wire \Counter_reg[12]_i_1_n_2 ;
  wire \Counter_reg[12]_i_1_n_3 ;
  wire \Counter_reg[12]_i_1_n_4 ;
  wire \Counter_reg[12]_i_1_n_5 ;
  wire \Counter_reg[12]_i_1_n_6 ;
  wire \Counter_reg[12]_i_1_n_7 ;
  wire \Counter_reg[16]_i_1_n_7 ;
  wire \Counter_reg[4]_i_1_n_0 ;
  wire \Counter_reg[4]_i_1_n_1 ;
  wire \Counter_reg[4]_i_1_n_2 ;
  wire \Counter_reg[4]_i_1_n_3 ;
  wire \Counter_reg[4]_i_1_n_4 ;
  wire \Counter_reg[4]_i_1_n_5 ;
  wire \Counter_reg[4]_i_1_n_6 ;
  wire \Counter_reg[4]_i_1_n_7 ;
  wire \Counter_reg[8]_i_1_n_0 ;
  wire \Counter_reg[8]_i_1_n_1 ;
  wire \Counter_reg[8]_i_1_n_2 ;
  wire \Counter_reg[8]_i_1_n_3 ;
  wire \Counter_reg[8]_i_1_n_4 ;
  wire \Counter_reg[8]_i_1_n_5 ;
  wire \Counter_reg[8]_i_1_n_6 ;
  wire \Counter_reg[8]_i_1_n_7 ;
  wire \Counter_reg_n_0_[0] ;
  wire \Counter_reg_n_0_[10] ;
  wire \Counter_reg_n_0_[11] ;
  wire \Counter_reg_n_0_[12] ;
  wire \Counter_reg_n_0_[13] ;
  wire \Counter_reg_n_0_[14] ;
  wire \Counter_reg_n_0_[15] ;
  wire \Counter_reg_n_0_[1] ;
  wire \Counter_reg_n_0_[2] ;
  wire \Counter_reg_n_0_[3] ;
  wire \Counter_reg_n_0_[4] ;
  wire \Counter_reg_n_0_[5] ;
  wire \Counter_reg_n_0_[6] ;
  wire \Counter_reg_n_0_[7] ;
  wire \Counter_reg_n_0_[8] ;
  wire \Counter_reg_n_0_[9] ;
  wire [25:0]D;
  wire [0:0]E;
  wire \FSM_sequential_clockstate[0]_i_1_n_0 ;
  wire \FSM_sequential_clockstate[1]_i_1_n_0 ;
  wire \FSM_sequential_clockstate[2]_i_1_n_0 ;
  wire MOSI_i_1_n_0;
  wire MOSI_i_2_n_0;
  wire MOSI_i_4_n_0;
  wire MOSI_reg_0;
  wire [3:0]Q;
  wire \RxIndex[0]_i_1_n_0 ;
  wire \RxIndex[1]_i_1_n_0 ;
  wire \RxIndex[2]_i_1_n_0 ;
  wire \RxIndex[3]_i_1_n_0 ;
  wire \RxIndex[4]_i_2_n_0 ;
  wire [4:0]RxIndex_reg__0;
  wire \RxWord[0]_i_1_n_0 ;
  wire \RxWord[10]_i_1_n_0 ;
  wire \RxWord[11]_i_1_n_0 ;
  wire \RxWord[12]_i_1_n_0 ;
  wire \RxWord[13]_i_1_n_0 ;
  wire \RxWord[14]_i_1_n_0 ;
  wire \RxWord[15]_i_1_n_0 ;
  wire \RxWord[15]_i_2_n_0 ;
  wire \RxWord[16]_i_1_n_0 ;
  wire \RxWord[17]_i_1_n_0 ;
  wire \RxWord[18]_i_1_n_0 ;
  wire \RxWord[18]_i_2_n_0 ;
  wire \RxWord[19]_i_1_n_0 ;
  wire \RxWord[19]_i_2_n_0 ;
  wire \RxWord[1]_i_1_n_0 ;
  wire \RxWord[20]_i_1_n_0 ;
  wire \RxWord[20]_i_2_n_0 ;
  wire \RxWord[21]_i_1_n_0 ;
  wire \RxWord[21]_i_2_n_0 ;
  wire \RxWord[22]_i_1_n_0 ;
  wire \RxWord[22]_i_2_n_0 ;
  wire \RxWord[23]_i_1_n_0 ;
  wire \RxWord[23]_i_2_n_0 ;
  wire \RxWord[23]_i_3_n_0 ;
  wire \RxWord[24]_i_1_n_0 ;
  wire \RxWord[24]_i_2_n_0 ;
  wire \RxWord[25]_i_1_n_0 ;
  wire \RxWord[25]_i_2_n_0 ;
  wire \RxWord[25]_i_3_n_0 ;
  wire \RxWord[2]_i_1_n_0 ;
  wire \RxWord[3]_i_1_n_0 ;
  wire \RxWord[4]_i_1_n_0 ;
  wire \RxWord[5]_i_1_n_0 ;
  wire \RxWord[6]_i_1_n_0 ;
  wire \RxWord[7]_i_1_n_0 ;
  wire \RxWord[7]_i_2_n_0 ;
  wire \RxWord[8]_i_1_n_0 ;
  wire \RxWord[9]_i_1_n_0 ;
  wire \RxWord_reg[25]_0 ;
  wire SCLK_i_1_n_0;
  wire SPI_BUSY;
  wire [1:0]\SPI_DATA_TX_reg[1] ;
  wire \SPI_DATA_TX_reg[2] ;
  wire \SPI_DATA_TX_reg[6] ;
  wire SPI_START;
  wire [0:0]SPI_START_reg;
  wire SampleIn;
  wire \TxIndex[0]_i_1_n_0 ;
  wire \TxIndex[1]_i_1_n_0 ;
  wire \TxIndex[2]_i_1_n_0 ;
  wire \TxIndex[3]_i_1_n_0 ;
  wire \TxIndex[4]_i_2_n_0 ;
  wire \TxIndex_reg[3]_0 ;
  wire [4:4]TxIndex_reg__0;
  (* RTL_KEEP = "yes" *) wire [2:0]clockstate;
  wire [15:0]\host_spi_timing_reg[15] ;
  wire io_vita_spi_miso;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__0_n_4;
  wire minusOp_carry__0_n_5;
  wire minusOp_carry__0_n_6;
  wire minusOp_carry__0_n_7;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__1_n_4;
  wire minusOp_carry__1_n_5;
  wire minusOp_carry__1_n_6;
  wire minusOp_carry__1_n_7;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__2_n_5;
  wire minusOp_carry__2_n_6;
  wire minusOp_carry__2_n_7;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_4;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire p_0_in;
  wire p_1_in;
  wire s00_axi_aclk;
  wire vita_spi_mosi_o;
  wire vita_spi_sclk_o;
  wire vita_spi_ssel_n_o;
  wire [3:0]\NLW_Counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_Counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h3F00FE02)) 
    \/i_ 
       (.I0(SPI_START),
        .I1(clockstate[2]),
        .I2(clockstate[1]),
        .I3(p_0_in),
        .I4(clockstate[0]),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h0010111000100010)) 
    \/i___0 
       (.I0(clockstate[0]),
        .I1(clockstate[1]),
        .I2(SPI_START),
        .I3(clockstate[2]),
        .I4(p_1_in),
        .I5(p_0_in),
        .O(ClockCounter_0));
  LUT5 #(
    .INIT(32'h00440400)) 
    \/i___1 
       (.I0(clockstate[0]),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(clockstate[2]),
        .I4(clockstate[1]),
        .O(ClockOut));
  LUT1 #(
    .INIT(2'h1)) 
    \/i___2 
       (.I0(p_1_in),
        .O(ClockOut2_in));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    BUSY_i_1
       (.I0(SPI_START),
        .I1(clockstate[1]),
        .I2(clockstate[0]),
        .I3(clockstate[2]),
        .I4(SPI_BUSY),
        .O(BUSY_i_1_n_0));
  FDCE BUSY_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(BUSY_i_1_n_0),
        .Q(SPI_BUSY));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    CS_i_1
       (.I0(clockstate[2]),
        .I1(clockstate[1]),
        .I2(clockstate[0]),
        .I3(p_0_in),
        .I4(vita_spi_ssel_n_o),
        .O(CS_i_1_n_0));
  FDPE CS_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(CS_i_1_n_0),
        .PRE(AR),
        .Q(vita_spi_ssel_n_o));
  LUT3 #(
    .INIT(8'h02)) 
    \ClockCounter[0]_i_1 
       (.I0(clockstate[2]),
        .I1(ClockCounter[0]),
        .I2(clockstate[1]),
        .O(\ClockCounter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[10]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry__1_n_6),
        .I2(clockstate[1]),
        .O(\ClockCounter[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[11]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry__1_n_5),
        .I2(clockstate[1]),
        .O(\ClockCounter[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[12]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry__1_n_4),
        .I2(clockstate[1]),
        .O(\ClockCounter[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[13]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry__2_n_7),
        .I2(clockstate[1]),
        .O(\ClockCounter[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[14]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry__2_n_6),
        .I2(clockstate[1]),
        .O(\ClockCounter[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[15]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry__2_n_5),
        .I2(clockstate[1]),
        .O(\ClockCounter[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[1]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry_n_7),
        .I2(clockstate[1]),
        .O(\ClockCounter[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[2]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry_n_6),
        .I2(clockstate[1]),
        .O(\ClockCounter[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \ClockCounter[3]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry_n_5),
        .I2(clockstate[1]),
        .O(\ClockCounter[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \ClockCounter[4]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry_n_4),
        .I2(clockstate[1]),
        .O(\ClockCounter[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[5]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry__0_n_7),
        .I2(clockstate[1]),
        .O(\ClockCounter[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[6]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry__0_n_6),
        .I2(clockstate[1]),
        .O(\ClockCounter[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[7]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry__0_n_5),
        .I2(clockstate[1]),
        .O(\ClockCounter[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[8]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry__0_n_4),
        .I2(clockstate[1]),
        .O(\ClockCounter[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ClockCounter[9]_i_1 
       (.I0(clockstate[2]),
        .I1(minusOp_carry__1_n_7),
        .I2(clockstate[1]),
        .O(\ClockCounter[9]_i_1_n_0 ));
  FDCE \ClockCounter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[0]_i_1_n_0 ),
        .Q(ClockCounter[0]));
  FDCE \ClockCounter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[10]_i_1_n_0 ),
        .Q(ClockCounter[10]));
  FDCE \ClockCounter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[11]_i_1_n_0 ),
        .Q(ClockCounter[11]));
  FDCE \ClockCounter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[12]_i_1_n_0 ),
        .Q(ClockCounter[12]));
  FDCE \ClockCounter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[13]_i_1_n_0 ),
        .Q(ClockCounter[13]));
  FDCE \ClockCounter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[14]_i_1_n_0 ),
        .Q(ClockCounter[14]));
  FDCE \ClockCounter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[15]_i_1_n_0 ),
        .Q(p_1_in));
  FDCE \ClockCounter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[1]_i_1_n_0 ),
        .Q(ClockCounter[1]));
  FDCE \ClockCounter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[2]_i_1_n_0 ),
        .Q(ClockCounter[2]));
  FDCE \ClockCounter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[3]_i_1_n_0 ),
        .Q(ClockCounter[3]));
  FDCE \ClockCounter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[4]_i_1_n_0 ),
        .Q(ClockCounter[4]));
  FDCE \ClockCounter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[5]_i_1_n_0 ),
        .Q(ClockCounter[5]));
  FDCE \ClockCounter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[6]_i_1_n_0 ),
        .Q(ClockCounter[6]));
  FDCE \ClockCounter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[7]_i_1_n_0 ),
        .Q(ClockCounter[7]));
  FDCE \ClockCounter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[8]_i_1_n_0 ),
        .Q(ClockCounter[8]));
  FDCE \ClockCounter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ClockCounter_0),
        .CLR(AR),
        .D(\ClockCounter[9]_i_1_n_0 ),
        .Q(ClockCounter[9]));
  FDCE ClockOut_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ClockOut),
        .Q(MOSI_reg_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[0]_i_2 
       (.I0(\host_spi_timing_reg[15] [3]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[3] ),
        .O(\Counter[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[0]_i_3 
       (.I0(\host_spi_timing_reg[15] [2]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[2] ),
        .O(\Counter[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[0]_i_4 
       (.I0(\host_spi_timing_reg[15] [1]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[1] ),
        .O(\Counter[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[0]_i_5 
       (.I0(\host_spi_timing_reg[15] [0]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[0] ),
        .O(\Counter[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[0]_i_6 
       (.I0(\Counter_reg_n_0_[3] ),
        .I1(\host_spi_timing_reg[15] [3]),
        .I2(p_0_in),
        .O(\Counter[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[0]_i_7 
       (.I0(\Counter_reg_n_0_[2] ),
        .I1(\host_spi_timing_reg[15] [2]),
        .I2(p_0_in),
        .O(\Counter[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[0]_i_8 
       (.I0(\Counter_reg_n_0_[1] ),
        .I1(\host_spi_timing_reg[15] [1]),
        .I2(p_0_in),
        .O(\Counter[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[0]_i_9 
       (.I0(\Counter_reg_n_0_[0] ),
        .I1(\host_spi_timing_reg[15] [0]),
        .I2(p_0_in),
        .O(\Counter[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[12]_i_2 
       (.I0(\host_spi_timing_reg[15] [15]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[15] ),
        .O(\Counter[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[12]_i_3 
       (.I0(\host_spi_timing_reg[15] [14]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[14] ),
        .O(\Counter[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[12]_i_4 
       (.I0(\host_spi_timing_reg[15] [13]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[13] ),
        .O(\Counter[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[12]_i_5 
       (.I0(\host_spi_timing_reg[15] [12]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[12] ),
        .O(\Counter[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[12]_i_6 
       (.I0(\Counter_reg_n_0_[15] ),
        .I1(\host_spi_timing_reg[15] [15]),
        .I2(p_0_in),
        .O(\Counter[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[12]_i_7 
       (.I0(\Counter_reg_n_0_[14] ),
        .I1(\host_spi_timing_reg[15] [14]),
        .I2(p_0_in),
        .O(\Counter[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[12]_i_8 
       (.I0(\Counter_reg_n_0_[13] ),
        .I1(\host_spi_timing_reg[15] [13]),
        .I2(p_0_in),
        .O(\Counter[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[12]_i_9 
       (.I0(\Counter_reg_n_0_[12] ),
        .I1(\host_spi_timing_reg[15] [12]),
        .I2(p_0_in),
        .O(\Counter[12]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Counter[16]_i_2 
       (.I0(p_0_in),
        .O(\Counter[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[4]_i_2 
       (.I0(\host_spi_timing_reg[15] [7]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[7] ),
        .O(\Counter[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[4]_i_3 
       (.I0(\host_spi_timing_reg[15] [6]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[6] ),
        .O(\Counter[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[4]_i_4 
       (.I0(\host_spi_timing_reg[15] [5]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[5] ),
        .O(\Counter[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[4]_i_5 
       (.I0(\host_spi_timing_reg[15] [4]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[4] ),
        .O(\Counter[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[4]_i_6 
       (.I0(\Counter_reg_n_0_[7] ),
        .I1(\host_spi_timing_reg[15] [7]),
        .I2(p_0_in),
        .O(\Counter[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[4]_i_7 
       (.I0(\Counter_reg_n_0_[6] ),
        .I1(\host_spi_timing_reg[15] [6]),
        .I2(p_0_in),
        .O(\Counter[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[4]_i_8 
       (.I0(\Counter_reg_n_0_[5] ),
        .I1(\host_spi_timing_reg[15] [5]),
        .I2(p_0_in),
        .O(\Counter[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[4]_i_9 
       (.I0(\Counter_reg_n_0_[4] ),
        .I1(\host_spi_timing_reg[15] [4]),
        .I2(p_0_in),
        .O(\Counter[4]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[8]_i_2 
       (.I0(\host_spi_timing_reg[15] [11]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[11] ),
        .O(\Counter[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[8]_i_3 
       (.I0(\host_spi_timing_reg[15] [10]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[10] ),
        .O(\Counter[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[8]_i_4 
       (.I0(\host_spi_timing_reg[15] [9]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[9] ),
        .O(\Counter[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Counter[8]_i_5 
       (.I0(\host_spi_timing_reg[15] [8]),
        .I1(p_0_in),
        .I2(\Counter_reg_n_0_[8] ),
        .O(\Counter[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[8]_i_6 
       (.I0(\Counter_reg_n_0_[11] ),
        .I1(\host_spi_timing_reg[15] [11]),
        .I2(p_0_in),
        .O(\Counter[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[8]_i_7 
       (.I0(\Counter_reg_n_0_[10] ),
        .I1(\host_spi_timing_reg[15] [10]),
        .I2(p_0_in),
        .O(\Counter[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[8]_i_8 
       (.I0(\Counter_reg_n_0_[9] ),
        .I1(\host_spi_timing_reg[15] [9]),
        .I2(p_0_in),
        .O(\Counter[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \Counter[8]_i_9 
       (.I0(\Counter_reg_n_0_[8] ),
        .I1(\host_spi_timing_reg[15] [8]),
        .I2(p_0_in),
        .O(\Counter[8]_i_9_n_0 ));
  FDCE \Counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[0]_i_1_n_7 ),
        .Q(\Counter_reg_n_0_[0] ));
  CARRY4 \Counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\Counter_reg[0]_i_1_n_0 ,\Counter_reg[0]_i_1_n_1 ,\Counter_reg[0]_i_1_n_2 ,\Counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Counter[0]_i_2_n_0 ,\Counter[0]_i_3_n_0 ,\Counter[0]_i_4_n_0 ,\Counter[0]_i_5_n_0 }),
        .O({\Counter_reg[0]_i_1_n_4 ,\Counter_reg[0]_i_1_n_5 ,\Counter_reg[0]_i_1_n_6 ,\Counter_reg[0]_i_1_n_7 }),
        .S({\Counter[0]_i_6_n_0 ,\Counter[0]_i_7_n_0 ,\Counter[0]_i_8_n_0 ,\Counter[0]_i_9_n_0 }));
  FDCE \Counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[8]_i_1_n_5 ),
        .Q(\Counter_reg_n_0_[10] ));
  FDCE \Counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[8]_i_1_n_4 ),
        .Q(\Counter_reg_n_0_[11] ));
  FDCE \Counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[12]_i_1_n_7 ),
        .Q(\Counter_reg_n_0_[12] ));
  CARRY4 \Counter_reg[12]_i_1 
       (.CI(\Counter_reg[8]_i_1_n_0 ),
        .CO({\Counter_reg[12]_i_1_n_0 ,\Counter_reg[12]_i_1_n_1 ,\Counter_reg[12]_i_1_n_2 ,\Counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Counter[12]_i_2_n_0 ,\Counter[12]_i_3_n_0 ,\Counter[12]_i_4_n_0 ,\Counter[12]_i_5_n_0 }),
        .O({\Counter_reg[12]_i_1_n_4 ,\Counter_reg[12]_i_1_n_5 ,\Counter_reg[12]_i_1_n_6 ,\Counter_reg[12]_i_1_n_7 }),
        .S({\Counter[12]_i_6_n_0 ,\Counter[12]_i_7_n_0 ,\Counter[12]_i_8_n_0 ,\Counter[12]_i_9_n_0 }));
  FDCE \Counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[12]_i_1_n_6 ),
        .Q(\Counter_reg_n_0_[13] ));
  FDCE \Counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[12]_i_1_n_5 ),
        .Q(\Counter_reg_n_0_[14] ));
  FDCE \Counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[12]_i_1_n_4 ),
        .Q(\Counter_reg_n_0_[15] ));
  FDPE \Counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\Counter_reg[16]_i_1_n_7 ),
        .PRE(AR),
        .Q(p_0_in));
  CARRY4 \Counter_reg[16]_i_1 
       (.CI(\Counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_Counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Counter_reg[16]_i_1_O_UNCONNECTED [3:1],\Counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\Counter[16]_i_2_n_0 }));
  FDCE \Counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[0]_i_1_n_6 ),
        .Q(\Counter_reg_n_0_[1] ));
  FDCE \Counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[0]_i_1_n_5 ),
        .Q(\Counter_reg_n_0_[2] ));
  FDCE \Counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[0]_i_1_n_4 ),
        .Q(\Counter_reg_n_0_[3] ));
  FDCE \Counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[4]_i_1_n_7 ),
        .Q(\Counter_reg_n_0_[4] ));
  CARRY4 \Counter_reg[4]_i_1 
       (.CI(\Counter_reg[0]_i_1_n_0 ),
        .CO({\Counter_reg[4]_i_1_n_0 ,\Counter_reg[4]_i_1_n_1 ,\Counter_reg[4]_i_1_n_2 ,\Counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Counter[4]_i_2_n_0 ,\Counter[4]_i_3_n_0 ,\Counter[4]_i_4_n_0 ,\Counter[4]_i_5_n_0 }),
        .O({\Counter_reg[4]_i_1_n_4 ,\Counter_reg[4]_i_1_n_5 ,\Counter_reg[4]_i_1_n_6 ,\Counter_reg[4]_i_1_n_7 }),
        .S({\Counter[4]_i_6_n_0 ,\Counter[4]_i_7_n_0 ,\Counter[4]_i_8_n_0 ,\Counter[4]_i_9_n_0 }));
  FDCE \Counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[4]_i_1_n_6 ),
        .Q(\Counter_reg_n_0_[5] ));
  FDCE \Counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[4]_i_1_n_5 ),
        .Q(\Counter_reg_n_0_[6] ));
  FDCE \Counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[4]_i_1_n_4 ),
        .Q(\Counter_reg_n_0_[7] ));
  FDCE \Counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[8]_i_1_n_7 ),
        .Q(\Counter_reg_n_0_[8] ));
  CARRY4 \Counter_reg[8]_i_1 
       (.CI(\Counter_reg[4]_i_1_n_0 ),
        .CO({\Counter_reg[8]_i_1_n_0 ,\Counter_reg[8]_i_1_n_1 ,\Counter_reg[8]_i_1_n_2 ,\Counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Counter[8]_i_2_n_0 ,\Counter[8]_i_3_n_0 ,\Counter[8]_i_4_n_0 ,\Counter[8]_i_5_n_0 }),
        .O({\Counter_reg[8]_i_1_n_4 ,\Counter_reg[8]_i_1_n_5 ,\Counter_reg[8]_i_1_n_6 ,\Counter_reg[8]_i_1_n_7 }),
        .S({\Counter[8]_i_6_n_0 ,\Counter[8]_i_7_n_0 ,\Counter[8]_i_8_n_0 ,\Counter[8]_i_9_n_0 }));
  FDCE \Counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Counter_reg[8]_i_1_n_6 ),
        .Q(\Counter_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h1055FFFF10550000)) 
    \FSM_sequential_clockstate[0]_i_1 
       (.I0(clockstate[0]),
        .I1(clockstate[1]),
        .I2(p_1_in),
        .I3(clockstate[2]),
        .I4(\/i__n_0 ),
        .I5(clockstate[0]),
        .O(\FSM_sequential_clockstate[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0616FFFF06160000)) 
    \FSM_sequential_clockstate[1]_i_1 
       (.I0(clockstate[0]),
        .I1(clockstate[1]),
        .I2(clockstate[2]),
        .I3(p_1_in),
        .I4(\/i__n_0 ),
        .I5(clockstate[1]),
        .O(\FSM_sequential_clockstate[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCDFD3000CC00)) 
    \FSM_sequential_clockstate[2]_i_1 
       (.I0(SPI_START),
        .I1(clockstate[2]),
        .I2(clockstate[1]),
        .I3(p_0_in),
        .I4(clockstate[0]),
        .I5(clockstate[2]),
        .O(\FSM_sequential_clockstate[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_clockstate_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_clockstate[0]_i_1_n_0 ),
        .Q(clockstate[0]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_clockstate_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_clockstate[1]_i_1_n_0 ),
        .Q(clockstate[1]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_clockstate_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_clockstate[2]_i_1_n_0 ),
        .Q(clockstate[2]));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    MOSI_i_1
       (.I0(MOSI_i_2_n_0),
        .I1(TxIndex_reg__0),
        .I2(\TxIndex_reg[3]_0 ),
        .I3(MOSI_reg_0),
        .I4(SPI_START),
        .I5(vita_spi_mosi_o),
        .O(MOSI_i_1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    MOSI_i_2
       (.I0(MOSI_i_4_n_0),
        .I1(Q[3]),
        .I2(\SPI_DATA_TX_reg[2] ),
        .I3(Q[2]),
        .I4(\SPI_DATA_TX_reg[6] ),
        .O(MOSI_i_2_n_0));
  LUT5 #(
    .INIT(32'h11100010)) 
    MOSI_i_4
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\SPI_DATA_TX_reg[1] [1]),
        .I3(Q[0]),
        .I4(\SPI_DATA_TX_reg[1] [0]),
        .O(MOSI_i_4_n_0));
  FDCE MOSI_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(MOSI_i_1_n_0),
        .Q(vita_spi_mosi_o));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \RxIndex[0]_i_1 
       (.I0(RxIndex_reg__0[0]),
        .I1(SPI_START),
        .O(\RxIndex[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \RxIndex[1]_i_1 
       (.I0(RxIndex_reg__0[1]),
        .I1(RxIndex_reg__0[0]),
        .I2(SPI_START),
        .O(\RxIndex[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \RxIndex[2]_i_1 
       (.I0(RxIndex_reg__0[2]),
        .I1(RxIndex_reg__0[1]),
        .I2(RxIndex_reg__0[0]),
        .I3(SPI_START),
        .O(\RxIndex[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \RxIndex[3]_i_1 
       (.I0(RxIndex_reg__0[3]),
        .I1(RxIndex_reg__0[1]),
        .I2(RxIndex_reg__0[0]),
        .I3(RxIndex_reg__0[2]),
        .I4(SPI_START),
        .O(\RxIndex[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \RxIndex[4]_i_2 
       (.I0(RxIndex_reg__0[4]),
        .I1(RxIndex_reg__0[3]),
        .I2(RxIndex_reg__0[2]),
        .I3(RxIndex_reg__0[0]),
        .I4(RxIndex_reg__0[1]),
        .I5(SPI_START),
        .O(\RxIndex[4]_i_2_n_0 ));
  FDCE \RxIndex_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\RxIndex[0]_i_1_n_0 ),
        .Q(RxIndex_reg__0[0]));
  FDCE \RxIndex_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\RxIndex[1]_i_1_n_0 ),
        .Q(RxIndex_reg__0[1]));
  FDCE \RxIndex_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\RxIndex[2]_i_1_n_0 ),
        .Q(RxIndex_reg__0[2]));
  FDCE \RxIndex_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\RxIndex[3]_i_1_n_0 ),
        .Q(RxIndex_reg__0[3]));
  FDCE \RxIndex_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\RxIndex[4]_i_2_n_0 ),
        .Q(RxIndex_reg__0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[0]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[7]_i_2_n_0 ),
        .I3(\RxWord[24]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[25]),
        .O(\RxWord[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[10]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[15]_i_2_n_0 ),
        .I3(\RxWord[18]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[15]),
        .O(\RxWord[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[11]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[15]_i_2_n_0 ),
        .I3(\RxWord[19]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[14]),
        .O(\RxWord[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[12]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[15]_i_2_n_0 ),
        .I3(\RxWord[20]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[13]),
        .O(\RxWord[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[13]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[15]_i_2_n_0 ),
        .I3(\RxWord[21]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[12]),
        .O(\RxWord[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[14]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[15]_i_2_n_0 ),
        .I3(\RxWord[22]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[11]),
        .O(\RxWord[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[15]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[15]_i_2_n_0 ),
        .I3(\RxWord[23]_i_3_n_0 ),
        .I4(SPI_START),
        .I5(D[10]),
        .O(\RxWord[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \RxWord[15]_i_2 
       (.I0(RxIndex_reg__0[4]),
        .I1(RxIndex_reg__0[3]),
        .O(\RxWord[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[16]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[23]_i_2_n_0 ),
        .I3(\RxWord[24]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[9]),
        .O(\RxWord[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[17]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[23]_i_2_n_0 ),
        .I3(\RxWord[25]_i_3_n_0 ),
        .I4(SPI_START),
        .I5(D[8]),
        .O(\RxWord[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[18]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[23]_i_2_n_0 ),
        .I3(\RxWord[18]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[7]),
        .O(\RxWord[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \RxWord[18]_i_2 
       (.I0(RxIndex_reg__0[2]),
        .I1(RxIndex_reg__0[0]),
        .I2(RxIndex_reg__0[1]),
        .O(\RxWord[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[19]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[23]_i_2_n_0 ),
        .I3(\RxWord[19]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[6]),
        .O(\RxWord[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \RxWord[19]_i_2 
       (.I0(RxIndex_reg__0[2]),
        .I1(RxIndex_reg__0[0]),
        .I2(RxIndex_reg__0[1]),
        .O(\RxWord[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[1]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[7]_i_2_n_0 ),
        .I3(\RxWord[25]_i_3_n_0 ),
        .I4(SPI_START),
        .I5(D[24]),
        .O(\RxWord[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[20]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[23]_i_2_n_0 ),
        .I3(\RxWord[20]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[5]),
        .O(\RxWord[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \RxWord[20]_i_2 
       (.I0(RxIndex_reg__0[2]),
        .I1(RxIndex_reg__0[0]),
        .I2(RxIndex_reg__0[1]),
        .O(\RxWord[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[21]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[23]_i_2_n_0 ),
        .I3(\RxWord[21]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[4]),
        .O(\RxWord[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \RxWord[21]_i_2 
       (.I0(RxIndex_reg__0[2]),
        .I1(RxIndex_reg__0[1]),
        .I2(RxIndex_reg__0[0]),
        .O(\RxWord[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[22]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[23]_i_2_n_0 ),
        .I3(\RxWord[22]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[3]),
        .O(\RxWord[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \RxWord[22]_i_2 
       (.I0(RxIndex_reg__0[2]),
        .I1(RxIndex_reg__0[0]),
        .I2(RxIndex_reg__0[1]),
        .O(\RxWord[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[23]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[23]_i_2_n_0 ),
        .I3(\RxWord[23]_i_3_n_0 ),
        .I4(SPI_START),
        .I5(D[2]),
        .O(\RxWord[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \RxWord[23]_i_2 
       (.I0(RxIndex_reg__0[3]),
        .I1(RxIndex_reg__0[4]),
        .O(\RxWord[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \RxWord[23]_i_3 
       (.I0(RxIndex_reg__0[2]),
        .I1(RxIndex_reg__0[0]),
        .I2(RxIndex_reg__0[1]),
        .O(\RxWord[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[24]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[25]_i_2_n_0 ),
        .I3(\RxWord[24]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[1]),
        .O(\RxWord[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \RxWord[24]_i_2 
       (.I0(RxIndex_reg__0[2]),
        .I1(RxIndex_reg__0[0]),
        .I2(RxIndex_reg__0[1]),
        .O(\RxWord[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[25]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[25]_i_2_n_0 ),
        .I3(\RxWord[25]_i_3_n_0 ),
        .I4(SPI_START),
        .I5(D[0]),
        .O(\RxWord[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \RxWord[25]_i_2 
       (.I0(RxIndex_reg__0[4]),
        .I1(RxIndex_reg__0[3]),
        .O(\RxWord[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \RxWord[25]_i_3 
       (.I0(RxIndex_reg__0[2]),
        .I1(RxIndex_reg__0[1]),
        .I2(RxIndex_reg__0[0]),
        .O(\RxWord[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[2]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[7]_i_2_n_0 ),
        .I3(\RxWord[18]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[23]),
        .O(\RxWord[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[3]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[7]_i_2_n_0 ),
        .I3(\RxWord[19]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[22]),
        .O(\RxWord[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[4]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[7]_i_2_n_0 ),
        .I3(\RxWord[20]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[21]),
        .O(\RxWord[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[5]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[7]_i_2_n_0 ),
        .I3(\RxWord[21]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[20]),
        .O(\RxWord[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[6]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[7]_i_2_n_0 ),
        .I3(\RxWord[22]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[19]),
        .O(\RxWord[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[7]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[7]_i_2_n_0 ),
        .I3(\RxWord[23]_i_3_n_0 ),
        .I4(SPI_START),
        .I5(D[18]),
        .O(\RxWord[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RxWord[7]_i_2 
       (.I0(RxIndex_reg__0[4]),
        .I1(RxIndex_reg__0[3]),
        .O(\RxWord[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[8]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[15]_i_2_n_0 ),
        .I3(\RxWord[24]_i_2_n_0 ),
        .I4(SPI_START),
        .I5(D[17]),
        .O(\RxWord[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \RxWord[9]_i_1 
       (.I0(io_vita_spi_miso),
        .I1(\RxWord_reg[25]_0 ),
        .I2(\RxWord[15]_i_2_n_0 ),
        .I3(\RxWord[25]_i_3_n_0 ),
        .I4(SPI_START),
        .I5(D[16]),
        .O(\RxWord[9]_i_1_n_0 ));
  FDCE \RxWord_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[0]_i_1_n_0 ),
        .Q(D[25]));
  FDCE \RxWord_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[10]_i_1_n_0 ),
        .Q(D[15]));
  FDCE \RxWord_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[11]_i_1_n_0 ),
        .Q(D[14]));
  FDCE \RxWord_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[12]_i_1_n_0 ),
        .Q(D[13]));
  FDCE \RxWord_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[13]_i_1_n_0 ),
        .Q(D[12]));
  FDCE \RxWord_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[14]_i_1_n_0 ),
        .Q(D[11]));
  FDCE \RxWord_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[15]_i_1_n_0 ),
        .Q(D[10]));
  FDCE \RxWord_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[16]_i_1_n_0 ),
        .Q(D[9]));
  FDCE \RxWord_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[17]_i_1_n_0 ),
        .Q(D[8]));
  FDCE \RxWord_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[18]_i_1_n_0 ),
        .Q(D[7]));
  FDCE \RxWord_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[19]_i_1_n_0 ),
        .Q(D[6]));
  FDCE \RxWord_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[1]_i_1_n_0 ),
        .Q(D[24]));
  FDCE \RxWord_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[20]_i_1_n_0 ),
        .Q(D[5]));
  FDCE \RxWord_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[21]_i_1_n_0 ),
        .Q(D[4]));
  FDCE \RxWord_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[22]_i_1_n_0 ),
        .Q(D[3]));
  FDCE \RxWord_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[23]_i_1_n_0 ),
        .Q(D[2]));
  FDCE \RxWord_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[24]_i_1_n_0 ),
        .Q(D[1]));
  FDCE \RxWord_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[25]_i_1_n_0 ),
        .Q(D[0]));
  FDCE \RxWord_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[2]_i_1_n_0 ),
        .Q(D[23]));
  FDCE \RxWord_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[3]_i_1_n_0 ),
        .Q(D[22]));
  FDCE \RxWord_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[4]_i_1_n_0 ),
        .Q(D[21]));
  FDCE \RxWord_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[5]_i_1_n_0 ),
        .Q(D[20]));
  FDCE \RxWord_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[6]_i_1_n_0 ),
        .Q(D[19]));
  FDCE \RxWord_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[7]_i_1_n_0 ),
        .Q(D[18]));
  FDCE \RxWord_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[8]_i_1_n_0 ),
        .Q(D[17]));
  FDCE \RxWord_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\RxWord[9]_i_1_n_0 ),
        .Q(D[16]));
  LUT5 #(
    .INIT(32'hFFD70880)) 
    SCLK_i_1
       (.I0(p_0_in),
        .I1(clockstate[1]),
        .I2(clockstate[2]),
        .I3(clockstate[0]),
        .I4(vita_spi_sclk_o),
        .O(SCLK_i_1_n_0));
  FDCE SCLK_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(SCLK_i_1_n_0),
        .Q(vita_spi_sclk_o));
  LUT4 #(
    .INIT(16'h1000)) 
    SampleIn_i_1
       (.I0(clockstate[1]),
        .I1(clockstate[0]),
        .I2(p_0_in),
        .I3(clockstate[2]),
        .O(SampleIn));
  FDCE SampleIn_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(SampleIn),
        .Q(\RxWord_reg[25]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \TxIndex[0]_i_1 
       (.I0(Q[0]),
        .I1(SPI_START),
        .O(\TxIndex[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \TxIndex[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(SPI_START),
        .O(\TxIndex[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \TxIndex[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(SPI_START),
        .O(\TxIndex[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \TxIndex[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(SPI_START),
        .O(\TxIndex[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \TxIndex[4]_i_2 
       (.I0(TxIndex_reg__0),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(SPI_START),
        .O(\TxIndex[4]_i_2_n_0 ));
  FDCE \TxIndex_reg[0] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_reg),
        .CLR(AR),
        .D(\TxIndex[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \TxIndex_reg[1] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_reg),
        .CLR(AR),
        .D(\TxIndex[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \TxIndex_reg[2] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_reg),
        .CLR(AR),
        .D(\TxIndex[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \TxIndex_reg[3] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_reg),
        .CLR(AR),
        .D(\TxIndex[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \TxIndex_reg[4] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_reg),
        .CLR(AR),
        .D(\TxIndex[4]_i_2_n_0 ),
        .Q(TxIndex_reg__0));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(ClockCounter[0]),
        .DI(ClockCounter[4:1]),
        .O({minusOp_carry_n_4,minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(ClockCounter[8:5]),
        .O({minusOp_carry__0_n_4,minusOp_carry__0_n_5,minusOp_carry__0_n_6,minusOp_carry__0_n_7}),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(ClockCounter[8]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(ClockCounter[7]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(ClockCounter[6]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(ClockCounter[5]),
        .O(minusOp_carry__0_i_4_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(ClockCounter[12:9]),
        .O({minusOp_carry__1_n_4,minusOp_carry__1_n_5,minusOp_carry__1_n_6,minusOp_carry__1_n_7}),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(ClockCounter[12]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(ClockCounter[11]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(ClockCounter[10]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(ClockCounter[9]),
        .O(minusOp_carry__1_i_4_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({NLW_minusOp_carry__2_CO_UNCONNECTED[3:2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ClockCounter[14:13]}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp_carry__2_n_5,minusOp_carry__2_n_6,minusOp_carry__2_n_7}),
        .S({1'b0,ClockOut2_in,minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(ClockCounter[14]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(ClockCounter[13]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(ClockCounter[4]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(ClockCounter[3]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(ClockCounter[2]),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(ClockCounter[1]),
        .O(minusOp_carry_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "spi_seq" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_spi_seq
   (SPI_START,
    wr_en,
    rd_en,
    D,
    E,
    \TxIndex_reg[4] ,
    MOSI_reg,
    MOSI_reg_0,
    MOSI_reg_1,
    MOSI_reg_2,
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] ,
    s00_axi_aclk,
    AR,
    dout,
    full,
    SampleIn_reg,
    ClockOut_reg,
    Q,
    \RxWord_reg[0] ,
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] ,
    empty,
    SPI_BUSY);
  output SPI_START;
  output wr_en;
  output rd_en;
  output [0:0]D;
  output [0:0]E;
  output [0:0]\TxIndex_reg[4] ;
  output MOSI_reg;
  output [1:0]MOSI_reg_0;
  output MOSI_reg_1;
  output MOSI_reg_2;
  output [25:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] ;
  input s00_axi_aclk;
  input [0:0]AR;
  input [28:0]dout;
  input full;
  input SampleIn_reg;
  input ClockOut_reg;
  input [3:0]Q;
  input [25:0]\RxWord_reg[0] ;
  input [0:0]\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] ;
  input empty;
  input SPI_BUSY;

  wire APP_RDFIFO_EN_i_1_n_0;
  wire APP_WRFIFO_EN_i_1_n_0;
  wire [0:0]AR;
  wire ClockOut_reg;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_spi_seq[0]_i_1_n_0 ;
  wire \FSM_sequential_spi_seq[0]_i_2_n_0 ;
  wire \FSM_sequential_spi_seq[1]_i_1_n_0 ;
  wire \FSM_sequential_spi_seq[2]_i_1_n_0 ;
  wire \FSM_sequential_spi_seq[3]_i_1_n_0 ;
  wire \FSM_sequential_spi_seq[3]_i_2_n_0 ;
  wire MOSI_i_10_n_0;
  wire MOSI_i_11_n_0;
  wire MOSI_i_12_n_0;
  wire MOSI_i_9_n_0;
  wire MOSI_reg;
  wire [1:0]MOSI_reg_0;
  wire MOSI_reg_1;
  wire MOSI_reg_2;
  wire MOSI_reg_i_7_n_0;
  wire MOSI_reg_i_8_n_0;
  wire [3:0]Q;
  wire [25:0]\RxWord_reg[0] ;
  wire SPI_BUSY;
  wire [25:2]SPI_DATA_TX;
  wire SPI_START;
  wire SPI_START_i_1_n_0;
  wire SampleIn_reg;
  wire SpiRw;
  wire [0:0]\TxIndex_reg[4] ;
  wire [28:0]dout;
  wire empty;
  wire full;
  wire [0:0]\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] ;
  wire [25:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] ;
  wire rd_en;
  wire s00_axi_aclk;
  (* RTL_KEEP = "yes" *) wire [3:0]spi_seq;
  wire wr_en;

  LUT5 #(
    .INIT(32'h00001001)) 
    APP_RDFIFO_EN_i_1
       (.I0(spi_seq[0]),
        .I1(spi_seq[2]),
        .I2(spi_seq[1]),
        .I3(spi_seq[3]),
        .I4(empty),
        .O(APP_RDFIFO_EN_i_1_n_0));
  FDCE APP_RDFIFO_EN_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(APP_RDFIFO_EN_i_1_n_0),
        .Q(rd_en));
  FDCE \APP_WRFIFO_DATA_IN_reg[0] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [0]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [0]));
  FDCE \APP_WRFIFO_DATA_IN_reg[10] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [10]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [10]));
  FDCE \APP_WRFIFO_DATA_IN_reg[11] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [11]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [11]));
  FDCE \APP_WRFIFO_DATA_IN_reg[12] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [12]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [12]));
  FDCE \APP_WRFIFO_DATA_IN_reg[13] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [13]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [13]));
  FDCE \APP_WRFIFO_DATA_IN_reg[14] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [14]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [14]));
  FDCE \APP_WRFIFO_DATA_IN_reg[15] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [15]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [15]));
  FDCE \APP_WRFIFO_DATA_IN_reg[16] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [16]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [16]));
  FDCE \APP_WRFIFO_DATA_IN_reg[17] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [17]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [17]));
  FDCE \APP_WRFIFO_DATA_IN_reg[18] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [18]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [18]));
  FDCE \APP_WRFIFO_DATA_IN_reg[19] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [19]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [19]));
  FDCE \APP_WRFIFO_DATA_IN_reg[1] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [1]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [1]));
  FDCE \APP_WRFIFO_DATA_IN_reg[20] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [20]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [20]));
  FDCE \APP_WRFIFO_DATA_IN_reg[21] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [21]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [21]));
  FDCE \APP_WRFIFO_DATA_IN_reg[22] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [22]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [22]));
  FDCE \APP_WRFIFO_DATA_IN_reg[23] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [23]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [23]));
  FDCE \APP_WRFIFO_DATA_IN_reg[24] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [24]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [24]));
  FDCE \APP_WRFIFO_DATA_IN_reg[25] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [25]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [25]));
  FDCE \APP_WRFIFO_DATA_IN_reg[2] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [2]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [2]));
  FDCE \APP_WRFIFO_DATA_IN_reg[3] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [3]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [3]));
  FDCE \APP_WRFIFO_DATA_IN_reg[4] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [4]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [4]));
  FDCE \APP_WRFIFO_DATA_IN_reg[5] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [5]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [5]));
  FDCE \APP_WRFIFO_DATA_IN_reg[6] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [6]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [6]));
  FDCE \APP_WRFIFO_DATA_IN_reg[7] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [7]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [7]));
  FDCE \APP_WRFIFO_DATA_IN_reg[8] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [8]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [8]));
  FDCE \APP_WRFIFO_DATA_IN_reg[9] 
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(\RxWord_reg[0] [9]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] [9]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    APP_WRFIFO_EN_i_1
       (.I0(spi_seq[2]),
        .I1(SPI_BUSY),
        .I2(SpiRw),
        .I3(spi_seq[0]),
        .I4(spi_seq[1]),
        .I5(spi_seq[3]),
        .O(APP_WRFIFO_EN_i_1_n_0));
  FDCE APP_WRFIFO_EN_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(APP_WRFIFO_EN_i_1_n_0),
        .Q(wr_en));
  FDCE ERROR_reg
       (.C(s00_axi_aclk),
        .CE(APP_WRFIFO_EN_i_1_n_0),
        .CLR(AR),
        .D(full),
        .Q(D));
  LUT6 #(
    .INIT(64'h000000005555FF7F)) 
    \FSM_sequential_spi_seq[0]_i_1 
       (.I0(spi_seq[3]),
        .I1(spi_seq[1]),
        .I2(empty),
        .I3(spi_seq[0]),
        .I4(spi_seq[2]),
        .I5(\FSM_sequential_spi_seq[0]_i_2_n_0 ),
        .O(\FSM_sequential_spi_seq[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFD00000000)) 
    \FSM_sequential_spi_seq[0]_i_2 
       (.I0(spi_seq[1]),
        .I1(spi_seq[3]),
        .I2(spi_seq[2]),
        .I3(dout[27]),
        .I4(dout[28]),
        .I5(spi_seq[0]),
        .O(\FSM_sequential_spi_seq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h202333333F3F3030)) 
    \FSM_sequential_spi_seq[1]_i_1 
       (.I0(dout[26]),
        .I1(spi_seq[3]),
        .I2(spi_seq[2]),
        .I3(dout[27]),
        .I4(spi_seq[0]),
        .I5(spi_seq[1]),
        .O(\FSM_sequential_spi_seq[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h006A)) 
    \FSM_sequential_spi_seq[2]_i_1 
       (.I0(spi_seq[2]),
        .I1(spi_seq[0]),
        .I2(spi_seq[1]),
        .I3(spi_seq[3]),
        .O(\FSM_sequential_spi_seq[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0555510F555501)) 
    \FSM_sequential_spi_seq[3]_i_1 
       (.I0(spi_seq[2]),
        .I1(empty),
        .I2(spi_seq[3]),
        .I3(spi_seq[1]),
        .I4(spi_seq[0]),
        .I5(SPI_BUSY),
        .O(\FSM_sequential_spi_seq[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4202)) 
    \FSM_sequential_spi_seq[3]_i_2 
       (.I0(spi_seq[3]),
        .I1(spi_seq[2]),
        .I2(spi_seq[1]),
        .I3(spi_seq[0]),
        .O(\FSM_sequential_spi_seq[3]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_spi_seq_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_spi_seq[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_spi_seq[0]_i_1_n_0 ),
        .Q(spi_seq[0]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_spi_seq_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_spi_seq[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_spi_seq[1]_i_1_n_0 ),
        .Q(spi_seq[1]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_spi_seq_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_spi_seq[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_spi_seq[2]_i_1_n_0 ),
        .Q(spi_seq[2]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_spi_seq_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_spi_seq[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_spi_seq[3]_i_2_n_0 ),
        .Q(spi_seq[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_10
       (.I0(SPI_DATA_TX[18]),
        .I1(SPI_DATA_TX[19]),
        .I2(Q[1]),
        .I3(SPI_DATA_TX[20]),
        .I4(Q[0]),
        .I5(SPI_DATA_TX[21]),
        .O(MOSI_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_11
       (.I0(SPI_DATA_TX[14]),
        .I1(SPI_DATA_TX[15]),
        .I2(Q[1]),
        .I3(SPI_DATA_TX[16]),
        .I4(Q[0]),
        .I5(SPI_DATA_TX[17]),
        .O(MOSI_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_12
       (.I0(SPI_DATA_TX[10]),
        .I1(SPI_DATA_TX[11]),
        .I2(Q[1]),
        .I3(SPI_DATA_TX[12]),
        .I4(Q[0]),
        .I5(SPI_DATA_TX[13]),
        .O(MOSI_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_5
       (.I0(SPI_DATA_TX[2]),
        .I1(SPI_DATA_TX[3]),
        .I2(Q[1]),
        .I3(SPI_DATA_TX[4]),
        .I4(Q[0]),
        .I5(SPI_DATA_TX[5]),
        .O(MOSI_reg_2));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_6
       (.I0(SPI_DATA_TX[6]),
        .I1(SPI_DATA_TX[7]),
        .I2(Q[1]),
        .I3(SPI_DATA_TX[8]),
        .I4(Q[0]),
        .I5(SPI_DATA_TX[9]),
        .O(MOSI_reg_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_9
       (.I0(SPI_DATA_TX[22]),
        .I1(SPI_DATA_TX[23]),
        .I2(Q[1]),
        .I3(SPI_DATA_TX[24]),
        .I4(Q[0]),
        .I5(SPI_DATA_TX[25]),
        .O(MOSI_i_9_n_0));
  MUXF8 MOSI_reg_i_3
       (.I0(MOSI_reg_i_7_n_0),
        .I1(MOSI_reg_i_8_n_0),
        .O(MOSI_reg),
        .S(Q[3]));
  MUXF7 MOSI_reg_i_7
       (.I0(MOSI_i_9_n_0),
        .I1(MOSI_i_10_n_0),
        .O(MOSI_reg_i_7_n_0),
        .S(Q[2]));
  MUXF7 MOSI_reg_i_8
       (.I0(MOSI_i_11_n_0),
        .I1(MOSI_i_12_n_0),
        .O(MOSI_reg_i_8_n_0),
        .S(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RxIndex[4]_i_1 
       (.I0(SPI_START),
        .I1(SampleIn_reg),
        .O(E));
  FDCE \SPI_DATA_TX_reg[0] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[0]),
        .Q(MOSI_reg_0[0]));
  FDCE \SPI_DATA_TX_reg[10] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[10]),
        .Q(SPI_DATA_TX[10]));
  FDCE \SPI_DATA_TX_reg[11] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[11]),
        .Q(SPI_DATA_TX[11]));
  FDCE \SPI_DATA_TX_reg[12] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[12]),
        .Q(SPI_DATA_TX[12]));
  FDCE \SPI_DATA_TX_reg[13] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[13]),
        .Q(SPI_DATA_TX[13]));
  FDCE \SPI_DATA_TX_reg[14] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[14]),
        .Q(SPI_DATA_TX[14]));
  FDCE \SPI_DATA_TX_reg[15] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[15]),
        .Q(SPI_DATA_TX[15]));
  FDCE \SPI_DATA_TX_reg[16] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] ),
        .Q(SPI_DATA_TX[16]));
  FDCE \SPI_DATA_TX_reg[17] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[16]),
        .Q(SPI_DATA_TX[17]));
  FDCE \SPI_DATA_TX_reg[18] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[17]),
        .Q(SPI_DATA_TX[18]));
  FDCE \SPI_DATA_TX_reg[19] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[18]),
        .Q(SPI_DATA_TX[19]));
  FDCE \SPI_DATA_TX_reg[1] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[1]),
        .Q(MOSI_reg_0[1]));
  FDCE \SPI_DATA_TX_reg[20] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[19]),
        .Q(SPI_DATA_TX[20]));
  FDCE \SPI_DATA_TX_reg[21] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[20]),
        .Q(SPI_DATA_TX[21]));
  FDCE \SPI_DATA_TX_reg[22] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[21]),
        .Q(SPI_DATA_TX[22]));
  FDCE \SPI_DATA_TX_reg[23] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[22]),
        .Q(SPI_DATA_TX[23]));
  FDCE \SPI_DATA_TX_reg[24] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[23]),
        .Q(SPI_DATA_TX[24]));
  FDCE \SPI_DATA_TX_reg[25] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[24]),
        .Q(SPI_DATA_TX[25]));
  FDCE \SPI_DATA_TX_reg[2] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[2]),
        .Q(SPI_DATA_TX[2]));
  FDCE \SPI_DATA_TX_reg[3] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[3]),
        .Q(SPI_DATA_TX[3]));
  FDCE \SPI_DATA_TX_reg[4] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[4]),
        .Q(SPI_DATA_TX[4]));
  FDCE \SPI_DATA_TX_reg[5] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[5]),
        .Q(SPI_DATA_TX[5]));
  FDCE \SPI_DATA_TX_reg[6] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[6]),
        .Q(SPI_DATA_TX[6]));
  FDCE \SPI_DATA_TX_reg[7] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[7]),
        .Q(SPI_DATA_TX[7]));
  FDCE \SPI_DATA_TX_reg[8] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[8]),
        .Q(SPI_DATA_TX[8]));
  FDCE \SPI_DATA_TX_reg[9] 
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[9]),
        .Q(SPI_DATA_TX[9]));
  LUT5 #(
    .INIT(32'h00400000)) 
    SPI_START_i_1
       (.I0(spi_seq[3]),
        .I1(spi_seq[1]),
        .I2(spi_seq[0]),
        .I3(dout[26]),
        .I4(spi_seq[2]),
        .O(SPI_START_i_1_n_0));
  FDCE SPI_START_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(SPI_START_i_1_n_0),
        .Q(SPI_START));
  FDCE SpiRw_reg
       (.C(s00_axi_aclk),
        .CE(SPI_START_i_1_n_0),
        .CLR(AR),
        .D(dout[25]),
        .Q(SpiRw));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \TxIndex[4]_i_1 
       (.I0(SPI_START),
        .I1(ClockOut_reg),
        .O(\TxIndex_reg[4] ));
endmodule

(* ORIG_REF_NAME = "spi_top" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_spi_top
   (wr_en,
    rd_en,
    D,
    vita_spi_sclk_o,
    vita_spi_ssel_n_o,
    vita_spi_mosi_o,
    Q,
    s00_axi_aclk,
    AR,
    dout,
    full,
    \host_spi_timing_reg[15] ,
    io_vita_spi_miso,
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] ,
    empty);
  output wr_en;
  output rd_en;
  output [0:0]D;
  output vita_spi_sclk_o;
  output vita_spi_ssel_n_o;
  output vita_spi_mosi_o;
  output [25:0]Q;
  input s00_axi_aclk;
  input [0:0]AR;
  input [28:0]dout;
  input full;
  input [15:0]\host_spi_timing_reg[15] ;
  input io_vita_spi_miso;
  input [0:0]\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] ;
  input empty;

  wire [0:0]AR;
  wire [0:0]D;
  wire [25:0]Q;
  wire [25:0]RxWord;
  wire SPI_BUSY;
  wire [1:0]SPI_DATA_TX;
  wire SPI_START;
  wire [3:0]TxIndex_reg__0;
  wire [28:0]dout;
  wire empty;
  wire full;
  wire [0:0]\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] ;
  wire [15:0]\host_spi_timing_reg[15] ;
  wire io_vita_spi_miso;
  wire rd_en;
  wire s00_axi_aclk;
  wire the_spi_lowlevel_n_0;
  wire the_spi_lowlevel_n_1;
  wire the_spi_seq_n_10;
  wire the_spi_seq_n_4;
  wire the_spi_seq_n_5;
  wire the_spi_seq_n_6;
  wire the_spi_seq_n_9;
  wire vita_spi_mosi_o;
  wire vita_spi_sclk_o;
  wire vita_spi_ssel_n_o;
  wire wr_en;

  fmchc_python1300c_onsemi_python_spi_0_0_spi_lowlevel the_spi_lowlevel
       (.AR(AR),
        .D({RxWord[0],RxWord[1],RxWord[2],RxWord[3],RxWord[4],RxWord[5],RxWord[6],RxWord[7],RxWord[8],RxWord[9],RxWord[10],RxWord[11],RxWord[12],RxWord[13],RxWord[14],RxWord[15],RxWord[16],RxWord[17],RxWord[18],RxWord[19],RxWord[20],RxWord[21],RxWord[22],RxWord[23],RxWord[24],RxWord[25]}),
        .E(the_spi_seq_n_4),
        .MOSI_reg_0(the_spi_lowlevel_n_1),
        .Q(TxIndex_reg__0),
        .\RxWord_reg[25]_0 (the_spi_lowlevel_n_0),
        .SPI_BUSY(SPI_BUSY),
        .\SPI_DATA_TX_reg[1] (SPI_DATA_TX),
        .\SPI_DATA_TX_reg[2] (the_spi_seq_n_10),
        .\SPI_DATA_TX_reg[6] (the_spi_seq_n_9),
        .SPI_START(SPI_START),
        .SPI_START_reg(the_spi_seq_n_5),
        .\TxIndex_reg[3]_0 (the_spi_seq_n_6),
        .\host_spi_timing_reg[15] (\host_spi_timing_reg[15] ),
        .io_vita_spi_miso(io_vita_spi_miso),
        .s00_axi_aclk(s00_axi_aclk),
        .vita_spi_mosi_o(vita_spi_mosi_o),
        .vita_spi_sclk_o(vita_spi_sclk_o),
        .vita_spi_ssel_n_o(vita_spi_ssel_n_o));
  fmchc_python1300c_onsemi_python_spi_0_0_spi_seq the_spi_seq
       (.AR(AR),
        .ClockOut_reg(the_spi_lowlevel_n_1),
        .D(D),
        .E(the_spi_seq_n_4),
        .MOSI_reg(the_spi_seq_n_6),
        .MOSI_reg_0(SPI_DATA_TX),
        .MOSI_reg_1(the_spi_seq_n_9),
        .MOSI_reg_2(the_spi_seq_n_10),
        .Q(TxIndex_reg__0),
        .\RxWord_reg[0] ({RxWord[0],RxWord[1],RxWord[2],RxWord[3],RxWord[4],RxWord[5],RxWord[6],RxWord[7],RxWord[8],RxWord[9],RxWord[10],RxWord[11],RxWord[12],RxWord[13],RxWord[14],RxWord[15],RxWord[16],RxWord[17],RxWord[18],RxWord[19],RxWord[20],RxWord[21],RxWord[22],RxWord[23],RxWord[24],RxWord[25]}),
        .SPI_BUSY(SPI_BUSY),
        .SPI_START(SPI_START),
        .SampleIn_reg(the_spi_lowlevel_n_0),
        .\TxIndex_reg[4] (the_spi_seq_n_5),
        .dout(dout),
        .empty(empty),
        .full(full),
        .\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] (\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] ),
        .\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] (Q),
        .rd_en(rd_en),
        .s00_axi_aclk(s00_axi_aclk),
        .wr_en(wr_en));
endmodule

(* DEST_SYNC_FF = "2" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [0]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [1]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[0]),
        .I1(src_in_bin[1]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[2]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[3]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [0]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [1]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[0]),
        .I1(src_in_bin[1]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[2]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[3]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__3
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [0]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [1]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[0]),
        .I1(src_in_bin[1]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[2]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[3]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__4
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [0]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [1]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[0]),
        .I1(src_in_bin[1]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[2]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[3]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[3] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[3] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [1]),
        .I2(\dest_graysync_ff[3] [0]),
        .I3(\dest_graysync_ff[3] [3]),
        .I4(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\dest_graysync_ff[3] [4]),
        .I2(\dest_graysync_ff[3] [1]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[0]),
        .I1(src_in_bin[1]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[2]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[3]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[4]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__parameterized0__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[3] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[3] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [1]),
        .I2(\dest_graysync_ff[3] [0]),
        .I3(\dest_graysync_ff[3] [3]),
        .I4(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\dest_graysync_ff[3] [4]),
        .I2(\dest_graysync_ff[3] [1]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[0]),
        .I1(src_in_bin[1]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[2]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[3]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[4]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [1]),
        .I2(\dest_graysync_ff[1] [0]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [1]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[0]),
        .I1(src_in_bin[1]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[2]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[3]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[4]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__parameterized1__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [1]),
        .I2(\dest_graysync_ff[1] [0]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [1]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[0]),
        .I1(src_in_bin[1]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[2]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[3]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[4]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_sync_rst__4
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_sync_rst__5
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_sync_rst__6
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn
   (D,
    \rd_data_count_i_reg[2] ,
    count_value_i,
    src_in_bin,
    Q,
    \count_value_i_reg[2] ,
    \gen_fwft.curr_fwft_state_reg[1] ,
    ram_empty_i,
    rd_en,
    SR,
    rd_clk);
  output [0:0]D;
  output \rd_data_count_i_reg[2] ;
  output [1:0]count_value_i;
  output [0:0]src_in_bin;
  input [2:0]Q;
  input [2:0]\count_value_i_reg[2] ;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input ram_empty_i;
  input rd_en;
  input [0:0]SR;
  input rd_clk;

  wire [0:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [1:0]count_value_i;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire [2:0]\count_value_i_reg[2] ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire ram_empty_i;
  wire rd_clk;
  wire \rd_data_count_i_reg[2] ;
  wire rd_en;
  wire [0:0]src_in_bin;

  LUT6 #(
    .INIT(64'h000000005AA98585)) 
    \count_value_i[0]_i_1 
       (.I0(count_value_i[0]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(ram_empty_i),
        .I3(rd_en),
        .I4(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I5(SR),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000AA8A)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(ram_empty_i),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I4(SR),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFDF5F550020A0A)) 
    \count_value_i[1]_i_2 
       (.I0(count_value_i[0]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(ram_empty_i),
        .I3(rd_en),
        .I4(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I5(count_value_i[1]),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(count_value_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(count_value_i[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(count_value_i[0]),
        .I1(\count_value_i_reg[2] [0]),
        .I2(count_value_i[1]),
        .I3(\count_value_i_reg[2] [1]),
        .O(src_in_bin));
  LUT6 #(
    .INIT(64'h9696699669966969)) 
    \rd_data_count_i[2]_i_1 
       (.I0(\rd_data_count_i_reg[2] ),
        .I1(Q[2]),
        .I2(\count_value_i_reg[2] [2]),
        .I3(\count_value_i_reg[2] [1]),
        .I4(count_value_i[1]),
        .I5(Q[1]),
        .O(D));
  LUT6 #(
    .INIT(64'h69FF696969690069)) 
    \rd_data_count_i[4]_i_4 
       (.I0(count_value_i[1]),
        .I1(\count_value_i_reg[2] [1]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[2] [0]),
        .I4(count_value_i[0]),
        .I5(Q[0]),
        .O(\rd_data_count_i_reg[2] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn_9
   (D,
    \rd_data_count_i_reg[2] ,
    count_value_i,
    src_in_bin,
    Q,
    \count_value_i_reg[2] ,
    \gen_fwft.curr_fwft_state_reg[1] ,
    ram_empty_i,
    rd_en,
    SR,
    rd_clk);
  output [0:0]D;
  output \rd_data_count_i_reg[2] ;
  output [1:0]count_value_i;
  output [0:0]src_in_bin;
  input [2:0]Q;
  input [2:0]\count_value_i_reg[2] ;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input ram_empty_i;
  input rd_en;
  input [0:0]SR;
  input rd_clk;

  wire [0:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [1:0]count_value_i;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire [2:0]\count_value_i_reg[2] ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire ram_empty_i;
  wire rd_clk;
  wire \rd_data_count_i_reg[2] ;
  wire rd_en;
  wire [0:0]src_in_bin;

  LUT6 #(
    .INIT(64'h000000005AA98585)) 
    \count_value_i[0]_i_1 
       (.I0(count_value_i[0]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(ram_empty_i),
        .I3(rd_en),
        .I4(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I5(SR),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000AA8A)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(ram_empty_i),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I4(SR),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFDF5F550020A0A)) 
    \count_value_i[1]_i_2 
       (.I0(count_value_i[0]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(ram_empty_i),
        .I3(rd_en),
        .I4(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I5(count_value_i[1]),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(count_value_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(count_value_i[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(count_value_i[0]),
        .I1(\count_value_i_reg[2] [0]),
        .I2(count_value_i[1]),
        .I3(\count_value_i_reg[2] [1]),
        .O(src_in_bin));
  LUT6 #(
    .INIT(64'h9696699669966969)) 
    \rd_data_count_i[2]_i_1 
       (.I0(\rd_data_count_i_reg[2] ),
        .I1(Q[2]),
        .I2(\count_value_i_reg[2] [2]),
        .I3(\count_value_i_reg[2] [1]),
        .I4(count_value_i[1]),
        .I5(Q[1]),
        .O(D));
  LUT6 #(
    .INIT(64'h69FF696969690069)) 
    \rd_data_count_i[4]_i_4 
       (.I0(count_value_i[1]),
        .I1(\count_value_i_reg[2] [1]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[2] [0]),
        .I4(count_value_i[0]),
        .I5(Q[0]),
        .O(\rd_data_count_i_reg[2] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized0
   (Q,
    D,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    wr_en,
    \syncstages_ff_reg[1] ,
    \reg_out_i_reg[2] ,
    wr_clk,
    \gen_rst_ic.fifo_wr_rst_i_reg );
  output [4:0]Q;
  output [0:0]D;
  input wr_pntr_plus1_pf_carry;
  input \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input \syncstages_ff_reg[1] ;
  input [2:0]\reg_out_i_reg[2] ;
  input wr_clk;
  input [1:0]\gen_rst_ic.fifo_wr_rst_i_reg ;

  wire [0:0]D;
  wire [4:0]Q;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire [1:0]\gen_rst_ic.fifo_wr_rst_i_reg ;
  wire [2:0]\reg_out_i_reg[2] ;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;

  LUT6 #(
    .INIT(64'hFFDFFFFF00200000)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I2(wr_en),
        .I3(\syncstages_ff_reg[1] ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\gen_rst_ic.fifo_wr_rst_i_reg [0]),
        .Q(Q[0]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\gen_rst_ic.fifo_wr_rst_i_reg [1]),
        .Q(Q[1]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\syncstages_ff_reg[1] ));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    \wr_data_count_i[2]_i_1 
       (.I0(Q[0]),
        .I1(\reg_out_i_reg[2] [0]),
        .I2(Q[1]),
        .I3(\reg_out_i_reg[2] [1]),
        .I4(\reg_out_i_reg[2] [2]),
        .I5(Q[2]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized0_13
   (Q,
    D,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    wr_en,
    \syncstages_ff_reg[1] ,
    \reg_out_i_reg[2] ,
    wr_clk,
    \gen_rst_ic.fifo_wr_rst_i_reg );
  output [4:0]Q;
  output [0:0]D;
  input wr_pntr_plus1_pf_carry;
  input \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input \syncstages_ff_reg[1] ;
  input [2:0]\reg_out_i_reg[2] ;
  input wr_clk;
  input [1:0]\gen_rst_ic.fifo_wr_rst_i_reg ;

  wire [0:0]D;
  wire [4:0]Q;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire [1:0]\gen_rst_ic.fifo_wr_rst_i_reg ;
  wire [2:0]\reg_out_i_reg[2] ;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;

  LUT6 #(
    .INIT(64'hFFDFFFFF00200000)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I2(wr_en),
        .I3(\syncstages_ff_reg[1] ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\gen_rst_ic.fifo_wr_rst_i_reg [0]),
        .Q(Q[0]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\gen_rst_ic.fifo_wr_rst_i_reg [1]),
        .Q(Q[1]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\syncstages_ff_reg[1] ));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    \wr_data_count_i[2]_i_1 
       (.I0(Q[0]),
        .I1(\reg_out_i_reg[2] [0]),
        .I2(Q[1]),
        .I3(\reg_out_i_reg[2] [1]),
        .I4(\reg_out_i_reg[2] [2]),
        .I5(Q[2]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized1
   (D,
    Q,
    \reg_out_i_reg[3] ,
    \reg_out_i_reg[0] ,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    wr_en,
    \syncstages_ff_reg[1] ,
    wr_clk,
    \gen_rst_ic.fifo_wr_rst_i_reg );
  output [2:0]D;
  output [3:0]Q;
  input [3:0]\reg_out_i_reg[3] ;
  input \reg_out_i_reg[0] ;
  input wr_pntr_plus1_pf_carry;
  input \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input \syncstages_ff_reg[1] ;
  input wr_clk;
  input [1:0]\gen_rst_ic.fifo_wr_rst_i_reg ;

  wire [2:0]D;
  wire [3:0]Q;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire [1:0]\gen_rst_ic.fifo_wr_rst_i_reg ;
  wire \reg_out_i_reg[0] ;
  wire [3:0]\reg_out_i_reg[3] ;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;

  LUT6 #(
    .INIT(64'hFFDFFFFF00200000)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I2(wr_en),
        .I3(\syncstages_ff_reg[1] ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\gen_rst_ic.fifo_wr_rst_i_reg [0]),
        .Q(Q[0]),
        .S(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\gen_rst_ic.fifo_wr_rst_i_reg [1]),
        .Q(Q[1]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\syncstages_ff_reg[1] ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.diff_pntr_pf_q[2]_i_1 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(Q[0]),
        .I2(\reg_out_i_reg[3] [0]),
        .I3(\reg_out_i_reg[3] [1]),
        .I4(Q[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.diff_pntr_pf_q[3]_i_1 
       (.I0(\reg_out_i_reg[0] ),
        .I1(Q[1]),
        .I2(\reg_out_i_reg[3] [1]),
        .I3(\reg_out_i_reg[3] [2]),
        .I4(Q[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h2BFF002BD400FFD4)) 
    \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_1 
       (.I0(\reg_out_i_reg[3] [1]),
        .I1(Q[1]),
        .I2(\reg_out_i_reg[0] ),
        .I3(Q[2]),
        .I4(\reg_out_i_reg[3] [2]),
        .I5(\gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3_n_0 ),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3 
       (.I0(Q[3]),
        .I1(\reg_out_i_reg[3] [3]),
        .O(\gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized1_14
   (D,
    Q,
    \reg_out_i_reg[3] ,
    \reg_out_i_reg[0] ,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    wr_en,
    \syncstages_ff_reg[1] ,
    wr_clk,
    \gen_rst_ic.fifo_wr_rst_i_reg );
  output [2:0]D;
  output [3:0]Q;
  input [3:0]\reg_out_i_reg[3] ;
  input \reg_out_i_reg[0] ;
  input wr_pntr_plus1_pf_carry;
  input \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input \syncstages_ff_reg[1] ;
  input wr_clk;
  input [1:0]\gen_rst_ic.fifo_wr_rst_i_reg ;

  wire [2:0]D;
  wire [3:0]Q;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire [1:0]\gen_rst_ic.fifo_wr_rst_i_reg ;
  wire \reg_out_i_reg[0] ;
  wire [3:0]\reg_out_i_reg[3] ;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;

  LUT6 #(
    .INIT(64'hFFDFFFFF00200000)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I2(wr_en),
        .I3(\syncstages_ff_reg[1] ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\gen_rst_ic.fifo_wr_rst_i_reg [0]),
        .Q(Q[0]),
        .S(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\gen_rst_ic.fifo_wr_rst_i_reg [1]),
        .Q(Q[1]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\syncstages_ff_reg[1] ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.diff_pntr_pf_q[2]_i_1 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(Q[0]),
        .I2(\reg_out_i_reg[3] [0]),
        .I3(\reg_out_i_reg[3] [1]),
        .I4(Q[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.diff_pntr_pf_q[3]_i_1 
       (.I0(\reg_out_i_reg[0] ),
        .I1(Q[1]),
        .I2(\reg_out_i_reg[3] [1]),
        .I3(\reg_out_i_reg[3] [2]),
        .I4(Q[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h2BFF002BD400FFD4)) 
    \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_1 
       (.I0(\reg_out_i_reg[3] [1]),
        .I1(Q[1]),
        .I2(\reg_out_i_reg[0] ),
        .I3(Q[2]),
        .I4(\reg_out_i_reg[3] [2]),
        .I5(\gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3_n_0 ),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3 
       (.I0(Q[3]),
        .I1(\reg_out_i_reg[3] [3]),
        .O(\gen_pf_ic_rc.diff_pntr_pf_q[4]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized2
   (Q,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    wr_en,
    \syncstages_ff_reg[1] ,
    wr_clk,
    D);
  output [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input \syncstages_ff_reg[1] ;
  input wr_clk;
  input [1:0]D;

  wire [1:0]D;
  wire [3:0]Q;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;

  LUT6 #(
    .INIT(64'hFFDFFFFF00200000)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I2(wr_en),
        .I3(\syncstages_ff_reg[1] ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(D[0]),
        .Q(Q[0]),
        .R(\syncstages_ff_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(D[1]),
        .Q(Q[1]),
        .S(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\syncstages_ff_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized2_15
   (Q,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    wr_en,
    \syncstages_ff_reg[1] ,
    wr_clk,
    D);
  output [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input \syncstages_ff_reg[1] ;
  input wr_clk;
  input [1:0]D;

  wire [1:0]D;
  wire [3:0]Q;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;

  LUT6 #(
    .INIT(64'hFFDFFFFF00200000)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I2(wr_en),
        .I3(\syncstages_ff_reg[1] ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(D[0]),
        .Q(Q[0]),
        .R(\syncstages_ff_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(D[1]),
        .Q(Q[1]),
        .S(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\syncstages_ff_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\syncstages_ff_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized3
   (D,
    Q,
    \count_value_i_reg[0]_0 ,
    \rd_data_count_i_reg[4] ,
    src_in_bin,
    \reg_out_i_reg[3] ,
    ram_empty_i,
    rd_en,
    \gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[1]_0 ,
    \reg_out_i_reg[4] ,
    \reg_out_i_reg[3]_0 ,
    count_value_i,
    SR,
    rd_clk);
  output [1:0]D;
  output [3:0]Q;
  output \count_value_i_reg[0]_0 ;
  output [1:0]\rd_data_count_i_reg[4] ;
  output [3:0]src_in_bin;
  input [3:0]\reg_out_i_reg[3] ;
  input ram_empty_i;
  input rd_en;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input \count_value_i_reg[1]_0 ;
  input [3:0]\reg_out_i_reg[4] ;
  input \reg_out_i_reg[3]_0 ;
  input [1:0]count_value_i;
  input [0:0]SR;
  input rd_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [1:0]count_value_i;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[1]_0 ;
  wire \count_value_i_reg_n_0_[4] ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0 ;
  wire \gen_pf_ic_rc.diff_pntr_pe[3]_i_3_n_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire \rd_data_count_i[4]_i_3_n_0 ;
  wire \rd_data_count_i[4]_i_6_n_0 ;
  wire [1:0]\rd_data_count_i_reg[4] ;
  wire rd_en;
  wire [3:0]\reg_out_i_reg[3] ;
  wire \reg_out_i_reg[3]_0 ;
  wire [3:0]\reg_out_i_reg[4] ;
  wire [3:0]src_in_bin;

  LUT5 #(
    .INIT(32'hBAAA4555)) 
    \count_value_i[0]_i_1__3 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I4(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FFFF00F70000)) 
    \count_value_i[1]_i_1__2 
       (.I0(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\count_value_i_reg[0]_0 ),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[4] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFEAFE00001501)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(Q[3]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ),
        .I2(Q[1]),
        .I3(count_value_i[1]),
        .I4(Q[2]),
        .I5(\count_value_i_reg_n_0_[4] ),
        .O(src_in_bin[3]));
  LUT6 #(
    .INIT(64'hFBFBBAFB04044504)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(Q[2]),
        .I1(count_value_i[1]),
        .I2(Q[1]),
        .I3(count_value_i[0]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hB0FB4F04)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(Q[0]),
        .I1(count_value_i[0]),
        .I2(Q[1]),
        .I3(count_value_i[1]),
        .I4(Q[2]),
        .O(src_in_bin[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[0]),
        .I1(count_value_i[0]),
        .O(src_in_bin[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(Q[0]),
        .I1(count_value_i[0]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.diff_pntr_pe[2]_i_1 
       (.I0(\gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(\reg_out_i_reg[3] [1]),
        .I2(Q[1]),
        .I3(\reg_out_i_reg[3] [2]),
        .I4(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h2BFF002BD400FFD4)) 
    \gen_pf_ic_rc.diff_pntr_pe[3]_i_1 
       (.I0(Q[1]),
        .I1(\reg_out_i_reg[3] [1]),
        .I2(\gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0 ),
        .I3(\reg_out_i_reg[3] [2]),
        .I4(Q[2]),
        .I5(\gen_pf_ic_rc.diff_pntr_pe[3]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hDFDDDDDD45444444)) 
    \gen_pf_ic_rc.diff_pntr_pe[3]_i_2 
       (.I0(Q[0]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I4(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I5(\reg_out_i_reg[3] [0]),
        .O(\gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.diff_pntr_pe[3]_i_3 
       (.I0(Q[3]),
        .I1(\reg_out_i_reg[3] [3]),
        .O(\gen_pf_ic_rc.diff_pntr_pe[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00F7)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\count_value_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h1EE1788787781EE1)) 
    \rd_data_count_i[3]_i_1 
       (.I0(\count_value_i_reg[1]_0 ),
        .I1(\rd_data_count_i[4]_i_3_n_0 ),
        .I2(\reg_out_i_reg[4] [2]),
        .I3(Q[3]),
        .I4(\reg_out_i_reg[4] [1]),
        .I5(Q[2]),
        .O(\rd_data_count_i_reg[4] [0]));
  LUT6 #(
    .INIT(64'h1701FF7FE8FE0080)) 
    \rd_data_count_i[4]_i_2 
       (.I0(\rd_data_count_i[4]_i_3_n_0 ),
        .I1(\count_value_i_reg[1]_0 ),
        .I2(\reg_out_i_reg[4] [1]),
        .I3(Q[2]),
        .I4(\reg_out_i_reg[3]_0 ),
        .I5(\rd_data_count_i[4]_i_6_n_0 ),
        .O(\rd_data_count_i_reg[4] [1]));
  LUT3 #(
    .INIT(8'hD4)) 
    \rd_data_count_i[4]_i_3 
       (.I0(Q[1]),
        .I1(count_value_i[1]),
        .I2(\reg_out_i_reg[4] [0]),
        .O(\rd_data_count_i[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hB44B)) 
    \rd_data_count_i[4]_i_6 
       (.I0(Q[3]),
        .I1(\reg_out_i_reg[4] [2]),
        .I2(\count_value_i_reg_n_0_[4] ),
        .I3(\reg_out_i_reg[4] [3]),
        .O(\rd_data_count_i[4]_i_6_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized3_10
   (D,
    Q,
    \count_value_i_reg[0]_0 ,
    \rd_data_count_i_reg[4] ,
    src_in_bin,
    \reg_out_i_reg[3] ,
    ram_empty_i,
    rd_en,
    \gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[1]_0 ,
    \reg_out_i_reg[4] ,
    \reg_out_i_reg[3]_0 ,
    count_value_i,
    SR,
    rd_clk);
  output [1:0]D;
  output [3:0]Q;
  output \count_value_i_reg[0]_0 ;
  output [1:0]\rd_data_count_i_reg[4] ;
  output [3:0]src_in_bin;
  input [3:0]\reg_out_i_reg[3] ;
  input ram_empty_i;
  input rd_en;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input \count_value_i_reg[1]_0 ;
  input [3:0]\reg_out_i_reg[4] ;
  input \reg_out_i_reg[3]_0 ;
  input [1:0]count_value_i;
  input [0:0]SR;
  input rd_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [1:0]count_value_i;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[1]_0 ;
  wire \count_value_i_reg_n_0_[4] ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0 ;
  wire \gen_pf_ic_rc.diff_pntr_pe[3]_i_3_n_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire \rd_data_count_i[4]_i_3_n_0 ;
  wire \rd_data_count_i[4]_i_6_n_0 ;
  wire [1:0]\rd_data_count_i_reg[4] ;
  wire rd_en;
  wire [3:0]\reg_out_i_reg[3] ;
  wire \reg_out_i_reg[3]_0 ;
  wire [3:0]\reg_out_i_reg[4] ;
  wire [3:0]src_in_bin;

  LUT5 #(
    .INIT(32'hBAAA4555)) 
    \count_value_i[0]_i_1__3 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I4(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FFFF00F70000)) 
    \count_value_i[1]_i_1__2 
       (.I0(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\count_value_i_reg[0]_0 ),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[4] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFEAFE00001501)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(Q[3]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ),
        .I2(Q[1]),
        .I3(count_value_i[1]),
        .I4(Q[2]),
        .I5(\count_value_i_reg_n_0_[4] ),
        .O(src_in_bin[3]));
  LUT6 #(
    .INIT(64'hFBFBBAFB04044504)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(Q[2]),
        .I1(count_value_i[1]),
        .I2(Q[1]),
        .I3(count_value_i[0]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hB0FB4F04)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(Q[0]),
        .I1(count_value_i[0]),
        .I2(Q[1]),
        .I3(count_value_i[1]),
        .I4(Q[2]),
        .O(src_in_bin[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[0]),
        .I1(count_value_i[0]),
        .O(src_in_bin[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(Q[0]),
        .I1(count_value_i[0]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.diff_pntr_pe[2]_i_1 
       (.I0(\gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(\reg_out_i_reg[3] [1]),
        .I2(Q[1]),
        .I3(\reg_out_i_reg[3] [2]),
        .I4(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h2BFF002BD400FFD4)) 
    \gen_pf_ic_rc.diff_pntr_pe[3]_i_1 
       (.I0(Q[1]),
        .I1(\reg_out_i_reg[3] [1]),
        .I2(\gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0 ),
        .I3(\reg_out_i_reg[3] [2]),
        .I4(Q[2]),
        .I5(\gen_pf_ic_rc.diff_pntr_pe[3]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hDFDDDDDD45444444)) 
    \gen_pf_ic_rc.diff_pntr_pe[3]_i_2 
       (.I0(Q[0]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I4(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I5(\reg_out_i_reg[3] [0]),
        .O(\gen_pf_ic_rc.diff_pntr_pe[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.diff_pntr_pe[3]_i_3 
       (.I0(Q[3]),
        .I1(\reg_out_i_reg[3] [3]),
        .O(\gen_pf_ic_rc.diff_pntr_pe[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00F7)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\count_value_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h1EE1788787781EE1)) 
    \rd_data_count_i[3]_i_1 
       (.I0(\count_value_i_reg[1]_0 ),
        .I1(\rd_data_count_i[4]_i_3_n_0 ),
        .I2(\reg_out_i_reg[4] [2]),
        .I3(Q[3]),
        .I4(\reg_out_i_reg[4] [1]),
        .I5(Q[2]),
        .O(\rd_data_count_i_reg[4] [0]));
  LUT6 #(
    .INIT(64'h1701FF7FE8FE0080)) 
    \rd_data_count_i[4]_i_2 
       (.I0(\rd_data_count_i[4]_i_3_n_0 ),
        .I1(\count_value_i_reg[1]_0 ),
        .I2(\reg_out_i_reg[4] [1]),
        .I3(Q[2]),
        .I4(\reg_out_i_reg[3]_0 ),
        .I5(\rd_data_count_i[4]_i_6_n_0 ),
        .O(\rd_data_count_i_reg[4] [1]));
  LUT3 #(
    .INIT(8'hD4)) 
    \rd_data_count_i[4]_i_3 
       (.I0(Q[1]),
        .I1(count_value_i[1]),
        .I2(\reg_out_i_reg[4] [0]),
        .O(\rd_data_count_i[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hB44B)) 
    \rd_data_count_i[4]_i_6 
       (.I0(Q[3]),
        .I1(\reg_out_i_reg[4] [2]),
        .I2(\count_value_i_reg_n_0_[4] ),
        .I3(\reg_out_i_reg[4] [3]),
        .O(\rd_data_count_i[4]_i_6_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized4
   (Q,
    \gen_fwft.curr_fwft_state_reg[1] ,
    \gen_fwft.curr_fwft_state_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    SR,
    rd_clk);
  output [3:0]Q;
  input \gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]SR;
  input rd_clk;

  wire [3:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \gen_fwft.curr_fwft_state_reg[1] ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT5 #(
    .INIT(32'hBAAA4555)) 
    \count_value_i[0]_i_1__2 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state_reg[1]_0 [0]),
        .I3(\gen_fwft.curr_fwft_state_reg[1]_0 [1]),
        .I4(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FFFF00F70000)) 
    \count_value_i[1]_i_1__3 
       (.I0(\gen_fwft.curr_fwft_state_reg[1]_0 [1]),
        .I1(\gen_fwft.curr_fwft_state_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] ),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized4_11
   (Q,
    \gen_fwft.curr_fwft_state_reg[1] ,
    \gen_fwft.curr_fwft_state_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    SR,
    rd_clk);
  output [3:0]Q;
  input \gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]SR;
  input rd_clk;

  wire [3:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \gen_fwft.curr_fwft_state_reg[1] ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT5 #(
    .INIT(32'hBAAA4555)) 
    \count_value_i[0]_i_1__2 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state_reg[1]_0 [0]),
        .I3(\gen_fwft.curr_fwft_state_reg[1]_0 [1]),
        .I4(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FFFF00F70000)) 
    \count_value_i[1]_i_1__3 
       (.I0(\gen_fwft.curr_fwft_state_reg[1]_0 [1]),
        .I1(\gen_fwft.curr_fwft_state_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] ),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_async" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_async
   (D,
    dout,
    empty,
    \SPI_DATA_TX_reg[16] ,
    AR,
    s00_axi_aclk,
    wr_en,
    Q,
    rd_en);
  output [0:0]D;
  output [28:0]dout;
  output empty;
  output [0:0]\SPI_DATA_TX_reg[16] ;
  input [0:0]AR;
  input s00_axi_aclk;
  input wr_en;
  input [31:0]Q;
  input rd_en;

  wire [0:0]AR;
  wire [0:0]D;
  wire [31:0]Q;
  wire [0:0]\SPI_DATA_TX_reg[16] ;
  wire [28:0]dout;
  wire empty;
  wire rd_en;
  wire s00_axi_aclk;
  wire [27:25]vita_spi_txfifo_dout;
  wire wr_en;
  wire xpm_fifo_base_inst_n_1;
  wire xpm_fifo_base_inst_n_2;
  wire xpm_fifo_base_inst_n_3;
  wire xpm_fifo_base_inst_n_4;
  wire xpm_fifo_base_inst_n_41;
  wire xpm_fifo_base_inst_n_42;
  wire xpm_fifo_base_inst_n_43;
  wire xpm_fifo_base_inst_n_44;
  wire xpm_fifo_base_inst_n_45;
  wire xpm_fifo_base_inst_n_46;
  wire xpm_fifo_base_inst_n_47;
  wire xpm_fifo_base_inst_n_48;
  wire xpm_fifo_base_inst_n_49;
  wire xpm_fifo_base_inst_n_5;
  wire xpm_fifo_base_inst_n_6;
  wire xpm_fifo_base_inst_n_7;

  LUT1 #(
    .INIT(2'h1)) 
    \SPI_DATA_TX[16]_i_1 
       (.I0(dout[25]),
        .O(\SPI_DATA_TX_reg[16] ));
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "512" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* FULL_RST_VAL = "1'b0" *) 
  (* PE_THRESH_ADJ = "6" *) 
  (* PE_THRESH_MAX = "11" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "6" *) 
  (* PF_THRESH_MAX = "13" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "8" *) 
  (* PROG_FULL_THRESH = "8" *) 
  (* RD_DATA_COUNT_WIDTH = "4" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "4" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_base xpm_fifo_base_inst
       (.dbiterr(xpm_fifo_base_inst_n_49),
        .din(Q),
        .dout({dout[28:25],vita_spi_txfifo_dout,dout[24:0]}),
        .empty(empty),
        .full(D),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(xpm_fifo_base_inst_n_6),
        .prog_empty(xpm_fifo_base_inst_n_41),
        .prog_full(xpm_fifo_base_inst_n_1),
        .rd_clk(s00_axi_aclk),
        .rd_data_count({xpm_fifo_base_inst_n_42,xpm_fifo_base_inst_n_43,xpm_fifo_base_inst_n_44,xpm_fifo_base_inst_n_45}),
        .rd_en(rd_en),
        .rd_rst_busy(xpm_fifo_base_inst_n_47),
        .rst(AR),
        .sbiterr(xpm_fifo_base_inst_n_48),
        .sleep(1'b0),
        .underflow(xpm_fifo_base_inst_n_46),
        .wr_clk(s00_axi_aclk),
        .wr_data_count({xpm_fifo_base_inst_n_2,xpm_fifo_base_inst_n_3,xpm_fifo_base_inst_n_4,xpm_fifo_base_inst_n_5}),
        .wr_en(wr_en),
        .wr_rst_busy(xpm_fifo_base_inst_n_7));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_async" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_async__xdcDup__1
   (full,
    \slv_reg7_r1_reg[31] ,
    D,
    AR,
    s00_axi_aclk,
    wr_en,
    Q,
    rd_en);
  output full;
  output [31:0]\slv_reg7_r1_reg[31] ;
  output [0:0]D;
  input [0:0]AR;
  input s00_axi_aclk;
  input wr_en;
  input [25:0]Q;
  input rd_en;

  wire [0:0]AR;
  wire [0:0]D;
  wire [25:0]Q;
  wire full;
  wire rd_en;
  wire s00_axi_aclk;
  wire [31:0]\slv_reg7_r1_reg[31] ;
  wire wr_en;
  wire xpm_fifo_base_inst_n_1;
  wire xpm_fifo_base_inst_n_2;
  wire xpm_fifo_base_inst_n_3;
  wire xpm_fifo_base_inst_n_4;
  wire xpm_fifo_base_inst_n_41;
  wire xpm_fifo_base_inst_n_42;
  wire xpm_fifo_base_inst_n_43;
  wire xpm_fifo_base_inst_n_44;
  wire xpm_fifo_base_inst_n_45;
  wire xpm_fifo_base_inst_n_46;
  wire xpm_fifo_base_inst_n_47;
  wire xpm_fifo_base_inst_n_48;
  wire xpm_fifo_base_inst_n_49;
  wire xpm_fifo_base_inst_n_5;
  wire xpm_fifo_base_inst_n_6;
  wire xpm_fifo_base_inst_n_7;

  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "512" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* FULL_RST_VAL = "1'b0" *) 
  (* PE_THRESH_ADJ = "6" *) 
  (* PE_THRESH_MAX = "11" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "6" *) 
  (* PF_THRESH_MAX = "13" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "8" *) 
  (* PROG_FULL_THRESH = "8" *) 
  (* RD_DATA_COUNT_WIDTH = "4" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "4" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_base__xdcDup__1 xpm_fifo_base_inst
       (.dbiterr(xpm_fifo_base_inst_n_49),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .dout(\slv_reg7_r1_reg[31] ),
        .empty(D),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(xpm_fifo_base_inst_n_6),
        .prog_empty(xpm_fifo_base_inst_n_41),
        .prog_full(xpm_fifo_base_inst_n_1),
        .rd_clk(s00_axi_aclk),
        .rd_data_count({xpm_fifo_base_inst_n_42,xpm_fifo_base_inst_n_43,xpm_fifo_base_inst_n_44,xpm_fifo_base_inst_n_45}),
        .rd_en(rd_en),
        .rd_rst_busy(xpm_fifo_base_inst_n_47),
        .rst(AR),
        .sbiterr(xpm_fifo_base_inst_n_48),
        .sleep(1'b0),
        .underflow(xpm_fifo_base_inst_n_46),
        .wr_clk(s00_axi_aclk),
        .wr_data_count({xpm_fifo_base_inst_n_2,xpm_fifo_base_inst_n_3,xpm_fifo_base_inst_n_4,xpm_fifo_base_inst_n_5}),
        .wr_en(wr_en),
        .wr_rst_busy(xpm_fifo_base_inst_n_7));
endmodule

(* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* FIFO_MEMORY_TYPE = "0" *) 
(* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "16" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_SIZE = "512" *) (* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "0" *) 
(* FULL_RST_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "6" *) 
(* PE_THRESH_MAX = "11" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "6" *) 
(* PF_THRESH_MAX = "13" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "8" *) 
(* PROG_FULL_THRESH = "8" *) (* RD_DATA_COUNT_WIDTH = "4" *) (* RD_DC_WIDTH_EXT = "5" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "4" *) 
(* READ_DATA_WIDTH = "32" *) (* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "4" *) 
(* WR_DC_WIDTH_EXT = "5" *) (* WR_PNTR_WIDTH = "4" *) (* WR_RD_RATIO = "0" *) 
(* XPM_MODULE = "TRUE" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output prog_full;
  output [3:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [3:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire [1:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire dbiterr;
  wire [3:0]diff_pntr_pe;
  wire [4:2]diff_pntr_pf_q;
  wire [4:2]diff_pntr_pf_q0;
  wire [4:1]diff_wr_rd_pntr1_out;
  wire [4:1]diff_wr_rd_pntr_rdc;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  wire \gen_fwft.empty_fwft_i_reg0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.prog_empty_i_i_1_n_0 ;
  wire \gen_pf_ic_rc.prog_full_i_i_2_n_0 ;
  wire injectdbiterr;
  wire injectsbiterr;
  wire [1:0]next_fwft_state;
  wire overflow;
  wire overflow_i0;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_full_i0;
  wire ram_regout_en;
  wire rd_clk;
  wire [3:0]rd_data_count;
  wire rd_data_count_i0;
  wire rd_en;
  wire [3:0]rd_pntr_ext;
  wire [3:0]rd_pntr_wr;
  wire [3:0]rd_pntr_wr_cdc;
  wire [4:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rd_rst_i;
  wire rdp_inst_n_10;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_6;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire sbiterr;
  wire sleep;
  wire [1:1]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_clk;
  wire [3:0]wr_data_count;
  wire wr_en;
  wire [4:0]wr_pntr_ext;
  wire [4:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [3:0]wr_pntr_rd_cdc;
  wire [4:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire xpm_fifo_rst_inst_n_1;
  wire xpm_fifo_rst_inst_n_13;
  wire xpm_fifo_rst_inst_n_14;
  wire xpm_fifo_rst_inst_n_2;
  wire xpm_fifo_rst_inst_n_3;
  wire xpm_fifo_rst_inst_n_4;
  wire xpm_fifo_rst_inst_n_5;
  wire xpm_fifo_rst_inst_n_6;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire [31:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  (* DEST_SYNC_FF = "2" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__parameterized1__2 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin({rdp_inst_n_9,rdp_inst_n_10,rdp_inst_n_11,src_in_bin00_out,rdp_inst_n_12}));
  (* DEST_SYNC_FF = "2" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__3 \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(wr_pntr_plus1_pf),
        .\count_value_i_reg[3] ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (rd_pntr_wr),
        .ram_full_i0(ram_full_i0),
        .\syncstages_ff_reg[1] (wr_rst_busy),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec__parameterized1 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D({diff_wr_rd_pntr1_out[4:3],diff_wr_rd_pntr1_out[1]}),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 }),
        .\count_value_i_reg[4] (wr_pntr_ext),
        .\dest_graysync_ff_reg[1][4] (rd_pntr_wr_cdc_dc),
        .\syncstages_ff_reg[1] (wr_rst_busy),
        .wr_clk(wr_clk));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec_0 \gen_cdc_pntr.wpr_gray_reg 
       (.D(diff_pntr_pe[1:0]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 }),
        .SR(rd_rst_i),
        .\count_value_i_reg[3] (rd_pntr_ext),
        .\count_value_i_reg[3]_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .\dest_graysync_ff_reg[1][3] (wr_pntr_rd_cdc),
        .\gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_6),
        .\gen_fwft.curr_fwft_state_reg[1]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(diff_wr_rd_pntr_rdc[1]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 }),
        .SR(rd_rst_i),
        .count_value_i(count_value_i),
        .\count_value_i_reg[3] ({rd_pntr_ext[3],rd_pntr_ext[1:0]}),
        .\dest_graysync_ff_reg[3][4] (wr_pntr_rd_cdc_dc),
        .rd_clk(rd_clk),
        .\rd_data_count_i_reg[4] (\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ));
  (* DEST_SYNC_FF = "4" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__parameterized0__2 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__2 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[3:0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_i),
        .O(next_fwft_state[1]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]),
        .R(rd_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]),
        .R(rd_rst_i));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBA22)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(empty),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .I3(curr_fwft_state[0]),
        .O(\gen_fwft.empty_fwft_i_reg0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.empty_fwft_i_reg0 ),
        .Q(empty),
        .S(rd_rst_i));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn \gen_fwft.rdpp1_inst 
       (.D(diff_wr_rd_pntr_rdc[2]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 }),
        .SR(rd_rst_i),
        .count_value_i(count_value_i),
        .\count_value_i_reg[2] (rd_pntr_ext[2:0]),
        .\gen_fwft.curr_fwft_state_reg[1] (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .\rd_data_count_i_reg[2] (\gen_fwft.rdpp1_inst_n_1 ),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(wr_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(wr_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wr_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(full),
        .R(wr_rst_busy));
  LUT6 #(
    .INIT(64'h888888888BBBBBBB)) 
    \gen_pf_ic_rc.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[1] ),
        .I3(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[0] ),
        .I4(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[2] ),
        .I5(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[3] ),
        .O(\gen_pf_ic_rc.prog_empty_i_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_i));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \gen_pf_ic_rc.prog_full_i_i_2 
       (.I0(prog_full),
        .I1(full),
        .I2(diff_pntr_pf_q[4]),
        .I3(diff_pntr_pf_q[2]),
        .I4(diff_pntr_pf_q[3]),
        .O(\gen_pf_ic_rc.prog_full_i_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_13),
        .Q(prog_full),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_i));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "32" *) 
  (* BYTE_WRITE_WIDTH_B = "32" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "2147483647" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "2147483647" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "-1" *) 
  (* \MEM.ADDRESS_SPACE_END  = "-1" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "-2147483647" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "512" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "32" *) 
  (* P_MIN_WIDTH_DATA_A = "32" *) 
  (* P_MIN_WIDTH_DATA_B = "32" *) 
  (* P_MIN_WIDTH_DATA_ECC = "32" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "32" *) 
  (* P_WIDTH_COL_WRITE_B = "32" *) 
  (* READ_DATA_WIDTH_A = "32" *) 
  (* READ_DATA_WIDTH_B = "32" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "32" *) 
  (* WRITE_DATA_WIDTH_B = "32" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_memory_base__2 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[3:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(dbiterr),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [31:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdp_inst_n_6),
        .injectdbiterra(injectdbiterr),
        .injectdbiterrb(1'b0),
        .injectsbiterra(injectsbiterr),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(ram_regout_en),
        .rsta(1'b0),
        .rstb(rd_rst_i),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(sbiterr),
        .sleep(sleep),
        .wea(wr_pntr_plus1_pf_carry),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    \gen_sdpram.xpm_memory_base_inst_i_4 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(rd_en),
        .O(ram_regout_en));
  FDRE #(
    .INIT(1'b0)) 
    overflow_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr_rdc[1]),
        .Q(rd_data_count[0]),
        .R(rd_data_count_i0));
  FDRE \rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr_rdc[2]),
        .Q(rd_data_count[1]),
        .R(rd_data_count_i0));
  FDRE \rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr_rdc[3]),
        .Q(rd_data_count[2]),
        .R(rd_data_count_i0));
  FDRE \rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr_rdc[4]),
        .Q(rd_data_count[3]),
        .R(rd_data_count_i0));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized3 rdp_inst
       (.D(diff_pntr_pe[3:2]),
        .Q(rd_pntr_ext),
        .SR(rd_rst_i),
        .count_value_i(count_value_i),
        .\count_value_i_reg[0]_0 (rdp_inst_n_6),
        .\count_value_i_reg[1]_0 (\gen_fwft.rdpp1_inst_n_1 ),
        .\gen_fwft.curr_fwft_state_reg[1] (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .\rd_data_count_i_reg[4] (diff_wr_rd_pntr_rdc[4:3]),
        .rd_en(rd_en),
        .\reg_out_i_reg[3] ({\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 }),
        .\reg_out_i_reg[3]_0 (\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ),
        .\reg_out_i_reg[4] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 }),
        .src_in_bin({rdp_inst_n_9,rdp_inst_n_10,rdp_inst_n_11,rdp_inst_n_12}));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized4 rdpp1_inst
       (.Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .SR(rd_rst_i),
        .\gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_6),
        .\gen_fwft.curr_fwft_state_reg[1]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.rst_d1(rst_d1),
        .\syncstages_ff_reg[1] (wr_rst_busy),
        .wr_clk(wr_clk));
  FDRE #(
    .INIT(1'b0)) 
    underflow_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE \wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr1_out[1]),
        .Q(wr_data_count[0]),
        .R(wr_rst_busy));
  FDRE \wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr1_out[2]),
        .Q(wr_data_count[1]),
        .R(wr_rst_busy));
  FDRE \wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr1_out[3]),
        .Q(wr_data_count[2]),
        .R(wr_rst_busy));
  FDRE \wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr1_out[4]),
        .Q(wr_data_count[3]),
        .R(wr_rst_busy));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized0 wrp_inst
       (.D(diff_wr_rd_pntr1_out[2]),
        .Q(wr_pntr_ext),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (full),
        .\gen_rst_ic.fifo_wr_rst_i_reg ({xpm_fifo_rst_inst_n_1,xpm_fifo_rst_inst_n_2}),
        .\reg_out_i_reg[2] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 }),
        .\syncstages_ff_reg[1] (wr_rst_busy),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized1 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .Q(wr_pntr_plus1_pf),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (full),
        .\gen_rst_ic.fifo_wr_rst_i_reg ({xpm_fifo_rst_inst_n_3,xpm_fifo_rst_inst_n_4}),
        .\reg_out_i_reg[0] (xpm_fifo_rst_inst_n_14),
        .\reg_out_i_reg[3] (rd_pntr_wr),
        .\syncstages_ff_reg[1] (wr_rst_busy),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized2 wrpp2_inst
       (.D({xpm_fifo_rst_inst_n_5,xpm_fifo_rst_inst_n_6}),
        .Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (full),
        .\syncstages_ff_reg[1] (wr_rst_busy),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.D({xpm_fifo_rst_inst_n_5,xpm_fifo_rst_inst_n_6}),
        .Q(wr_pntr_ext[1:0]),
        .SR(rd_data_count_i0),
        .\count_value_i_reg[0] (wr_rst_busy),
        .\count_value_i_reg[0]_0 (rd_rst_i),
        .\count_value_i_reg[1] ({xpm_fifo_rst_inst_n_1,xpm_fifo_rst_inst_n_2}),
        .\count_value_i_reg[1]_0 ({xpm_fifo_rst_inst_n_3,xpm_fifo_rst_inst_n_4}),
        .\count_value_i_reg[1]_1 (wr_pntr_plus1_pf[2:1]),
        .\count_value_i_reg[1]_2 ({wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .dest_rst(rd_rst_busy),
        .\gen_fwft.curr_fwft_state_reg[1] (curr_fwft_state),
        .\gen_fwft.empty_fwft_i_reg (empty),
        .\gen_pf_ic_rc.diff_pntr_pf_q_reg[4] (xpm_fifo_rst_inst_n_14),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (full),
        .\gen_pf_ic_rc.prog_full_i_reg (xpm_fifo_rst_inst_n_13),
        .\gen_pf_ic_rc.prog_full_i_reg_0 (\gen_pf_ic_rc.prog_full_i_i_2_n_0 ),
        .overflow_i0(overflow_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[0] (rd_pntr_wr[0]),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry));
endmodule

(* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* FIFO_MEMORY_TYPE = "0" *) 
(* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "16" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_SIZE = "512" *) (* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "0" *) 
(* FULL_RST_VAL = "1'b0" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "6" *) 
(* PE_THRESH_MAX = "11" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "6" *) 
(* PF_THRESH_MAX = "13" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "8" *) 
(* PROG_FULL_THRESH = "8" *) (* RD_DATA_COUNT_WIDTH = "4" *) (* RD_DC_WIDTH_EXT = "5" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "4" *) 
(* READ_DATA_WIDTH = "32" *) (* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "4" *) 
(* WR_DC_WIDTH_EXT = "5" *) (* WR_PNTR_WIDTH = "4" *) (* WR_RD_RATIO = "0" *) 
(* XPM_MODULE = "TRUE" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_base__xdcDup__1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output prog_full;
  output [3:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [3:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire [1:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire dbiterr;
  wire [3:0]diff_pntr_pe;
  wire [4:2]diff_pntr_pf_q;
  wire [4:2]diff_pntr_pf_q0;
  wire [4:1]diff_wr_rd_pntr1_out;
  wire [4:1]diff_wr_rd_pntr_rdc;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  wire \gen_fwft.empty_fwft_i_reg0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.prog_empty_i_i_1_n_0 ;
  wire \gen_pf_ic_rc.prog_full_i_i_2_n_0 ;
  wire injectdbiterr;
  wire injectsbiterr;
  wire [1:0]next_fwft_state;
  wire overflow;
  wire overflow_i0;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_full_i0;
  wire ram_regout_en;
  wire rd_clk;
  wire [3:0]rd_data_count;
  wire rd_data_count_i0;
  wire rd_en;
  wire [3:0]rd_pntr_ext;
  wire [3:0]rd_pntr_wr;
  wire [3:0]rd_pntr_wr_cdc;
  wire [4:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rd_rst_i;
  wire rdp_inst_n_10;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_6;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire sbiterr;
  wire sleep;
  wire [1:1]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_clk;
  wire [3:0]wr_data_count;
  wire wr_en;
  wire [4:0]wr_pntr_ext;
  wire [4:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [3:0]wr_pntr_rd_cdc;
  wire [4:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire xpm_fifo_rst_inst_n_1;
  wire xpm_fifo_rst_inst_n_13;
  wire xpm_fifo_rst_inst_n_14;
  wire xpm_fifo_rst_inst_n_2;
  wire xpm_fifo_rst_inst_n_3;
  wire xpm_fifo_rst_inst_n_4;
  wire xpm_fifo_rst_inst_n_5;
  wire xpm_fifo_rst_inst_n_6;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire [31:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  (* DEST_SYNC_FF = "2" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin({rdp_inst_n_9,rdp_inst_n_10,rdp_inst_n_11,src_in_bin00_out,rdp_inst_n_12}));
  (* DEST_SYNC_FF = "2" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec_5 \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(wr_pntr_plus1_pf),
        .\count_value_i_reg[3] ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (rd_pntr_wr),
        .ram_full_i0(ram_full_i0),
        .\syncstages_ff_reg[1] (wr_rst_busy),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec__parameterized1_6 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D({diff_wr_rd_pntr1_out[4:3],diff_wr_rd_pntr1_out[1]}),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 }),
        .\count_value_i_reg[4] (wr_pntr_ext),
        .\dest_graysync_ff_reg[1][4] (rd_pntr_wr_cdc_dc),
        .\syncstages_ff_reg[1] (wr_rst_busy),
        .wr_clk(wr_clk));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec_7 \gen_cdc_pntr.wpr_gray_reg 
       (.D(diff_pntr_pe[1:0]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 }),
        .SR(rd_rst_i),
        .\count_value_i_reg[3] (rd_pntr_ext),
        .\count_value_i_reg[3]_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .\dest_graysync_ff_reg[1][3] (wr_pntr_rd_cdc),
        .\gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_6),
        .\gen_fwft.curr_fwft_state_reg[1]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec__parameterized0_8 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(diff_wr_rd_pntr_rdc[1]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 }),
        .SR(rd_rst_i),
        .count_value_i(count_value_i),
        .\count_value_i_reg[3] ({rd_pntr_ext[3],rd_pntr_ext[1:0]}),
        .\dest_graysync_ff_reg[3][4] (wr_pntr_rd_cdc_dc),
        .rd_clk(rd_clk),
        .\rd_data_count_i_reg[4] (\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ));
  (* DEST_SYNC_FF = "4" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_gray__4 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[3:0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_i),
        .O(next_fwft_state[1]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]),
        .R(rd_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]),
        .R(rd_rst_i));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hBA22)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(empty),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .I3(curr_fwft_state[0]),
        .O(\gen_fwft.empty_fwft_i_reg0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.empty_fwft_i_reg0 ),
        .Q(empty),
        .S(rd_rst_i));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn_9 \gen_fwft.rdpp1_inst 
       (.D(diff_wr_rd_pntr_rdc[2]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 }),
        .SR(rd_rst_i),
        .count_value_i(count_value_i),
        .\count_value_i_reg[2] (rd_pntr_ext[2:0]),
        .\gen_fwft.curr_fwft_state_reg[1] (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .\rd_data_count_i_reg[2] (\gen_fwft.rdpp1_inst_n_1 ),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(wr_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(wr_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wr_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(full),
        .R(wr_rst_busy));
  LUT6 #(
    .INIT(64'h888888888BBBBBBB)) 
    \gen_pf_ic_rc.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[1] ),
        .I3(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[0] ),
        .I4(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[2] ),
        .I5(\gen_pf_ic_rc.diff_pntr_pe_reg_n_0_[3] ),
        .O(\gen_pf_ic_rc.prog_empty_i_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_i));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \gen_pf_ic_rc.prog_full_i_i_2 
       (.I0(prog_full),
        .I1(full),
        .I2(diff_pntr_pf_q[4]),
        .I3(diff_pntr_pf_q[2]),
        .I4(diff_pntr_pf_q[3]),
        .O(\gen_pf_ic_rc.prog_full_i_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_13),
        .Q(prog_full),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_i));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "32" *) 
  (* BYTE_WRITE_WIDTH_B = "32" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "2147483647" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "2147483647" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "-1" *) 
  (* \MEM.ADDRESS_SPACE_END  = "-1" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "-2147483647" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "512" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "32" *) 
  (* P_MIN_WIDTH_DATA_A = "32" *) 
  (* P_MIN_WIDTH_DATA_B = "32" *) 
  (* P_MIN_WIDTH_DATA_ECC = "32" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "32" *) 
  (* P_WIDTH_COL_WRITE_B = "32" *) 
  (* READ_DATA_WIDTH_A = "32" *) 
  (* READ_DATA_WIDTH_B = "32" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "32" *) 
  (* WRITE_DATA_WIDTH_B = "32" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[3:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(dbiterr),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [31:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdp_inst_n_6),
        .injectdbiterra(injectdbiterr),
        .injectdbiterrb(1'b0),
        .injectsbiterra(injectsbiterr),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(ram_regout_en),
        .rsta(1'b0),
        .rstb(rd_rst_i),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(sbiterr),
        .sleep(sleep),
        .wea(wr_pntr_plus1_pf_carry),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    \gen_sdpram.xpm_memory_base_inst_i_4 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(rd_en),
        .O(ram_regout_en));
  FDRE #(
    .INIT(1'b0)) 
    overflow_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr_rdc[1]),
        .Q(rd_data_count[0]),
        .R(rd_data_count_i0));
  FDRE \rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr_rdc[2]),
        .Q(rd_data_count[1]),
        .R(rd_data_count_i0));
  FDRE \rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr_rdc[3]),
        .Q(rd_data_count[2]),
        .R(rd_data_count_i0));
  FDRE \rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr_rdc[4]),
        .Q(rd_data_count[3]),
        .R(rd_data_count_i0));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized3_10 rdp_inst
       (.D(diff_pntr_pe[3:2]),
        .Q(rd_pntr_ext),
        .SR(rd_rst_i),
        .count_value_i(count_value_i),
        .\count_value_i_reg[0]_0 (rdp_inst_n_6),
        .\count_value_i_reg[1]_0 (\gen_fwft.rdpp1_inst_n_1 ),
        .\gen_fwft.curr_fwft_state_reg[1] (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .\rd_data_count_i_reg[4] (diff_wr_rd_pntr_rdc[4:3]),
        .rd_en(rd_en),
        .\reg_out_i_reg[3] ({\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 }),
        .\reg_out_i_reg[3]_0 (\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ),
        .\reg_out_i_reg[4] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 }),
        .src_in_bin({rdp_inst_n_9,rdp_inst_n_10,rdp_inst_n_11,rdp_inst_n_12}));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized4_11 rdpp1_inst
       (.Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .SR(rd_rst_i),
        .\gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_6),
        .\gen_fwft.curr_fwft_state_reg[1]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_12 rst_d1_inst
       (.rst_d1(rst_d1),
        .\syncstages_ff_reg[1] (wr_rst_busy),
        .wr_clk(wr_clk));
  FDRE #(
    .INIT(1'b0)) 
    underflow_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE \wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr1_out[1]),
        .Q(wr_data_count[0]),
        .R(wr_rst_busy));
  FDRE \wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr1_out[2]),
        .Q(wr_data_count[1]),
        .R(wr_rst_busy));
  FDRE \wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr1_out[3]),
        .Q(wr_data_count[2]),
        .R(wr_rst_busy));
  FDRE \wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_wr_rd_pntr1_out[4]),
        .Q(wr_data_count[3]),
        .R(wr_rst_busy));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized0_13 wrp_inst
       (.D(diff_wr_rd_pntr1_out[2]),
        .Q(wr_pntr_ext),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (full),
        .\gen_rst_ic.fifo_wr_rst_i_reg ({xpm_fifo_rst_inst_n_1,xpm_fifo_rst_inst_n_2}),
        .\reg_out_i_reg[2] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 }),
        .\syncstages_ff_reg[1] (wr_rst_busy),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized1_14 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .Q(wr_pntr_plus1_pf),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (full),
        .\gen_rst_ic.fifo_wr_rst_i_reg ({xpm_fifo_rst_inst_n_3,xpm_fifo_rst_inst_n_4}),
        .\reg_out_i_reg[0] (xpm_fifo_rst_inst_n_14),
        .\reg_out_i_reg[3] (rd_pntr_wr),
        .\syncstages_ff_reg[1] (wr_rst_busy),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_counter_updn__parameterized2_15 wrpp2_inst
       (.D({xpm_fifo_rst_inst_n_5,xpm_fifo_rst_inst_n_6}),
        .Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (full),
        .\syncstages_ff_reg[1] (wr_rst_busy),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_rst__xdcDup__1 xpm_fifo_rst_inst
       (.D({xpm_fifo_rst_inst_n_5,xpm_fifo_rst_inst_n_6}),
        .Q(wr_pntr_ext[1:0]),
        .SR(rd_data_count_i0),
        .\count_value_i_reg[0] (wr_rst_busy),
        .\count_value_i_reg[0]_0 (rd_rst_i),
        .\count_value_i_reg[1] ({xpm_fifo_rst_inst_n_1,xpm_fifo_rst_inst_n_2}),
        .\count_value_i_reg[1]_0 ({xpm_fifo_rst_inst_n_3,xpm_fifo_rst_inst_n_4}),
        .\count_value_i_reg[1]_1 (wr_pntr_plus1_pf[2:1]),
        .\count_value_i_reg[1]_2 ({wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .dest_rst(rd_rst_busy),
        .\gen_fwft.curr_fwft_state_reg[1] (curr_fwft_state),
        .\gen_fwft.empty_fwft_i_reg (empty),
        .\gen_pf_ic_rc.diff_pntr_pf_q_reg[4] (xpm_fifo_rst_inst_n_14),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (full),
        .\gen_pf_ic_rc.prog_full_i_reg (xpm_fifo_rst_inst_n_13),
        .\gen_pf_ic_rc.prog_full_i_reg_0 (\gen_pf_ic_rc.prog_full_i_i_2_n_0 ),
        .overflow_i0(overflow_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[0] (rd_pntr_wr[0]),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit
   (rst_d1,
    \syncstages_ff_reg[1] ,
    wr_clk);
  output rst_d1;
  input \syncstages_ff_reg[1] ;
  input wr_clk;

  wire rst_d1;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(\syncstages_ff_reg[1] ),
        .Q(rst_d1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_1
   (d_out,
    \gen_rst_ic.fifo_wr_rst_i_reg ,
    wr_clk);
  output d_out;
  input \gen_rst_ic.fifo_wr_rst_i_reg ;
  input wr_clk;

  wire d_out;
  wire \gen_rst_ic.fifo_wr_rst_i_reg ;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_i_reg ),
        .Q(d_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_12
   (rst_d1,
    \syncstages_ff_reg[1] ,
    wr_clk);
  output rst_d1;
  input \syncstages_ff_reg[1] ;
  input wr_clk;

  wire rst_d1;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(\syncstages_ff_reg[1] ),
        .Q(rst_d1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_18
   (d_out,
    \gen_rst_ic.fifo_wr_rst_i_reg ,
    wr_clk);
  output d_out;
  input \gen_rst_ic.fifo_wr_rst_i_reg ;
  input wr_clk;

  wire d_out;
  wire \gen_rst_ic.fifo_wr_rst_i_reg ;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_i_reg ),
        .Q(d_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_19
   (fifo_wr_rst_d2,
    \gen_rst_ic.fifo_wr_rst_i_reg ,
    \gen_rst_ic.fifo_wr_rst_done_reg ,
    d_out,
    wr_clk,
    p_0_in,
    \gen_rst_ic.fifo_wr_rst_i_reg_0 ,
    dest_rst,
    rst,
    Q,
    fifo_wr_rst_done,
    fifo_rd_rst_done,
    fifo_wr_rst_d3);
  output fifo_wr_rst_d2;
  output \gen_rst_ic.fifo_wr_rst_i_reg ;
  output \gen_rst_ic.fifo_wr_rst_done_reg ;
  input d_out;
  input wr_clk;
  input p_0_in;
  input \gen_rst_ic.fifo_wr_rst_i_reg_0 ;
  input dest_rst;
  input rst;
  input [0:0]Q;
  input fifo_wr_rst_done;
  input fifo_rd_rst_done;
  input fifo_wr_rst_d3;

  wire [0:0]Q;
  wire d_out;
  wire dest_rst;
  wire fifo_rd_rst_done;
  wire fifo_wr_rst_d2;
  wire fifo_wr_rst_d3;
  wire fifo_wr_rst_done;
  wire \gen_rst_ic.fifo_wr_rst_done_reg ;
  wire \gen_rst_ic.fifo_wr_rst_i_reg ;
  wire \gen_rst_ic.fifo_wr_rst_i_reg_0 ;
  wire p_0_in;
  wire rst;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(d_out),
        .Q(fifo_wr_rst_d2),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2F22)) 
    \gen_rst_ic.fifo_wr_rst_done_i_1 
       (.I0(fifo_wr_rst_done),
        .I1(fifo_rd_rst_done),
        .I2(fifo_wr_rst_d3),
        .I3(fifo_wr_rst_d2),
        .O(\gen_rst_ic.fifo_wr_rst_done_reg ));
  LUT6 #(
    .INIT(64'h4447444744474444)) 
    \gen_rst_ic.fifo_wr_rst_i_i_1 
       (.I0(p_0_in),
        .I1(\gen_rst_ic.fifo_wr_rst_i_reg_0 ),
        .I2(dest_rst),
        .I3(fifo_wr_rst_d2),
        .I4(rst),
        .I5(Q),
        .O(\gen_rst_ic.fifo_wr_rst_i_reg ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_2
   (fifo_wr_rst_d2,
    \gen_rst_ic.fifo_wr_rst_i_reg ,
    \gen_rst_ic.fifo_wr_rst_done_reg ,
    d_out,
    wr_clk,
    p_0_in,
    \gen_rst_ic.fifo_wr_rst_i_reg_0 ,
    dest_rst,
    rst,
    Q,
    fifo_wr_rst_done,
    fifo_rd_rst_done,
    fifo_wr_rst_d3);
  output fifo_wr_rst_d2;
  output \gen_rst_ic.fifo_wr_rst_i_reg ;
  output \gen_rst_ic.fifo_wr_rst_done_reg ;
  input d_out;
  input wr_clk;
  input p_0_in;
  input \gen_rst_ic.fifo_wr_rst_i_reg_0 ;
  input dest_rst;
  input rst;
  input [0:0]Q;
  input fifo_wr_rst_done;
  input fifo_rd_rst_done;
  input fifo_wr_rst_d3;

  wire [0:0]Q;
  wire d_out;
  wire dest_rst;
  wire fifo_rd_rst_done;
  wire fifo_wr_rst_d2;
  wire fifo_wr_rst_d3;
  wire fifo_wr_rst_done;
  wire \gen_rst_ic.fifo_wr_rst_done_reg ;
  wire \gen_rst_ic.fifo_wr_rst_i_reg ;
  wire \gen_rst_ic.fifo_wr_rst_i_reg_0 ;
  wire p_0_in;
  wire rst;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(d_out),
        .Q(fifo_wr_rst_d2),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2F22)) 
    \gen_rst_ic.fifo_wr_rst_done_i_1 
       (.I0(fifo_wr_rst_done),
        .I1(fifo_rd_rst_done),
        .I2(fifo_wr_rst_d3),
        .I3(fifo_wr_rst_d2),
        .O(\gen_rst_ic.fifo_wr_rst_done_reg ));
  LUT6 #(
    .INIT(64'h4447444744474444)) 
    \gen_rst_ic.fifo_wr_rst_i_i_1 
       (.I0(p_0_in),
        .I1(\gen_rst_ic.fifo_wr_rst_i_reg_0 ),
        .I2(dest_rst),
        .I3(fifo_wr_rst_d2),
        .I4(rst),
        .I5(Q),
        .O(\gen_rst_ic.fifo_wr_rst_i_reg ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_20
   (d_out_reg,
    dest_rst,
    rd_clk);
  output d_out_reg;
  input dest_rst;
  input rd_clk;

  wire d_out_reg;
  wire dest_rst;
  wire rd_clk;

  (* srl_bus_name = "\U0/onsemi_vita_spi_v3_1_S00_AXI_inst/onsemi_vita_spicore_inst/vita_spi_rxfifo_l/afifo_64i_16o_l/xpm_fifo_base_inst /\xpm_fifo_rst_inst/gen_rst_ic.rrst_rd_inst/gen_pipe_bit " *) 
  (* srl_name = "\U0/onsemi_vita_spi_v3_1_S00_AXI_inst/onsemi_vita_spicore_inst/vita_spi_rxfifo_l/afifo_64i_16o_l/xpm_fifo_base_inst /\xpm_fifo_rst_inst/gen_rst_ic.rrst_rd_inst/gen_pipe_bit[1].pipe_bit_inst/d_out_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    d_out_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rd_clk),
        .D(dest_rst),
        .Q(d_out_reg));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_21
   (\syncstages_ff_reg[0] ,
    SR,
    underflow_i0,
    \count_value_i_reg[0] ,
    \syncstages_ff_reg[1] ,
    rd_clk,
    dest_rst,
    \gen_fwft.curr_fwft_state_reg[1] ,
    rd_en,
    \gen_fwft.empty_fwft_i_reg );
  output \syncstages_ff_reg[0] ;
  output [0:0]SR;
  output underflow_i0;
  output [0:0]\count_value_i_reg[0] ;
  input \syncstages_ff_reg[1] ;
  input rd_clk;
  input dest_rst;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input rd_en;
  input \gen_fwft.empty_fwft_i_reg ;

  wire [0:0]SR;
  wire [0:0]\count_value_i_reg[0] ;
  wire dest_rst;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire rd_clk;
  wire rd_en;
  wire \syncstages_ff_reg[0] ;
  wire \syncstages_ff_reg[1] ;
  wire underflow_i0;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(\syncstages_ff_reg[1] ),
        .Q(\syncstages_ff_reg[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\syncstages_ff_reg[0] ),
        .I1(dest_rst),
        .O(\count_value_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    \rd_data_count_i[4]_i_1 
       (.I0(dest_rst),
        .I1(\syncstages_ff_reg[0] ),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .O(SR));
  LUT4 #(
    .INIT(16'hAAA8)) 
    underflow_i_i_1
       (.I0(rd_en),
        .I1(\gen_fwft.empty_fwft_i_reg ),
        .I2(\syncstages_ff_reg[0] ),
        .I3(dest_rst),
        .O(underflow_i0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_3
   (d_out_reg,
    dest_rst,
    rd_clk);
  output d_out_reg;
  input dest_rst;
  input rd_clk;

  wire d_out_reg;
  wire dest_rst;
  wire rd_clk;

  (* srl_bus_name = "\U0/onsemi_vita_spi_v3_1_S00_AXI_inst/onsemi_vita_spicore_inst/vita_spi_txfifo_l/afifo_64i_16o_l/xpm_fifo_base_inst /\xpm_fifo_rst_inst/gen_rst_ic.rrst_rd_inst/gen_pipe_bit " *) 
  (* srl_name = "\U0/onsemi_vita_spi_v3_1_S00_AXI_inst/onsemi_vita_spicore_inst/vita_spi_txfifo_l/afifo_64i_16o_l/xpm_fifo_base_inst /\xpm_fifo_rst_inst/gen_rst_ic.rrst_rd_inst/gen_pipe_bit[1].pipe_bit_inst/d_out_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    d_out_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rd_clk),
        .D(dest_rst),
        .Q(d_out_reg));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_4
   (\syncstages_ff_reg[0] ,
    SR,
    underflow_i0,
    \count_value_i_reg[0] ,
    \syncstages_ff_reg[1] ,
    rd_clk,
    dest_rst,
    \gen_fwft.curr_fwft_state_reg[1] ,
    rd_en,
    \gen_fwft.empty_fwft_i_reg );
  output \syncstages_ff_reg[0] ;
  output [0:0]SR;
  output underflow_i0;
  output [0:0]\count_value_i_reg[0] ;
  input \syncstages_ff_reg[1] ;
  input rd_clk;
  input dest_rst;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input rd_en;
  input \gen_fwft.empty_fwft_i_reg ;

  wire [0:0]SR;
  wire [0:0]\count_value_i_reg[0] ;
  wire dest_rst;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire rd_clk;
  wire rd_en;
  wire \syncstages_ff_reg[0] ;
  wire \syncstages_ff_reg[1] ;
  wire underflow_i0;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(\syncstages_ff_reg[1] ),
        .Q(\syncstages_ff_reg[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\syncstages_ff_reg[0] ),
        .I1(dest_rst),
        .O(\count_value_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    \rd_data_count_i[4]_i_1 
       (.I0(dest_rst),
        .I1(\syncstages_ff_reg[0] ),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .O(SR));
  LUT4 #(
    .INIT(16'hAAA8)) 
    underflow_i_i_1
       (.I0(rd_en),
        .I1(\gen_fwft.empty_fwft_i_reg ),
        .I2(\syncstages_ff_reg[0] ),
        .I3(dest_rst),
        .O(underflow_i0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec
   (ram_full_i0,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    Q,
    wr_pntr_plus1_pf_carry,
    \count_value_i_reg[3] ,
    \syncstages_ff_reg[1] ,
    D,
    wr_clk);
  output ram_full_i0;
  output [3:0]\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [3:0]\count_value_i_reg[3] ;
  input \syncstages_ff_reg[1] ;
  input [3:0]D;
  input wr_clk;

  wire [3:0]D;
  wire [3:0]Q;
  wire [3:0]\count_value_i_reg[3] ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0 ;
  wire [3:0]\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire ram_full_i0;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;

  LUT6 #(
    .INIT(64'hF82288F288228822)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I1(Q[3]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [3]),
        .I4(\count_value_i_reg[3] [3]),
        .I5(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0 ),
        .O(ram_full_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [2]),
        .I4(Q[1]),
        .I5(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [1]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [0]),
        .I1(\count_value_i_reg[3] [0]),
        .I2(\count_value_i_reg[3] [2]),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [2]),
        .I4(\count_value_i_reg[3] [1]),
        .I5(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [1]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0 ));
  FDRE \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [0]),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [1]),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [2]),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [3]),
        .R(\syncstages_ff_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec_0
   (D,
    Q,
    ram_empty_i0,
    \gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[3] ,
    \gen_fwft.curr_fwft_state_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[3]_0 ,
    SR,
    \dest_graysync_ff_reg[1][3] ,
    rd_clk);
  output [1:0]D;
  output [3:0]Q;
  output ram_empty_i0;
  input \gen_fwft.curr_fwft_state_reg[1] ;
  input [3:0]\count_value_i_reg[3] ;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [3:0]\count_value_i_reg[3]_0 ;
  input [0:0]SR;
  input [3:0]\dest_graysync_ff_reg[1][3] ;
  input rd_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:0]\count_value_i_reg[3] ;
  wire [3:0]\count_value_i_reg[3]_0 ;
  wire [3:0]\dest_graysync_ff_reg[1][3] ;
  wire \gen_fwft.curr_fwft_state_reg[1] ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1]_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;

  LUT6 #(
    .INIT(64'h6666666699996999)) 
    \gen_pf_ic_rc.diff_pntr_pe[0]_i_1 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3] [0]),
        .I2(\gen_fwft.curr_fwft_state_reg[1]_0 [1]),
        .I3(\gen_fwft.curr_fwft_state_reg[1]_0 [0]),
        .I4(rd_en),
        .I5(ram_empty_i),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    \gen_pf_ic_rc.diff_pntr_pe[1]_i_1 
       (.I0(Q[0]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] ),
        .I2(\count_value_i_reg[3] [0]),
        .I3(Q[1]),
        .I4(\count_value_i_reg[3] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hF82288F288228822)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ),
        .I1(\count_value_i_reg[3] [3]),
        .I2(\gen_fwft.curr_fwft_state_reg[1] ),
        .I3(Q[3]),
        .I4(\count_value_i_reg[3]_0 [3]),
        .I5(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3] [0]),
        .I2(\count_value_i_reg[3] [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[3] [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3]_0 [0]),
        .I2(\count_value_i_reg[3]_0 [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[3]_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  FDRE \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [3]),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec_5
   (ram_full_i0,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    Q,
    wr_pntr_plus1_pf_carry,
    \count_value_i_reg[3] ,
    \syncstages_ff_reg[1] ,
    D,
    wr_clk);
  output ram_full_i0;
  output [3:0]\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [3:0]\count_value_i_reg[3] ;
  input \syncstages_ff_reg[1] ;
  input [3:0]D;
  input wr_clk;

  wire [3:0]D;
  wire [3:0]Q;
  wire [3:0]\count_value_i_reg[3] ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0 ;
  wire [3:0]\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire ram_full_i0;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;

  LUT6 #(
    .INIT(64'hF82288F288228822)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I1(Q[3]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [3]),
        .I4(\count_value_i_reg[3] [3]),
        .I5(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0 ),
        .O(ram_full_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [2]),
        .I4(Q[1]),
        .I5(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [1]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [0]),
        .I1(\count_value_i_reg[3] [0]),
        .I2(\count_value_i_reg[3] [2]),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [2]),
        .I4(\count_value_i_reg[3] [1]),
        .I5(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [1]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0 ));
  FDRE \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [0]),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [1]),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [2]),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [3]),
        .R(\syncstages_ff_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec_7
   (D,
    Q,
    ram_empty_i0,
    \gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[3] ,
    \gen_fwft.curr_fwft_state_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[3]_0 ,
    SR,
    \dest_graysync_ff_reg[1][3] ,
    rd_clk);
  output [1:0]D;
  output [3:0]Q;
  output ram_empty_i0;
  input \gen_fwft.curr_fwft_state_reg[1] ;
  input [3:0]\count_value_i_reg[3] ;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [3:0]\count_value_i_reg[3]_0 ;
  input [0:0]SR;
  input [3:0]\dest_graysync_ff_reg[1][3] ;
  input rd_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:0]\count_value_i_reg[3] ;
  wire [3:0]\count_value_i_reg[3]_0 ;
  wire [3:0]\dest_graysync_ff_reg[1][3] ;
  wire \gen_fwft.curr_fwft_state_reg[1] ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1]_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;

  LUT6 #(
    .INIT(64'h6666666699996999)) 
    \gen_pf_ic_rc.diff_pntr_pe[0]_i_1 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3] [0]),
        .I2(\gen_fwft.curr_fwft_state_reg[1]_0 [1]),
        .I3(\gen_fwft.curr_fwft_state_reg[1]_0 [0]),
        .I4(rd_en),
        .I5(ram_empty_i),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    \gen_pf_ic_rc.diff_pntr_pe[1]_i_1 
       (.I0(Q[0]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] ),
        .I2(\count_value_i_reg[3] [0]),
        .I3(Q[1]),
        .I4(\count_value_i_reg[3] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hF82288F288228822)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ),
        .I1(\count_value_i_reg[3] [3]),
        .I2(\gen_fwft.curr_fwft_state_reg[1] ),
        .I3(Q[3]),
        .I4(\count_value_i_reg[3]_0 [3]),
        .I5(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3] [0]),
        .I2(\count_value_i_reg[3] [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[3] [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3]_0 [0]),
        .I2(\count_value_i_reg[3]_0 [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[3]_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  FDRE \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][3] [3]),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec__parameterized0
   (D,
    Q,
    \rd_data_count_i_reg[4] ,
    \count_value_i_reg[3] ,
    count_value_i,
    SR,
    \dest_graysync_ff_reg[3][4] ,
    rd_clk);
  output [0:0]D;
  output [4:0]Q;
  output \rd_data_count_i_reg[4] ;
  input [2:0]\count_value_i_reg[3] ;
  input [1:0]count_value_i;
  input [0:0]SR;
  input [4:0]\dest_graysync_ff_reg[3][4] ;
  input rd_clk;

  wire [0:0]D;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [1:0]count_value_i;
  wire [2:0]\count_value_i_reg[3] ;
  wire [4:0]\dest_graysync_ff_reg[3][4] ;
  wire rd_clk;
  wire \rd_data_count_i_reg[4] ;

  LUT6 #(
    .INIT(64'hC33C96696996C33C)) 
    \rd_data_count_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\count_value_i_reg[3] [1]),
        .I3(count_value_i[1]),
        .I4(count_value_i[0]),
        .I5(\count_value_i_reg[3] [0]),
        .O(D));
  LUT2 #(
    .INIT(4'h9)) 
    \rd_data_count_i[4]_i_5 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[3] [2]),
        .O(\rd_data_count_i_reg[4] ));
  FDRE \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [4]),
        .Q(Q[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec__parameterized0_8
   (D,
    Q,
    \rd_data_count_i_reg[4] ,
    \count_value_i_reg[3] ,
    count_value_i,
    SR,
    \dest_graysync_ff_reg[3][4] ,
    rd_clk);
  output [0:0]D;
  output [4:0]Q;
  output \rd_data_count_i_reg[4] ;
  input [2:0]\count_value_i_reg[3] ;
  input [1:0]count_value_i;
  input [0:0]SR;
  input [4:0]\dest_graysync_ff_reg[3][4] ;
  input rd_clk;

  wire [0:0]D;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [1:0]count_value_i;
  wire [2:0]\count_value_i_reg[3] ;
  wire [4:0]\dest_graysync_ff_reg[3][4] ;
  wire rd_clk;
  wire \rd_data_count_i_reg[4] ;

  LUT6 #(
    .INIT(64'hC33C96696996C33C)) 
    \rd_data_count_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\count_value_i_reg[3] [1]),
        .I3(count_value_i[1]),
        .I4(count_value_i[0]),
        .I5(\count_value_i_reg[3] [0]),
        .O(D));
  LUT2 #(
    .INIT(4'h9)) 
    \rd_data_count_i[4]_i_5 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[3] [2]),
        .O(\rd_data_count_i_reg[4] ));
  FDRE \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[3][4] [4]),
        .Q(Q[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec__parameterized1
   (D,
    Q,
    \count_value_i_reg[4] ,
    \syncstages_ff_reg[1] ,
    \dest_graysync_ff_reg[1][4] ,
    wr_clk);
  output [2:0]D;
  output [2:0]Q;
  input [4:0]\count_value_i_reg[4] ;
  input \syncstages_ff_reg[1] ;
  input [4:0]\dest_graysync_ff_reg[1][4] ;
  input wr_clk;

  wire [2:0]D;
  wire [2:0]Q;
  wire [4:0]\count_value_i_reg[4] ;
  wire [4:0]\dest_graysync_ff_reg[1][4] ;
  wire \reg_out_i_reg_n_0_[3] ;
  wire \reg_out_i_reg_n_0_[4] ;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;
  wire \wr_data_count_i[4]_i_2_n_0 ;

  FDRE \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [0]),
        .Q(Q[0]),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [1]),
        .Q(Q[1]),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [2]),
        .Q(Q[2]),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [3]),
        .Q(\reg_out_i_reg_n_0_[3] ),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [4]),
        .Q(\reg_out_i_reg_n_0_[4] ),
        .R(\syncstages_ff_reg[1] ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \wr_data_count_i[1]_i_1 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[4] [0]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[4] [1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \wr_data_count_i[3]_i_1 
       (.I0(\wr_data_count_i[4]_i_2_n_0 ),
        .I1(\reg_out_i_reg_n_0_[3] ),
        .I2(\count_value_i_reg[4] [3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \wr_data_count_i[4]_i_1 
       (.I0(\wr_data_count_i[4]_i_2_n_0 ),
        .I1(\count_value_i_reg[4] [3]),
        .I2(\reg_out_i_reg_n_0_[3] ),
        .I3(\reg_out_i_reg_n_0_[4] ),
        .I4(\count_value_i_reg[4] [4]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \wr_data_count_i[4]_i_2 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[4] [2]),
        .I2(\count_value_i_reg[4] [0]),
        .I3(Q[0]),
        .I4(\count_value_i_reg[4] [1]),
        .I5(Q[1]),
        .O(\wr_data_count_i[4]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_vec__parameterized1_6
   (D,
    Q,
    \count_value_i_reg[4] ,
    \syncstages_ff_reg[1] ,
    \dest_graysync_ff_reg[1][4] ,
    wr_clk);
  output [2:0]D;
  output [2:0]Q;
  input [4:0]\count_value_i_reg[4] ;
  input \syncstages_ff_reg[1] ;
  input [4:0]\dest_graysync_ff_reg[1][4] ;
  input wr_clk;

  wire [2:0]D;
  wire [2:0]Q;
  wire [4:0]\count_value_i_reg[4] ;
  wire [4:0]\dest_graysync_ff_reg[1][4] ;
  wire \reg_out_i_reg_n_0_[3] ;
  wire \reg_out_i_reg_n_0_[4] ;
  wire \syncstages_ff_reg[1] ;
  wire wr_clk;
  wire \wr_data_count_i[4]_i_2_n_0 ;

  FDRE \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [0]),
        .Q(Q[0]),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [1]),
        .Q(Q[1]),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [2]),
        .Q(Q[2]),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [3]),
        .Q(\reg_out_i_reg_n_0_[3] ),
        .R(\syncstages_ff_reg[1] ));
  FDRE \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff_reg[1][4] [4]),
        .Q(\reg_out_i_reg_n_0_[4] ),
        .R(\syncstages_ff_reg[1] ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \wr_data_count_i[1]_i_1 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[4] [0]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[4] [1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \wr_data_count_i[3]_i_1 
       (.I0(\wr_data_count_i[4]_i_2_n_0 ),
        .I1(\reg_out_i_reg_n_0_[3] ),
        .I2(\count_value_i_reg[4] [3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \wr_data_count_i[4]_i_1 
       (.I0(\wr_data_count_i[4]_i_2_n_0 ),
        .I1(\count_value_i_reg[4] [3]),
        .I2(\reg_out_i_reg_n_0_[3] ),
        .I3(\reg_out_i_reg_n_0_[4] ),
        .I4(\count_value_i_reg[4] [4]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \wr_data_count_i[4]_i_2 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[4] [2]),
        .I2(\count_value_i_reg[4] [0]),
        .I3(Q[0]),
        .I4(\count_value_i_reg[4] [1]),
        .I5(Q[1]),
        .O(\wr_data_count_i[4]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_rst
   (dest_rst,
    \count_value_i_reg[1] ,
    \count_value_i_reg[1]_0 ,
    D,
    wr_pntr_plus1_pf_carry,
    overflow_i0,
    \count_value_i_reg[0] ,
    SR,
    underflow_i0,
    \count_value_i_reg[0]_0 ,
    \gen_pf_ic_rc.prog_full_i_reg ,
    \gen_pf_ic_rc.diff_pntr_pf_q_reg[4] ,
    rd_clk,
    wr_clk,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    wr_en,
    Q,
    \count_value_i_reg[1]_1 ,
    \count_value_i_reg[1]_2 ,
    \gen_fwft.curr_fwft_state_reg[1] ,
    rd_en,
    \gen_fwft.empty_fwft_i_reg ,
    \gen_pf_ic_rc.prog_full_i_reg_0 ,
    rst_d1,
    rst,
    \reg_out_i_reg[0] );
  output dest_rst;
  output [1:0]\count_value_i_reg[1] ;
  output [1:0]\count_value_i_reg[1]_0 ;
  output [1:0]D;
  output wr_pntr_plus1_pf_carry;
  output overflow_i0;
  output \count_value_i_reg[0] ;
  output [0:0]SR;
  output underflow_i0;
  output [0:0]\count_value_i_reg[0]_0 ;
  output \gen_pf_ic_rc.prog_full_i_reg ;
  output \gen_pf_ic_rc.diff_pntr_pf_q_reg[4] ;
  input rd_clk;
  input wr_clk;
  input \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input [1:0]Q;
  input [1:0]\count_value_i_reg[1]_1 ;
  input [1:0]\count_value_i_reg[1]_2 ;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input rd_en;
  input \gen_fwft.empty_fwft_i_reg ;
  input \gen_pf_ic_rc.prog_full_i_reg_0 ;
  input rst_d1;
  input rst;
  input [0:0]\reg_out_i_reg[0] ;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \count_value_i_reg[0] ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1] ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [1:0]\count_value_i_reg[1]_1 ;
  wire [1:0]\count_value_i_reg[1]_2 ;
  wire dest_rst;
  wire fifo_rd_rst_d3;
  wire fifo_rd_rst_d3_wr_d2;
  wire fifo_rd_rst_done;
  wire fifo_rd_rst_wr_i;
  wire fifo_wr_rst_d2;
  wire fifo_wr_rst_d3;
  wire fifo_wr_rst_done;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_pf_ic_rc.diff_pntr_pf_q_reg[4] ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.prog_full_i_reg ;
  wire \gen_pf_ic_rc.prog_full_i_reg_0 ;
  wire \gen_rst_ic.fifo_rd_rst_done_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_i_reg_n_0 ;
  wire \gen_rst_ic.wrst_wr_inst_n_1 ;
  wire \gen_rst_ic.wrst_wr_inst_n_2 ;
  wire overflow_i0;
  wire p_0_in;
  wire [1:1]power_on_rst;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rd_en;
  wire [0:0]\reg_out_i_reg[0] ;
  wire rst;
  wire rst_d1;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;

  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFB0004)) 
    \count_value_i[0]_i_1 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I1(wr_en),
        .I2(fifo_rd_rst_wr_i),
        .I3(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I4(Q[0]),
        .O(\count_value_i_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFB0004)) 
    \count_value_i[0]_i_1__0 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I1(wr_en),
        .I2(fifo_rd_rst_wr_i),
        .I3(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I4(\count_value_i_reg[1]_1 [0]),
        .O(\count_value_i_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFB0004)) 
    \count_value_i[0]_i_1__1 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I1(wr_en),
        .I2(fifo_rd_rst_wr_i),
        .I3(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I4(\count_value_i_reg[1]_2 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00100000)) 
    \count_value_i[1]_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I1(fifo_rd_rst_wr_i),
        .I2(wr_en),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count_value_i_reg[1] [1]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00100000)) 
    \count_value_i[1]_i_1__0 
       (.I0(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I1(fifo_rd_rst_wr_i),
        .I2(wr_en),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I4(\count_value_i_reg[1]_1 [0]),
        .I5(\count_value_i_reg[1]_1 [1]),
        .O(\count_value_i_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00100000)) 
    \count_value_i[1]_i_1__1 
       (.I0(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I1(fifo_rd_rst_wr_i),
        .I2(wr_en),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I4(\count_value_i_reg[1]_2 [0]),
        .I5(\count_value_i_reg[1]_2 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h4444444444444D44)) 
    \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_2 
       (.I0(\reg_out_i_reg[0] ),
        .I1(\count_value_i_reg[1]_1 [0]),
        .I2(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I3(wr_en),
        .I4(fifo_rd_rst_wr_i),
        .I5(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .O(\gen_pf_ic_rc.diff_pntr_pf_q_reg[4] ));
  LUT5 #(
    .INIT(32'h000000A2)) 
    \gen_pf_ic_rc.prog_full_i_i_1 
       (.I0(\gen_pf_ic_rc.prog_full_i_reg_0 ),
        .I1(rst_d1),
        .I2(rst),
        .I3(fifo_rd_rst_wr_i),
        .I4(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .O(\gen_pf_ic_rc.prog_full_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_d3_wr_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(fifo_rd_rst_wr_i),
        .Q(fifo_rd_rst_d3_wr_d2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \gen_rst_ic.fifo_rd_rst_done_i_1 
       (.I0(fifo_wr_rst_done),
        .I1(fifo_rd_rst_done),
        .I2(fifo_rd_rst_d3_wr_d2),
        .I3(fifo_rd_rst_wr_i),
        .O(\gen_rst_ic.fifo_rd_rst_done_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_done_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_done_i_1_n_0 ),
        .Q(fifo_rd_rst_done),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_d3_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(fifo_wr_rst_d2),
        .Q(fifo_wr_rst_d3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_done_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wrst_wr_inst_n_2 ),
        .Q(fifo_wr_rst_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_rst_ic.fifo_wr_rst_i_i_2 
       (.I0(fifo_wr_rst_done),
        .I1(fifo_rd_rst_done),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wrst_wr_inst_n_1 ),
        .Q(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .R(1'b0));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_reg_pipe_bit__parameterized0 \gen_rst_ic.rrst_rd_inst 
       (.SR(SR),
        .\count_value_i_reg[0] (\count_value_i_reg[0]_0 ),
        .dest_rst(dest_rst),
        .fifo_rd_rst_d3(fifo_rd_rst_d3),
        .\gen_fwft.curr_fwft_state_reg[1] (\gen_fwft.curr_fwft_state_reg[1] ),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .underflow_i0(underflow_i0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_sync_rst__5 \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(fifo_rd_rst_wr_i),
        .src_rst(fifo_rd_rst_d3));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_sync_rst__4 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(dest_rst),
        .src_rst(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_reg_pipe_bit \gen_rst_ic.wrst_wr_inst 
       (.Q(power_on_rst),
        .dest_rst(fifo_rd_rst_wr_i),
        .fifo_rd_rst_done(fifo_rd_rst_done),
        .fifo_wr_rst_d2(fifo_wr_rst_d2),
        .fifo_wr_rst_d3(fifo_wr_rst_d3),
        .fifo_wr_rst_done(fifo_wr_rst_done),
        .\gen_rst_ic.fifo_wr_rst_done_reg (\gen_rst_ic.wrst_wr_inst_n_2 ),
        .\gen_rst_ic.fifo_wr_rst_i_reg (\gen_rst_ic.wrst_wr_inst_n_1 ),
        .\gen_rst_ic.fifo_wr_rst_i_reg_0 (\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .p_0_in(p_0_in),
        .rst(rst),
        .wr_clk(wr_clk));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I1(fifo_rd_rst_wr_i),
        .I2(wr_en),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .O(wr_pntr_plus1_pf_carry));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    overflow_i_i_1
       (.I0(wr_en),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I2(fifo_rd_rst_wr_i),
        .I3(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .O(overflow_i0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(power_on_rst),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(fifo_rd_rst_wr_i),
        .I1(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .O(\count_value_i_reg[0] ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_rst__xdcDup__1
   (dest_rst,
    \count_value_i_reg[1] ,
    \count_value_i_reg[1]_0 ,
    D,
    wr_pntr_plus1_pf_carry,
    overflow_i0,
    \count_value_i_reg[0] ,
    SR,
    underflow_i0,
    \count_value_i_reg[0]_0 ,
    \gen_pf_ic_rc.prog_full_i_reg ,
    \gen_pf_ic_rc.diff_pntr_pf_q_reg[4] ,
    rd_clk,
    wr_clk,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    wr_en,
    Q,
    \count_value_i_reg[1]_1 ,
    \count_value_i_reg[1]_2 ,
    \gen_fwft.curr_fwft_state_reg[1] ,
    rd_en,
    \gen_fwft.empty_fwft_i_reg ,
    \gen_pf_ic_rc.prog_full_i_reg_0 ,
    rst_d1,
    rst,
    \reg_out_i_reg[0] );
  output dest_rst;
  output [1:0]\count_value_i_reg[1] ;
  output [1:0]\count_value_i_reg[1]_0 ;
  output [1:0]D;
  output wr_pntr_plus1_pf_carry;
  output overflow_i0;
  output \count_value_i_reg[0] ;
  output [0:0]SR;
  output underflow_i0;
  output [0:0]\count_value_i_reg[0]_0 ;
  output \gen_pf_ic_rc.prog_full_i_reg ;
  output \gen_pf_ic_rc.diff_pntr_pf_q_reg[4] ;
  input rd_clk;
  input wr_clk;
  input \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input [1:0]Q;
  input [1:0]\count_value_i_reg[1]_1 ;
  input [1:0]\count_value_i_reg[1]_2 ;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input rd_en;
  input \gen_fwft.empty_fwft_i_reg ;
  input \gen_pf_ic_rc.prog_full_i_reg_0 ;
  input rst_d1;
  input rst;
  input [0:0]\reg_out_i_reg[0] ;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \count_value_i_reg[0] ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1] ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [1:0]\count_value_i_reg[1]_1 ;
  wire [1:0]\count_value_i_reg[1]_2 ;
  wire dest_rst;
  wire fifo_rd_rst_d3;
  wire fifo_rd_rst_d3_wr_d2;
  wire fifo_rd_rst_done;
  wire fifo_rd_rst_wr_i;
  wire fifo_wr_rst_d2;
  wire fifo_wr_rst_d3;
  wire fifo_wr_rst_done;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_pf_ic_rc.diff_pntr_pf_q_reg[4] ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.prog_full_i_reg ;
  wire \gen_pf_ic_rc.prog_full_i_reg_0 ;
  wire \gen_rst_ic.fifo_rd_rst_done_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_i_reg_n_0 ;
  wire \gen_rst_ic.wrst_wr_inst_n_1 ;
  wire \gen_rst_ic.wrst_wr_inst_n_2 ;
  wire overflow_i0;
  wire p_0_in;
  wire [1:1]power_on_rst;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rd_en;
  wire [0:0]\reg_out_i_reg[0] ;
  wire rst;
  wire rst_d1;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFB0004)) 
    \count_value_i[0]_i_1 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I1(wr_en),
        .I2(fifo_rd_rst_wr_i),
        .I3(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I4(Q[0]),
        .O(\count_value_i_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFB0004)) 
    \count_value_i[0]_i_1__0 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I1(wr_en),
        .I2(fifo_rd_rst_wr_i),
        .I3(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I4(\count_value_i_reg[1]_1 [0]),
        .O(\count_value_i_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFB0004)) 
    \count_value_i[0]_i_1__1 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I1(wr_en),
        .I2(fifo_rd_rst_wr_i),
        .I3(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I4(\count_value_i_reg[1]_2 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00100000)) 
    \count_value_i[1]_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I1(fifo_rd_rst_wr_i),
        .I2(wr_en),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count_value_i_reg[1] [1]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00100000)) 
    \count_value_i[1]_i_1__0 
       (.I0(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I1(fifo_rd_rst_wr_i),
        .I2(wr_en),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I4(\count_value_i_reg[1]_1 [0]),
        .I5(\count_value_i_reg[1]_1 [1]),
        .O(\count_value_i_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'hFFEFFFFF00100000)) 
    \count_value_i[1]_i_1__1 
       (.I0(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I1(fifo_rd_rst_wr_i),
        .I2(wr_en),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I4(\count_value_i_reg[1]_2 [0]),
        .I5(\count_value_i_reg[1]_2 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h4444444444444D44)) 
    \gen_pf_ic_rc.diff_pntr_pf_q[4]_i_2 
       (.I0(\reg_out_i_reg[0] ),
        .I1(\count_value_i_reg[1]_1 [0]),
        .I2(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I3(wr_en),
        .I4(fifo_rd_rst_wr_i),
        .I5(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .O(\gen_pf_ic_rc.diff_pntr_pf_q_reg[4] ));
  LUT5 #(
    .INIT(32'h000000A2)) 
    \gen_pf_ic_rc.prog_full_i_i_1 
       (.I0(\gen_pf_ic_rc.prog_full_i_reg_0 ),
        .I1(rst_d1),
        .I2(rst),
        .I3(fifo_rd_rst_wr_i),
        .I4(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .O(\gen_pf_ic_rc.prog_full_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_d3_wr_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(fifo_rd_rst_wr_i),
        .Q(fifo_rd_rst_d3_wr_d2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \gen_rst_ic.fifo_rd_rst_done_i_1 
       (.I0(fifo_wr_rst_done),
        .I1(fifo_rd_rst_done),
        .I2(fifo_rd_rst_d3_wr_d2),
        .I3(fifo_rd_rst_wr_i),
        .O(\gen_rst_ic.fifo_rd_rst_done_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_done_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_done_i_1_n_0 ),
        .Q(fifo_rd_rst_done),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_d3_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(fifo_wr_rst_d2),
        .Q(fifo_wr_rst_d3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_done_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wrst_wr_inst_n_2 ),
        .Q(fifo_wr_rst_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_rst_ic.fifo_wr_rst_i_i_2 
       (.I0(fifo_wr_rst_done),
        .I1(fifo_rd_rst_done),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wrst_wr_inst_n_1 ),
        .Q(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .R(1'b0));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_reg_pipe_bit__parameterized0_16 \gen_rst_ic.rrst_rd_inst 
       (.SR(SR),
        .\count_value_i_reg[0] (\count_value_i_reg[0]_0 ),
        .dest_rst(dest_rst),
        .fifo_rd_rst_d3(fifo_rd_rst_d3),
        .\gen_fwft.curr_fwft_state_reg[1] (\gen_fwft.curr_fwft_state_reg[1] ),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .underflow_i0(underflow_i0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(fifo_rd_rst_wr_i),
        .src_rst(fifo_rd_rst_d3));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_cdc_sync_rst__6 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(dest_rst),
        .src_rst(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_reg_pipe_bit_17 \gen_rst_ic.wrst_wr_inst 
       (.Q(power_on_rst),
        .dest_rst(fifo_rd_rst_wr_i),
        .fifo_rd_rst_done(fifo_rd_rst_done),
        .fifo_wr_rst_d2(fifo_wr_rst_d2),
        .fifo_wr_rst_d3(fifo_wr_rst_d3),
        .fifo_wr_rst_done(fifo_wr_rst_done),
        .\gen_rst_ic.fifo_wr_rst_done_reg (\gen_rst_ic.wrst_wr_inst_n_2 ),
        .\gen_rst_ic.fifo_wr_rst_i_reg (\gen_rst_ic.wrst_wr_inst_n_1 ),
        .\gen_rst_ic.fifo_wr_rst_i_reg_0 (\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .p_0_in(p_0_in),
        .rst(rst),
        .wr_clk(wr_clk));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .I1(fifo_rd_rst_wr_i),
        .I2(wr_en),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .O(wr_pntr_plus1_pf_carry));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    overflow_i_i_1
       (.I0(wr_en),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I2(fifo_rd_rst_wr_i),
        .I3(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .O(overflow_i0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(power_on_rst),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(fifo_rd_rst_wr_i),
        .I1(\gen_rst_ic.fifo_wr_rst_i_reg_n_0 ),
        .O(\count_value_i_reg[0] ));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "32" *) (* BYTE_WRITE_WIDTH_B = "32" *) (* CLOCKING_MODE = "1" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "512" *) 
(* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) 
(* ORIG_REF_NAME = "xpm_memory_base" *) (* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) 
(* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "16" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "32" *) (* P_MIN_WIDTH_DATA_A = "32" *) (* P_MIN_WIDTH_DATA_B = "32" *) 
(* P_MIN_WIDTH_DATA_ECC = "32" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) 
(* P_WIDTH_ADDR_READ_B = "4" *) (* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) 
(* P_WIDTH_COL_WRITE_A = "32" *) (* P_WIDTH_COL_WRITE_B = "32" *) (* READ_DATA_WIDTH_A = "32" *) 
(* READ_DATA_WIDTH_B = "32" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* USE_MEM_INIT = "1" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "32" *) 
(* WRITE_DATA_WIDTH_B = "32" *) (* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) 
(* XPM_MODULE = "TRUE" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [31:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [31:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [31:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [31:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire [31:0]doutb_reg0;
  wire ena;
  wire enb;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[0] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[10] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[11] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[12] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[13] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[14] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[15] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[16] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[17] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[18] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[19] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[1] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[20] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[21] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[22] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[23] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[24] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[25] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[26] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[27] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[28] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[29] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[2] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[30] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[31] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[3] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[4] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[5] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[6] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[7] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[8] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[9] ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOB_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOC_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[0] ),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[10] ),
        .Q(doutb[10]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[11] ),
        .Q(doutb[11]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[12] ),
        .Q(doutb[12]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[13] ),
        .Q(doutb[13]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][14] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[14] ),
        .Q(doutb[14]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][15] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[15] ),
        .Q(doutb[15]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][16] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[16] ),
        .Q(doutb[16]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][17] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[17] ),
        .Q(doutb[17]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][18] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[18] ),
        .Q(doutb[18]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][19] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[19] ),
        .Q(doutb[19]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[1] ),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][20] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[20] ),
        .Q(doutb[20]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][21] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[21] ),
        .Q(doutb[21]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][22] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[22] ),
        .Q(doutb[22]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][23] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[23] ),
        .Q(doutb[23]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][24] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[24] ),
        .Q(doutb[24]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][25] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[25] ),
        .Q(doutb[25]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][26] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[26] ),
        .Q(doutb[26]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][27] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[27] ),
        .Q(doutb[27]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[28] ),
        .Q(doutb[28]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][29] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[29] ),
        .Q(doutb[29]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[2] ),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][30] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[30] ),
        .Q(doutb[30]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][31] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[31] ),
        .Q(doutb[31]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[3] ),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[4] ),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[5] ),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[6] ),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[7] ),
        .Q(doutb[7]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[8] ),
        .Q(doutb[8]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[9] ),
        .Q(doutb[9]),
        .R(rstb));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1 
       (.I0(enb),
        .I1(web),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[0]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[10] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[10]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[11] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[11]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[12] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[12]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[13] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[13]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[14] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[14]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[15] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[15]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[16] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[16]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[17] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[17]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[18] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[18]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[19] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[19]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[1]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[20] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[20]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[21] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[21]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[22] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[22]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[23] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[23]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[24] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[24]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[25]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[26] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[26]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[27] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[27]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[28] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[28]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[29] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[29]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[2]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[30] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[30]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[31] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[31]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[3]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[4]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[5]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[6]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[7]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[8] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[8]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[9] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[9]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[9] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_reg0[1:0]),
        .DOB(doutb_reg0[3:2]),
        .DOC(doutb_reg0[5:4]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[13:12]),
        .DIB(dina[15:14]),
        .DIC(dina[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_reg0[13:12]),
        .DOB(doutb_reg0[15:14]),
        .DOC(doutb_reg0[17:16]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[19:18]),
        .DIB(dina[21:20]),
        .DIC(dina[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_reg0[19:18]),
        .DOB(doutb_reg0[21:20]),
        .DOC(doutb_reg0[23:22]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[25:24]),
        .DIB(dina[27:26]),
        .DIC(dina[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_reg0[25:24]),
        .DOB(doutb_reg0[27:26]),
        .DOC(doutb_reg0[29:28]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(doutb_reg0[31:30]),
        .DOB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOB_UNCONNECTED [1:0]),
        .DOC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[7:6]),
        .DIB(dina[9:8]),
        .DIC(dina[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_reg0[7:6]),
        .DOB(doutb_reg0[9:8]),
        .DOC(doutb_reg0[11:10]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "32" *) (* BYTE_WRITE_WIDTH_B = "32" *) (* CLOCKING_MODE = "1" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "512" *) 
(* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) 
(* ORIG_REF_NAME = "xpm_memory_base" *) (* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) 
(* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "16" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "32" *) (* P_MIN_WIDTH_DATA_A = "32" *) (* P_MIN_WIDTH_DATA_B = "32" *) 
(* P_MIN_WIDTH_DATA_ECC = "32" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) 
(* P_WIDTH_ADDR_READ_B = "4" *) (* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) 
(* P_WIDTH_COL_WRITE_A = "32" *) (* P_WIDTH_COL_WRITE_B = "32" *) (* READ_DATA_WIDTH_A = "32" *) 
(* READ_DATA_WIDTH_B = "32" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* USE_MEM_INIT = "1" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "32" *) 
(* WRITE_DATA_WIDTH_B = "32" *) (* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) 
(* XPM_MODULE = "TRUE" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_memory_base__2
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [31:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [31:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [31:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [31:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire [31:0]doutb_reg0;
  wire ena;
  wire enb;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[0] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[10] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[11] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[12] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[13] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[14] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[15] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[16] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[17] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[18] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[19] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[1] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[20] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[21] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[22] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[23] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[24] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[25] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[26] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[27] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[28] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[29] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[2] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[30] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[31] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[3] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[4] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[5] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[6] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[7] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[8] ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[9] ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOB_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOC_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[0] ),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[10] ),
        .Q(doutb[10]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[11] ),
        .Q(doutb[11]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[12] ),
        .Q(doutb[12]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[13] ),
        .Q(doutb[13]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][14] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[14] ),
        .Q(doutb[14]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][15] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[15] ),
        .Q(doutb[15]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][16] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[16] ),
        .Q(doutb[16]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][17] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[17] ),
        .Q(doutb[17]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][18] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[18] ),
        .Q(doutb[18]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][19] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[19] ),
        .Q(doutb[19]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[1] ),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][20] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[20] ),
        .Q(doutb[20]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][21] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[21] ),
        .Q(doutb[21]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][22] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[22] ),
        .Q(doutb[22]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][23] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[23] ),
        .Q(doutb[23]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][24] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[24] ),
        .Q(doutb[24]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][25] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[25] ),
        .Q(doutb[25]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][26] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[26] ),
        .Q(doutb[26]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][27] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[27] ),
        .Q(doutb[27]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[28] ),
        .Q(doutb[28]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][29] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[29] ),
        .Q(doutb[29]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[2] ),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][30] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[30] ),
        .Q(doutb[30]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][31] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[31] ),
        .Q(doutb[31]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[3] ),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[4] ),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[5] ),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[6] ),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[7] ),
        .Q(doutb[7]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[8] ),
        .Q(doutb[8]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[9] ),
        .Q(doutb[9]),
        .R(rstb));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1 
       (.I0(enb),
        .I1(web),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[0]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[10] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[10]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[11] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[11]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[12] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[12]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[13] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[13]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[14] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[14]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[15] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[15]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[16] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[16]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[17] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[17]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[18] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[18]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[19] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[19]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[1]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[20] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[20]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[21] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[21]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[22] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[22]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[23] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[23]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[24] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[24]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[25] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[25]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[26] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[26]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[27] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[27]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[28] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[28]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[29] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[29]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[2]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[30] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[30]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[31] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[31]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[3]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[4]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[5]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[6]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[7]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[8] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[8]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[9] 
       (.C(clkb),
        .CE(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[31]_i_1_n_0 ),
        .D(doutb_reg0[9]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg_n_0_[9] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_reg0[1:0]),
        .DOB(doutb_reg0[3:2]),
        .DOC(doutb_reg0[5:4]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[13:12]),
        .DIB(dina[15:14]),
        .DIC(dina[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_reg0[13:12]),
        .DOB(doutb_reg0[15:14]),
        .DOC(doutb_reg0[17:16]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_17_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[19:18]),
        .DIB(dina[21:20]),
        .DIC(dina[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_reg0[19:18]),
        .DOB(doutb_reg0[21:20]),
        .DOC(doutb_reg0[23:22]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_18_23_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[25:24]),
        .DIB(dina[27:26]),
        .DIC(dina[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_reg0[25:24]),
        .DOB(doutb_reg0[27:26]),
        .DOC(doutb_reg0[29:28]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_24_29_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(doutb_reg0[31:30]),
        .DOB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOB_UNCONNECTED [1:0]),
        .DOC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_30_31_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[7:6]),
        .DIB(dina[9:8]),
        .DIC(dina[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(doutb_reg0[7:6]),
        .DOB(doutb_reg0[9:8]),
        .DOC(doutb_reg0[11:10]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_reg_pipe_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_reg_pipe_bit
   (fifo_wr_rst_d2,
    \gen_rst_ic.fifo_wr_rst_i_reg ,
    \gen_rst_ic.fifo_wr_rst_done_reg ,
    \gen_rst_ic.fifo_wr_rst_i_reg_0 ,
    wr_clk,
    p_0_in,
    dest_rst,
    rst,
    Q,
    fifo_wr_rst_done,
    fifo_rd_rst_done,
    fifo_wr_rst_d3);
  output fifo_wr_rst_d2;
  output \gen_rst_ic.fifo_wr_rst_i_reg ;
  output \gen_rst_ic.fifo_wr_rst_done_reg ;
  input \gen_rst_ic.fifo_wr_rst_i_reg_0 ;
  input wr_clk;
  input p_0_in;
  input dest_rst;
  input rst;
  input [0:0]Q;
  input fifo_wr_rst_done;
  input fifo_rd_rst_done;
  input fifo_wr_rst_d3;

  wire [0:0]Q;
  wire d_out;
  wire dest_rst;
  wire fifo_rd_rst_done;
  wire fifo_wr_rst_d2;
  wire fifo_wr_rst_d3;
  wire fifo_wr_rst_done;
  wire \gen_rst_ic.fifo_wr_rst_done_reg ;
  wire \gen_rst_ic.fifo_wr_rst_i_reg ;
  wire \gen_rst_ic.fifo_wr_rst_i_reg_0 ;
  wire p_0_in;
  wire rst;
  wire wr_clk;

  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_1 \gen_pipe_bit[0].pipe_bit_inst 
       (.d_out(d_out),
        .\gen_rst_ic.fifo_wr_rst_i_reg (\gen_rst_ic.fifo_wr_rst_i_reg_0 ),
        .wr_clk(wr_clk));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_2 \gen_pipe_bit[1].pipe_bit_inst 
       (.Q(Q),
        .d_out(d_out),
        .dest_rst(dest_rst),
        .fifo_rd_rst_done(fifo_rd_rst_done),
        .fifo_wr_rst_d2(fifo_wr_rst_d2),
        .fifo_wr_rst_d3(fifo_wr_rst_d3),
        .fifo_wr_rst_done(fifo_wr_rst_done),
        .\gen_rst_ic.fifo_wr_rst_done_reg (\gen_rst_ic.fifo_wr_rst_done_reg ),
        .\gen_rst_ic.fifo_wr_rst_i_reg (\gen_rst_ic.fifo_wr_rst_i_reg ),
        .\gen_rst_ic.fifo_wr_rst_i_reg_0 (\gen_rst_ic.fifo_wr_rst_i_reg_0 ),
        .p_0_in(p_0_in),
        .rst(rst),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "xpm_reg_pipe_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_reg_pipe_bit_17
   (fifo_wr_rst_d2,
    \gen_rst_ic.fifo_wr_rst_i_reg ,
    \gen_rst_ic.fifo_wr_rst_done_reg ,
    \gen_rst_ic.fifo_wr_rst_i_reg_0 ,
    wr_clk,
    p_0_in,
    dest_rst,
    rst,
    Q,
    fifo_wr_rst_done,
    fifo_rd_rst_done,
    fifo_wr_rst_d3);
  output fifo_wr_rst_d2;
  output \gen_rst_ic.fifo_wr_rst_i_reg ;
  output \gen_rst_ic.fifo_wr_rst_done_reg ;
  input \gen_rst_ic.fifo_wr_rst_i_reg_0 ;
  input wr_clk;
  input p_0_in;
  input dest_rst;
  input rst;
  input [0:0]Q;
  input fifo_wr_rst_done;
  input fifo_rd_rst_done;
  input fifo_wr_rst_d3;

  wire [0:0]Q;
  wire d_out;
  wire dest_rst;
  wire fifo_rd_rst_done;
  wire fifo_wr_rst_d2;
  wire fifo_wr_rst_d3;
  wire fifo_wr_rst_done;
  wire \gen_rst_ic.fifo_wr_rst_done_reg ;
  wire \gen_rst_ic.fifo_wr_rst_i_reg ;
  wire \gen_rst_ic.fifo_wr_rst_i_reg_0 ;
  wire p_0_in;
  wire rst;
  wire wr_clk;

  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_18 \gen_pipe_bit[0].pipe_bit_inst 
       (.d_out(d_out),
        .\gen_rst_ic.fifo_wr_rst_i_reg (\gen_rst_ic.fifo_wr_rst_i_reg_0 ),
        .wr_clk(wr_clk));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_19 \gen_pipe_bit[1].pipe_bit_inst 
       (.Q(Q),
        .d_out(d_out),
        .dest_rst(dest_rst),
        .fifo_rd_rst_done(fifo_rd_rst_done),
        .fifo_wr_rst_d2(fifo_wr_rst_d2),
        .fifo_wr_rst_d3(fifo_wr_rst_d3),
        .fifo_wr_rst_done(fifo_wr_rst_done),
        .\gen_rst_ic.fifo_wr_rst_done_reg (\gen_rst_ic.fifo_wr_rst_done_reg ),
        .\gen_rst_ic.fifo_wr_rst_i_reg (\gen_rst_ic.fifo_wr_rst_i_reg ),
        .\gen_rst_ic.fifo_wr_rst_i_reg_0 (\gen_rst_ic.fifo_wr_rst_i_reg_0 ),
        .p_0_in(p_0_in),
        .rst(rst),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "xpm_reg_pipe_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_reg_pipe_bit__parameterized0
   (fifo_rd_rst_d3,
    SR,
    underflow_i0,
    \count_value_i_reg[0] ,
    dest_rst,
    rd_clk,
    \gen_fwft.curr_fwft_state_reg[1] ,
    rd_en,
    \gen_fwft.empty_fwft_i_reg );
  output fifo_rd_rst_d3;
  output [0:0]SR;
  output underflow_i0;
  output [0:0]\count_value_i_reg[0] ;
  input dest_rst;
  input rd_clk;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input rd_en;
  input \gen_fwft.empty_fwft_i_reg ;

  wire [0:0]SR;
  wire [0:0]\count_value_i_reg[0] ;
  wire dest_rst;
  wire fifo_rd_rst_d3;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_pipe_bit[1].pipe_bit_inst_n_0 ;
  wire rd_clk;
  wire rd_en;
  wire underflow_i0;

  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_3 \gen_pipe_bit[1].pipe_bit_inst 
       (.d_out_reg(\gen_pipe_bit[1].pipe_bit_inst_n_0 ),
        .dest_rst(dest_rst),
        .rd_clk(rd_clk));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_4 \gen_pipe_bit[2].pipe_bit_inst 
       (.SR(SR),
        .\count_value_i_reg[0] (\count_value_i_reg[0] ),
        .dest_rst(dest_rst),
        .\gen_fwft.curr_fwft_state_reg[1] (\gen_fwft.curr_fwft_state_reg[1] ),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\syncstages_ff_reg[0] (fifo_rd_rst_d3),
        .\syncstages_ff_reg[1] (\gen_pipe_bit[1].pipe_bit_inst_n_0 ),
        .underflow_i0(underflow_i0));
endmodule

(* ORIG_REF_NAME = "xpm_reg_pipe_bit" *) 
module fmchc_python1300c_onsemi_python_spi_0_0_xpm_reg_pipe_bit__parameterized0_16
   (fifo_rd_rst_d3,
    SR,
    underflow_i0,
    \count_value_i_reg[0] ,
    dest_rst,
    rd_clk,
    \gen_fwft.curr_fwft_state_reg[1] ,
    rd_en,
    \gen_fwft.empty_fwft_i_reg );
  output fifo_rd_rst_d3;
  output [0:0]SR;
  output underflow_i0;
  output [0:0]\count_value_i_reg[0] ;
  input dest_rst;
  input rd_clk;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input rd_en;
  input \gen_fwft.empty_fwft_i_reg ;

  wire [0:0]SR;
  wire [0:0]\count_value_i_reg[0] ;
  wire dest_rst;
  wire fifo_rd_rst_d3;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_pipe_bit[1].pipe_bit_inst_n_0 ;
  wire rd_clk;
  wire rd_en;
  wire underflow_i0;

  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_20 \gen_pipe_bit[1].pipe_bit_inst 
       (.d_out_reg(\gen_pipe_bit[1].pipe_bit_inst_n_0 ),
        .dest_rst(dest_rst),
        .rd_clk(rd_clk));
  fmchc_python1300c_onsemi_python_spi_0_0_xpm_fifo_reg_bit_21 \gen_pipe_bit[2].pipe_bit_inst 
       (.SR(SR),
        .\count_value_i_reg[0] (\count_value_i_reg[0] ),
        .dest_rst(dest_rst),
        .\gen_fwft.curr_fwft_state_reg[1] (\gen_fwft.curr_fwft_state_reg[1] ),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\syncstages_ff_reg[0] (fifo_rd_rst_d3),
        .\syncstages_ff_reg[1] (\gen_pipe_bit[1].pipe_bit_inst_n_0 ),
        .underflow_i0(underflow_i0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

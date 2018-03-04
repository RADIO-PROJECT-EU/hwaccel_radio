-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Fri Jan 26 15:32:47 2018
-- Host        : ESIT044 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fmchc_python1300c_square_check_0_0_stub.vhdl
-- Design      : fmchc_python1300c_square_check_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030sbg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_AXI_Lite_RGB_1_N_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXI_Lite_RGB_1_N_AWVALID : in STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_AWREADY : out STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXI_Lite_RGB_1_N_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXI_Lite_RGB_1_N_WVALID : in STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_WREADY : out STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXI_Lite_RGB_1_N_BVALID : out STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_BREADY : in STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXI_Lite_RGB_1_N_ARVALID : in STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_ARREADY : out STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXI_Lite_RGB_1_N_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXI_Lite_RGB_1_N_RVALID : out STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_RREADY : in STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXI_Lite_RGB_2_AWVALID : in STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_AWREADY : out STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXI_Lite_RGB_2_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXI_Lite_RGB_2_WVALID : in STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_WREADY : out STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXI_Lite_RGB_2_BVALID : out STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_BREADY : in STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXI_Lite_RGB_2_ARVALID : in STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_ARREADY : out STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXI_Lite_RGB_2_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXI_Lite_RGB_2_RVALID : out STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_AWVALID : out STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_AWREADY : in STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_WLAST : out STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_WVALID : out STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_WREADY : in STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_BVALID : in STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_BREADY : out STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_ARVALID : out STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_ARREADY : in STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AXI_Lite_RGB_1_N_RLAST : in STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_RVALID : in STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_RREADY : out STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_AXI_Lite_RGB_2_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_AXI_Lite_RGB_2_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AXI_Lite_RGB_2_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AXI_Lite_RGB_2_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AXI_Lite_RGB_2_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_2_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_2_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AXI_Lite_RGB_2_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_2_AWVALID : out STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_AWREADY : in STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_AXI_Lite_RGB_2_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_2_WLAST : out STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_WVALID : out STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_WREADY : in STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AXI_Lite_RGB_2_BVALID : in STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_BREADY : out STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_AXI_Lite_RGB_2_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_AXI_Lite_RGB_2_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AXI_Lite_RGB_2_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AXI_Lite_RGB_2_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AXI_Lite_RGB_2_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_2_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_2_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AXI_Lite_RGB_2_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AXI_Lite_RGB_2_ARVALID : out STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_ARREADY : in STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_AXI_Lite_RGB_2_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_AXI_Lite_RGB_2_RLAST : in STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_RVALID : in STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AXI_Lite_RGB_1_N_AWADDR[4:0],s_axi_AXI_Lite_RGB_1_N_AWVALID,s_axi_AXI_Lite_RGB_1_N_AWREADY,s_axi_AXI_Lite_RGB_1_N_WDATA[31:0],s_axi_AXI_Lite_RGB_1_N_WSTRB[3:0],s_axi_AXI_Lite_RGB_1_N_WVALID,s_axi_AXI_Lite_RGB_1_N_WREADY,s_axi_AXI_Lite_RGB_1_N_BRESP[1:0],s_axi_AXI_Lite_RGB_1_N_BVALID,s_axi_AXI_Lite_RGB_1_N_BREADY,s_axi_AXI_Lite_RGB_1_N_ARADDR[4:0],s_axi_AXI_Lite_RGB_1_N_ARVALID,s_axi_AXI_Lite_RGB_1_N_ARREADY,s_axi_AXI_Lite_RGB_1_N_RDATA[31:0],s_axi_AXI_Lite_RGB_1_N_RRESP[1:0],s_axi_AXI_Lite_RGB_1_N_RVALID,s_axi_AXI_Lite_RGB_1_N_RREADY,s_axi_AXI_Lite_RGB_2_AWADDR[4:0],s_axi_AXI_Lite_RGB_2_AWVALID,s_axi_AXI_Lite_RGB_2_AWREADY,s_axi_AXI_Lite_RGB_2_WDATA[31:0],s_axi_AXI_Lite_RGB_2_WSTRB[3:0],s_axi_AXI_Lite_RGB_2_WVALID,s_axi_AXI_Lite_RGB_2_WREADY,s_axi_AXI_Lite_RGB_2_BRESP[1:0],s_axi_AXI_Lite_RGB_2_BVALID,s_axi_AXI_Lite_RGB_2_BREADY,s_axi_AXI_Lite_RGB_2_ARADDR[4:0],s_axi_AXI_Lite_RGB_2_ARVALID,s_axi_AXI_Lite_RGB_2_ARREADY,s_axi_AXI_Lite_RGB_2_RDATA[31:0],s_axi_AXI_Lite_RGB_2_RRESP[1:0],s_axi_AXI_Lite_RGB_2_RVALID,s_axi_AXI_Lite_RGB_2_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_AXI_Lite_RGB_1_N_AWADDR[31:0],m_axi_AXI_Lite_RGB_1_N_AWLEN[7:0],m_axi_AXI_Lite_RGB_1_N_AWSIZE[2:0],m_axi_AXI_Lite_RGB_1_N_AWBURST[1:0],m_axi_AXI_Lite_RGB_1_N_AWLOCK[1:0],m_axi_AXI_Lite_RGB_1_N_AWREGION[3:0],m_axi_AXI_Lite_RGB_1_N_AWCACHE[3:0],m_axi_AXI_Lite_RGB_1_N_AWPROT[2:0],m_axi_AXI_Lite_RGB_1_N_AWQOS[3:0],m_axi_AXI_Lite_RGB_1_N_AWVALID,m_axi_AXI_Lite_RGB_1_N_AWREADY,m_axi_AXI_Lite_RGB_1_N_WDATA[31:0],m_axi_AXI_Lite_RGB_1_N_WSTRB[3:0],m_axi_AXI_Lite_RGB_1_N_WLAST,m_axi_AXI_Lite_RGB_1_N_WVALID,m_axi_AXI_Lite_RGB_1_N_WREADY,m_axi_AXI_Lite_RGB_1_N_BRESP[1:0],m_axi_AXI_Lite_RGB_1_N_BVALID,m_axi_AXI_Lite_RGB_1_N_BREADY,m_axi_AXI_Lite_RGB_1_N_ARADDR[31:0],m_axi_AXI_Lite_RGB_1_N_ARLEN[7:0],m_axi_AXI_Lite_RGB_1_N_ARSIZE[2:0],m_axi_AXI_Lite_RGB_1_N_ARBURST[1:0],m_axi_AXI_Lite_RGB_1_N_ARLOCK[1:0],m_axi_AXI_Lite_RGB_1_N_ARREGION[3:0],m_axi_AXI_Lite_RGB_1_N_ARCACHE[3:0],m_axi_AXI_Lite_RGB_1_N_ARPROT[2:0],m_axi_AXI_Lite_RGB_1_N_ARQOS[3:0],m_axi_AXI_Lite_RGB_1_N_ARVALID,m_axi_AXI_Lite_RGB_1_N_ARREADY,m_axi_AXI_Lite_RGB_1_N_RDATA[31:0],m_axi_AXI_Lite_RGB_1_N_RRESP[1:0],m_axi_AXI_Lite_RGB_1_N_RLAST,m_axi_AXI_Lite_RGB_1_N_RVALID,m_axi_AXI_Lite_RGB_1_N_RREADY,m_axi_AXI_Lite_RGB_2_AWADDR[31:0],m_axi_AXI_Lite_RGB_2_AWLEN[7:0],m_axi_AXI_Lite_RGB_2_AWSIZE[2:0],m_axi_AXI_Lite_RGB_2_AWBURST[1:0],m_axi_AXI_Lite_RGB_2_AWLOCK[1:0],m_axi_AXI_Lite_RGB_2_AWREGION[3:0],m_axi_AXI_Lite_RGB_2_AWCACHE[3:0],m_axi_AXI_Lite_RGB_2_AWPROT[2:0],m_axi_AXI_Lite_RGB_2_AWQOS[3:0],m_axi_AXI_Lite_RGB_2_AWVALID,m_axi_AXI_Lite_RGB_2_AWREADY,m_axi_AXI_Lite_RGB_2_WDATA[31:0],m_axi_AXI_Lite_RGB_2_WSTRB[3:0],m_axi_AXI_Lite_RGB_2_WLAST,m_axi_AXI_Lite_RGB_2_WVALID,m_axi_AXI_Lite_RGB_2_WREADY,m_axi_AXI_Lite_RGB_2_BRESP[1:0],m_axi_AXI_Lite_RGB_2_BVALID,m_axi_AXI_Lite_RGB_2_BREADY,m_axi_AXI_Lite_RGB_2_ARADDR[31:0],m_axi_AXI_Lite_RGB_2_ARLEN[7:0],m_axi_AXI_Lite_RGB_2_ARSIZE[2:0],m_axi_AXI_Lite_RGB_2_ARBURST[1:0],m_axi_AXI_Lite_RGB_2_ARLOCK[1:0],m_axi_AXI_Lite_RGB_2_ARREGION[3:0],m_axi_AXI_Lite_RGB_2_ARCACHE[3:0],m_axi_AXI_Lite_RGB_2_ARPROT[2:0],m_axi_AXI_Lite_RGB_2_ARQOS[3:0],m_axi_AXI_Lite_RGB_2_ARVALID,m_axi_AXI_Lite_RGB_2_ARREADY,m_axi_AXI_Lite_RGB_2_RDATA[31:0],m_axi_AXI_Lite_RGB_2_RRESP[1:0],m_axi_AXI_Lite_RGB_2_RLAST,m_axi_AXI_Lite_RGB_2_RVALID,m_axi_AXI_Lite_RGB_2_RREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "square_check,Vivado 2016.4";
begin
end;

-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Fri Jan 26 12:29:19 2018
-- Host        : ESIT044 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub -rename_top fmchc_python1300c_v_osd_0_0 -prefix
--               fmchc_python1300c_v_osd_0_0_ fmchc_python1300c_v_osd_0_0_stub.vhdl
-- Design      : fmchc_python1300c_v_osd_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030sbg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fmchc_python1300c_v_osd_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axis_video0_tvalid : in STD_LOGIC;
    s_axis_video0_tlast : in STD_LOGIC;
    s_axis_video0_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_video0_tuser : in STD_LOGIC;
    s_axis_video0_tready : out STD_LOGIC;
    s_axis_video1_tvalid : in STD_LOGIC;
    s_axis_video1_tlast : in STD_LOGIC;
    s_axis_video1_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_video1_tuser : in STD_LOGIC;
    s_axis_video1_tready : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    irq : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );

end fmchc_python1300c_v_osd_0_0;

architecture stub of fmchc_python1300c_v_osd_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aclken,aresetn,s_axi_aclk,s_axi_aclken,s_axi_aresetn,s_axis_video0_tvalid,s_axis_video0_tlast,s_axis_video0_tdata[15:0],s_axis_video0_tuser,s_axis_video0_tready,s_axis_video1_tvalid,s_axis_video1_tlast,s_axis_video1_tdata[15:0],s_axis_video1_tuser,s_axis_video1_tready,m_axis_video_tvalid,m_axis_video_tlast,m_axis_video_tdata[15:0],m_axis_video_tuser,m_axis_video_tready,irq,s_axi_awaddr[8:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[8:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "v_osd,Vivado 2016.4";
begin
end;

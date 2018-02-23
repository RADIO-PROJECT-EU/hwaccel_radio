-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Fri Jan 26 15:32:15 2018
-- Host        : ESIT044 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Avnet/hdl/Projects/fmchc_python1300c/PZ7030_FMC2/fmchc_python1300c.srcs/sources_1/bd/fmchc_python1300c/ip/fmchc_python1300c_avnet_hdmi_out_0_0/fmchc_python1300c_avnet_hdmi_out_0_0_stub.vhdl
-- Design      : fmchc_python1300c_avnet_hdmi_out_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030sbg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fmchc_python1300c_avnet_hdmi_out_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    oe : in STD_LOGIC;
    embed_syncs : in STD_LOGIC;
    audio_spdif : in STD_LOGIC;
    video_vblank : in STD_LOGIC;
    video_hblank : in STD_LOGIC;
    video_de : in STD_LOGIC;
    video_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    io_hdmio_spdif : out STD_LOGIC;
    io_hdmio_video : out STD_LOGIC_VECTOR ( 15 downto 0 );
    io_hdmio_clk : out STD_LOGIC
  );

end fmchc_python1300c_avnet_hdmi_out_0_0;

architecture stub of fmchc_python1300c_avnet_hdmi_out_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,oe,embed_syncs,audio_spdif,video_vblank,video_hblank,video_de,video_data[15:0],io_hdmio_spdif,io_hdmio_video[15:0],io_hdmio_clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "avnet_hdmi_out,Vivado 2016.4";
begin
end;

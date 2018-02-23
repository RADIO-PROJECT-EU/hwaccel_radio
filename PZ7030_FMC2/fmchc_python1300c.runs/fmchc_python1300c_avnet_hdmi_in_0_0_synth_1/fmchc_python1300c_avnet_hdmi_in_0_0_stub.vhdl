-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Fri Jan 26 15:32:14 2018
-- Host        : ESIT044 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fmchc_python1300c_avnet_hdmi_in_0_0_stub.vhdl
-- Design      : fmchc_python1300c_avnet_hdmi_in_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030sbg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    hdmii_clk : out STD_LOGIC;
    io_hdmii_clk : in STD_LOGIC;
    io_hdmii_spdif : in STD_LOGIC;
    io_hdmii_video : in STD_LOGIC_VECTOR ( 15 downto 0 );
    audio_spdif : out STD_LOGIC;
    video_vblank : out STD_LOGIC;
    video_hblank : out STD_LOGIC;
    video_de : out STD_LOGIC;
    video_data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "hdmii_clk,io_hdmii_clk,io_hdmii_spdif,io_hdmii_video[15:0],audio_spdif,video_vblank,video_hblank,video_de,video_data[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "avnet_hdmi_in,Vivado 2016.4";
begin
end;

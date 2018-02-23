-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Fri Jan 26 15:32:15 2018
-- Host        : ESIT044 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Avnet/hdl/Projects/fmchc_python1300c/PZ7030_FMC2/fmchc_python1300c.srcs/sources_1/bd/fmchc_python1300c/ip/fmchc_python1300c_avnet_hdmi_in_0_0/fmchc_python1300c_avnet_hdmi_in_0_0_sim_netlist.vhdl
-- Design      : fmchc_python1300c_avnet_hdmi_in_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030sbg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fmchc_python1300c_avnet_hdmi_in_0_0_avnet_hdmi_in is
  port (
    hdmii_clk : out STD_LOGIC;
    audio_spdif : out STD_LOGIC;
    video_vblank : out STD_LOGIC;
    video_hblank : out STD_LOGIC;
    video_de : out STD_LOGIC;
    video_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    io_hdmii_clk : in STD_LOGIC;
    io_hdmii_video : in STD_LOGIC_VECTOR ( 15 downto 0 );
    io_hdmii_spdif : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fmchc_python1300c_avnet_hdmi_in_0_0_avnet_hdmi_in : entity is "avnet_hdmi_in";
end fmchc_python1300c_avnet_hdmi_in_0_0_avnet_hdmi_in;

architecture STRUCTURE of fmchc_python1300c_avnet_hdmi_in_0_0_avnet_hdmi_in is
  signal bufio_hdmii_clk : STD_LOGIC;
  signal de : STD_LOGIC;
  signal de_i_1_n_0 : STD_LOGIC;
  signal eav_vb : STD_LOGIC;
  signal \eqOp__14\ : STD_LOGIC;
  signal hblank : STD_LOGIC;
  signal hblank_i_1_n_0 : STD_LOGIC;
  signal hblank_i_2_n_0 : STD_LOGIC;
  signal hblank_i_3_n_0 : STD_LOGIC;
  signal hblank_i_4_n_0 : STD_LOGIC;
  signal \^hdmii_clk\ : STD_LOGIC;
  signal iob_spdif_r : STD_LOGIC;
  signal iob_video_r : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_10_in : STD_LOGIC;
  signal sav_va : STD_LOGIC;
  signal sav_va_d3_reg_srl3_n_0 : STD_LOGIC;
  signal sav_va_d4 : STD_LOGIC;
  signal sav_vb : STD_LOGIC;
  signal sav_vb_d3_reg_srl3_n_0 : STD_LOGIC;
  signal sav_vb_d4 : STD_LOGIC;
  signal vblank : STD_LOGIC;
  signal vblank_i_11_n_0 : STD_LOGIC;
  signal vblank_i_12_n_0 : STD_LOGIC;
  signal vblank_i_13_n_0 : STD_LOGIC;
  signal vblank_i_14_n_0 : STD_LOGIC;
  signal vblank_i_15_n_0 : STD_LOGIC;
  signal vblank_i_16_n_0 : STD_LOGIC;
  signal vblank_i_17_n_0 : STD_LOGIC;
  signal vblank_i_18_n_0 : STD_LOGIC;
  signal vblank_i_19_n_0 : STD_LOGIC;
  signal vblank_i_1_n_0 : STD_LOGIC;
  signal vblank_i_20_n_0 : STD_LOGIC;
  signal vblank_i_21_n_0 : STD_LOGIC;
  signal vblank_i_22_n_0 : STD_LOGIC;
  signal vblank_i_23_n_0 : STD_LOGIC;
  signal vblank_i_24_n_0 : STD_LOGIC;
  signal vblank_i_25_n_0 : STD_LOGIC;
  signal vblank_i_26_n_0 : STD_LOGIC;
  signal vblank_i_2_n_0 : STD_LOGIC;
  signal vblank_i_5_n_0 : STD_LOGIC;
  signal vblank_i_6_n_0 : STD_LOGIC;
  signal vblank_i_7_n_0 : STD_LOGIC;
  signal vblank_i_8_n_0 : STD_LOGIC;
  signal vblank_i_9_n_0 : STD_LOGIC;
  signal video_d1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal video_d2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal video_d3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal video_d4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal video_r : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of hblank_i_4 : label is "soft_lutpair2";
  attribute IOB : string;
  attribute IOB of \pos_edge_iob_ffs.iob_spdif_r_reg\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[0]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[10]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[11]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[12]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[13]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[14]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[15]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[1]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[2]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[3]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[4]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[5]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[6]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[7]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[8]\ : label is "FORCE";
  attribute IOB of \pos_edge_iob_ffs.iob_video_r_reg[9]\ : label is "FORCE";
  attribute box_type : string;
  attribute box_type of \regional_clocking_bufr.BUFIO_HDMI_CLK\ : label is "PRIMITIVE";
  attribute box_type of \regional_clocking_bufr.BUFR_HDMI_CLK\ : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of sav_va_d3_reg_srl3 : label is "\U0/sav_va_d3_reg_srl3 ";
  attribute srl_name of sav_vb_d3_reg_srl3 : label is "\U0/sav_vb_d3_reg_srl3 ";
  attribute SOFT_HLUTNM of sav_vb_d3_reg_srl3_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of vblank_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of vblank_i_16 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of vblank_i_17 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of vblank_i_26 : label is "soft_lutpair2";
begin
  hdmii_clk <= \^hdmii_clk\;
\VIDEO_PORTS_16BIT_GEN.video_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(0),
      Q => video_data(0),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(10),
      Q => video_data(10),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(11),
      Q => video_data(11),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(12),
      Q => video_data(12),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(13),
      Q => video_data(13),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(14),
      Q => video_data(14),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(15),
      Q => video_data(15),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(1),
      Q => video_data(1),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(2),
      Q => video_data(2),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(3),
      Q => video_data(3),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(4),
      Q => video_data(4),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(5),
      Q => video_data(5),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(6),
      Q => video_data(6),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(7),
      Q => video_data(7),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(8),
      Q => video_data(8),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d4(9),
      Q => video_data(9),
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_de_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => de,
      Q => video_de,
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_hblank_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => hblank,
      Q => video_hblank,
      R => '0'
    );
\VIDEO_PORTS_16BIT_GEN.video_vblank_reg\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => vblank,
      Q => video_vblank,
      R => '0'
    );
de_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000E0E0E"
    )
        port map (
      I0 => de,
      I1 => sav_va_d4,
      I2 => eav_vb,
      I3 => hblank_i_2_n_0,
      I4 => p_10_in,
      O => de_i_1_n_0
    );
de_reg: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => de_i_1_n_0,
      Q => de,
      R => '0'
    );
hblank_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF10FF10FF10"
    )
        port map (
      I0 => sav_va_d4,
      I1 => sav_vb_d4,
      I2 => hblank,
      I3 => eav_vb,
      I4 => hblank_i_2_n_0,
      I5 => p_10_in,
      O => hblank_i_1_n_0
    );
hblank_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => video_r(1),
      I1 => video_r(0),
      I2 => video_r(3),
      I3 => video_r(2),
      I4 => vblank_i_6_n_0,
      I5 => hblank_i_3_n_0,
      O => hblank_i_2_n_0
    );
hblank_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => video_r(10),
      I1 => video_r(11),
      I2 => video_r(12),
      I3 => video_r(13),
      I4 => hblank_i_4_n_0,
      O => hblank_i_3_n_0
    );
hblank_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => video_r(9),
      I1 => video_r(8),
      I2 => video_r(5),
      I3 => video_r(4),
      O => hblank_i_4_n_0
    );
hblank_reg: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => hblank_i_1_n_0,
      Q => hblank,
      R => '0'
    );
\pos_edge_iob_ffs.iob_spdif_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_spdif,
      Q => iob_spdif_r,
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(0),
      Q => iob_video_r(0),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(10),
      Q => iob_video_r(10),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(11),
      Q => iob_video_r(11),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(12),
      Q => iob_video_r(12),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(13),
      Q => iob_video_r(13),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(14),
      Q => iob_video_r(14),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(15),
      Q => iob_video_r(15),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(1),
      Q => iob_video_r(1),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(2),
      Q => iob_video_r(2),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(3),
      Q => iob_video_r(3),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(4),
      Q => iob_video_r(4),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(5),
      Q => iob_video_r(5),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(6),
      Q => iob_video_r(6),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(7),
      Q => iob_video_r(7),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(8),
      Q => iob_video_r(8),
      R => '0'
    );
\pos_edge_iob_ffs.iob_video_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => bufio_hdmii_clk,
      CE => '1',
      D => io_hdmii_video(9),
      Q => iob_video_r(9),
      R => '0'
    );
\regional_clocking_bufr.BUFIO_HDMI_CLK\: unisim.vcomponents.BUFIO
     port map (
      I => io_hdmii_clk,
      O => bufio_hdmii_clk
    );
\regional_clocking_bufr.BUFR_HDMI_CLK\: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "BYPASS",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => '0',
      I => io_hdmii_clk,
      O => \^hdmii_clk\
    );
sav_va_d3_reg_srl3: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^hdmii_clk\,
      D => sav_va,
      Q => sav_va_d3_reg_srl3_n_0
    );
sav_va_d3_reg_srl3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vblank_i_5_n_0,
      I1 => p_10_in,
      O => sav_va
    );
sav_va_d4_reg: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => sav_va_d3_reg_srl3_n_0,
      Q => sav_va_d4,
      R => '0'
    );
sav_vb_d3_reg_srl3: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^hdmii_clk\,
      D => sav_vb,
      Q => sav_vb_d3_reg_srl3_n_0
    );
sav_vb_d3_reg_srl3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vblank_i_2_n_0,
      I1 => p_10_in,
      O => sav_vb
    );
sav_vb_d4_reg: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => sav_vb_d3_reg_srl3_n_0,
      Q => sav_vb_d4,
      R => '0'
    );
spdif_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_spdif_r,
      Q => audio_spdif,
      R => '0'
    );
vblank_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FAFEFA"
    )
        port map (
      I0 => vblank,
      I1 => vblank_i_2_n_0,
      I2 => eav_vb,
      I3 => p_10_in,
      I4 => vblank_i_5_n_0,
      O => vblank_i_1_n_0
    );
vblank_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => vblank_i_18_n_0,
      I1 => vblank_i_19_n_0,
      I2 => vblank_i_20_n_0,
      I3 => vblank_i_21_n_0,
      O => \eqOp__14\
    );
vblank_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => video_d3(2),
      I1 => video_d3(3),
      I2 => video_d3(0),
      I3 => video_d3(1),
      I4 => vblank_i_22_n_0,
      O => vblank_i_11_n_0
    );
vblank_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => video_d3(12),
      I1 => video_d3(13),
      I2 => video_d3(14),
      I3 => video_d3(15),
      I4 => vblank_i_23_n_0,
      O => vblank_i_12_n_0
    );
vblank_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => video_d1(12),
      I1 => video_d1(13),
      I2 => video_d1(14),
      I3 => video_d1(15),
      I4 => vblank_i_24_n_0,
      O => vblank_i_13_n_0
    );
vblank_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => video_d1(2),
      I1 => video_d1(3),
      I2 => video_d1(0),
      I3 => video_d1(1),
      I4 => vblank_i_25_n_0,
      O => vblank_i_14_n_0
    );
vblank_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => video_r(10),
      I1 => video_r(11),
      I2 => video_r(12),
      I3 => video_r(13),
      I4 => vblank_i_26_n_0,
      O => vblank_i_15_n_0
    );
vblank_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => video_r(9),
      I1 => video_r(8),
      I2 => video_r(4),
      I3 => video_r(5),
      O => vblank_i_16_n_0
    );
vblank_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => video_r(8),
      I1 => video_r(9),
      I2 => video_r(5),
      I3 => video_r(4),
      O => vblank_i_17_n_0
    );
vblank_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => video_d2(7),
      I1 => video_d2(6),
      I2 => video_d2(5),
      I3 => video_d2(4),
      O => vblank_i_18_n_0
    );
vblank_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => video_d2(1),
      I1 => video_d2(0),
      I2 => video_d2(3),
      I3 => video_d2(2),
      O => vblank_i_19_n_0
    );
vblank_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => video_r(1),
      I1 => video_r(0),
      I2 => video_r(2),
      I3 => video_r(3),
      I4 => vblank_i_6_n_0,
      I5 => vblank_i_7_n_0,
      O => vblank_i_2_n_0
    );
vblank_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => video_d2(11),
      I1 => video_d2(10),
      I2 => video_d2(9),
      I3 => video_d2(8),
      O => vblank_i_20_n_0
    );
vblank_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => video_d2(15),
      I1 => video_d2(14),
      I2 => video_d2(13),
      I3 => video_d2(12),
      O => vblank_i_21_n_0
    );
vblank_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => video_d3(7),
      I1 => video_d3(6),
      I2 => video_d3(5),
      I3 => video_d3(4),
      O => vblank_i_22_n_0
    );
vblank_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => video_d3(11),
      I1 => video_d3(10),
      I2 => video_d3(9),
      I3 => video_d3(8),
      O => vblank_i_23_n_0
    );
vblank_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => video_d1(11),
      I1 => video_d1(10),
      I2 => video_d1(9),
      I3 => video_d1(8),
      O => vblank_i_24_n_0
    );
vblank_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => video_d1(7),
      I1 => video_d1(6),
      I2 => video_d1(5),
      I3 => video_d1(4),
      O => vblank_i_25_n_0
    );
vblank_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => video_r(9),
      I1 => video_r(8),
      I2 => video_r(5),
      I3 => video_r(4),
      O => vblank_i_26_n_0
    );
vblank_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => vblank_i_8_n_0,
      I1 => vblank_i_9_n_0,
      I2 => \eqOp__14\,
      I3 => vblank_i_11_n_0,
      I4 => vblank_i_12_n_0,
      O => eav_vb
    );
vblank_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => vblank_i_13_n_0,
      I1 => vblank_i_14_n_0,
      I2 => \eqOp__14\,
      I3 => vblank_i_11_n_0,
      I4 => vblank_i_12_n_0,
      O => p_10_in
    );
vblank_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => video_r(1),
      I1 => video_r(0),
      I2 => video_r(3),
      I3 => video_r(2),
      I4 => vblank_i_6_n_0,
      I5 => vblank_i_15_n_0,
      O => vblank_i_5_n_0
    );
vblank_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => video_r(14),
      I1 => video_r(6),
      I2 => video_r(15),
      I3 => video_r(7),
      O => vblank_i_6_n_0
    );
vblank_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => video_r(11),
      I1 => video_r(10),
      I2 => video_r(13),
      I3 => video_r(12),
      I4 => vblank_i_16_n_0,
      O => vblank_i_7_n_0
    );
vblank_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => vblank_i_6_n_0,
      I1 => video_r(2),
      I2 => video_r(3),
      I3 => video_r(1),
      I4 => video_r(0),
      O => vblank_i_8_n_0
    );
vblank_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => video_r(10),
      I1 => video_r(11),
      I2 => video_r(12),
      I3 => video_r(13),
      I4 => vblank_i_17_n_0,
      O => vblank_i_9_n_0
    );
vblank_reg: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => vblank_i_1_n_0,
      Q => vblank,
      R => '0'
    );
\video_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(0),
      Q => video_d1(0),
      R => '0'
    );
\video_d1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(10),
      Q => video_d1(10),
      R => '0'
    );
\video_d1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(11),
      Q => video_d1(11),
      R => '0'
    );
\video_d1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(12),
      Q => video_d1(12),
      R => '0'
    );
\video_d1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(13),
      Q => video_d1(13),
      R => '0'
    );
\video_d1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(14),
      Q => video_d1(14),
      R => '0'
    );
\video_d1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(15),
      Q => video_d1(15),
      R => '0'
    );
\video_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(1),
      Q => video_d1(1),
      R => '0'
    );
\video_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(2),
      Q => video_d1(2),
      R => '0'
    );
\video_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(3),
      Q => video_d1(3),
      R => '0'
    );
\video_d1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(4),
      Q => video_d1(4),
      R => '0'
    );
\video_d1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(5),
      Q => video_d1(5),
      R => '0'
    );
\video_d1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(6),
      Q => video_d1(6),
      R => '0'
    );
\video_d1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(7),
      Q => video_d1(7),
      R => '0'
    );
\video_d1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(8),
      Q => video_d1(8),
      R => '0'
    );
\video_d1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_r(9),
      Q => video_d1(9),
      R => '0'
    );
\video_d2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(0),
      Q => video_d2(0),
      R => '0'
    );
\video_d2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(10),
      Q => video_d2(10),
      R => '0'
    );
\video_d2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(11),
      Q => video_d2(11),
      R => '0'
    );
\video_d2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(12),
      Q => video_d2(12),
      R => '0'
    );
\video_d2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(13),
      Q => video_d2(13),
      R => '0'
    );
\video_d2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(14),
      Q => video_d2(14),
      R => '0'
    );
\video_d2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(15),
      Q => video_d2(15),
      R => '0'
    );
\video_d2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(1),
      Q => video_d2(1),
      R => '0'
    );
\video_d2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(2),
      Q => video_d2(2),
      R => '0'
    );
\video_d2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(3),
      Q => video_d2(3),
      R => '0'
    );
\video_d2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(4),
      Q => video_d2(4),
      R => '0'
    );
\video_d2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(5),
      Q => video_d2(5),
      R => '0'
    );
\video_d2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(6),
      Q => video_d2(6),
      R => '0'
    );
\video_d2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(7),
      Q => video_d2(7),
      R => '0'
    );
\video_d2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(8),
      Q => video_d2(8),
      R => '0'
    );
\video_d2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d1(9),
      Q => video_d2(9),
      R => '0'
    );
\video_d3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(0),
      Q => video_d3(0),
      R => '0'
    );
\video_d3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(10),
      Q => video_d3(10),
      R => '0'
    );
\video_d3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(11),
      Q => video_d3(11),
      R => '0'
    );
\video_d3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(12),
      Q => video_d3(12),
      R => '0'
    );
\video_d3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(13),
      Q => video_d3(13),
      R => '0'
    );
\video_d3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(14),
      Q => video_d3(14),
      R => '0'
    );
\video_d3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(15),
      Q => video_d3(15),
      R => '0'
    );
\video_d3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(1),
      Q => video_d3(1),
      R => '0'
    );
\video_d3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(2),
      Q => video_d3(2),
      R => '0'
    );
\video_d3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(3),
      Q => video_d3(3),
      R => '0'
    );
\video_d3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(4),
      Q => video_d3(4),
      R => '0'
    );
\video_d3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(5),
      Q => video_d3(5),
      R => '0'
    );
\video_d3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(6),
      Q => video_d3(6),
      R => '0'
    );
\video_d3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(7),
      Q => video_d3(7),
      R => '0'
    );
\video_d3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(8),
      Q => video_d3(8),
      R => '0'
    );
\video_d3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d2(9),
      Q => video_d3(9),
      R => '0'
    );
\video_d4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(0),
      Q => video_d4(0),
      R => '0'
    );
\video_d4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(10),
      Q => video_d4(10),
      R => '0'
    );
\video_d4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(11),
      Q => video_d4(11),
      R => '0'
    );
\video_d4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(12),
      Q => video_d4(12),
      R => '0'
    );
\video_d4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(13),
      Q => video_d4(13),
      R => '0'
    );
\video_d4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(14),
      Q => video_d4(14),
      R => '0'
    );
\video_d4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(15),
      Q => video_d4(15),
      R => '0'
    );
\video_d4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(1),
      Q => video_d4(1),
      R => '0'
    );
\video_d4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(2),
      Q => video_d4(2),
      R => '0'
    );
\video_d4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(3),
      Q => video_d4(3),
      R => '0'
    );
\video_d4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(4),
      Q => video_d4(4),
      R => '0'
    );
\video_d4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(5),
      Q => video_d4(5),
      R => '0'
    );
\video_d4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(6),
      Q => video_d4(6),
      R => '0'
    );
\video_d4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(7),
      Q => video_d4(7),
      R => '0'
    );
\video_d4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(8),
      Q => video_d4(8),
      R => '0'
    );
\video_d4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => video_d3(9),
      Q => video_d4(9),
      R => '0'
    );
\video_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(0),
      Q => video_r(0),
      R => '0'
    );
\video_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(10),
      Q => video_r(10),
      R => '0'
    );
\video_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(11),
      Q => video_r(11),
      R => '0'
    );
\video_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(12),
      Q => video_r(12),
      R => '0'
    );
\video_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(13),
      Q => video_r(13),
      R => '0'
    );
\video_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(14),
      Q => video_r(14),
      R => '0'
    );
\video_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(15),
      Q => video_r(15),
      R => '0'
    );
\video_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(1),
      Q => video_r(1),
      R => '0'
    );
\video_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(2),
      Q => video_r(2),
      R => '0'
    );
\video_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(3),
      Q => video_r(3),
      R => '0'
    );
\video_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(4),
      Q => video_r(4),
      R => '0'
    );
\video_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(5),
      Q => video_r(5),
      R => '0'
    );
\video_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(6),
      Q => video_r(6),
      R => '0'
    );
\video_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(7),
      Q => video_r(7),
      R => '0'
    );
\video_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(8),
      Q => video_r(8),
      R => '0'
    );
\video_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^hdmii_clk\,
      CE => '1',
      D => iob_video_r(9),
      Q => video_r(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fmchc_python1300c_avnet_hdmi_in_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fmchc_python1300c_avnet_hdmi_in_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fmchc_python1300c_avnet_hdmi_in_0_0 : entity is "fmchc_python1300c_avnet_hdmi_in_0_0,avnet_hdmi_in,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fmchc_python1300c_avnet_hdmi_in_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fmchc_python1300c_avnet_hdmi_in_0_0 : entity is "avnet_hdmi_in,Vivado 2016.4";
end fmchc_python1300c_avnet_hdmi_in_0_0;

architecture STRUCTURE of fmchc_python1300c_avnet_hdmi_in_0_0 is
begin
U0: entity work.fmchc_python1300c_avnet_hdmi_in_0_0_avnet_hdmi_in
     port map (
      audio_spdif => audio_spdif,
      hdmii_clk => hdmii_clk,
      io_hdmii_clk => io_hdmii_clk,
      io_hdmii_spdif => io_hdmii_spdif,
      io_hdmii_video(15 downto 0) => io_hdmii_video(15 downto 0),
      video_data(15 downto 0) => video_data(15 downto 0),
      video_de => video_de,
      video_hblank => video_hblank,
      video_vblank => video_vblank
    );
end STRUCTURE;

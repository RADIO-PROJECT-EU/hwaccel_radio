// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Jan 26 15:32:14 2018
// Host        : ESIT044 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fmchc_python1300c_avnet_hdmi_in_0_0_sim_netlist.v
// Design      : fmchc_python1300c_avnet_hdmi_in_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030sbg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_avnet_hdmi_in
   (hdmii_clk,
    audio_spdif,
    video_vblank,
    video_hblank,
    video_de,
    video_data,
    io_hdmii_clk,
    io_hdmii_video,
    io_hdmii_spdif);
  output hdmii_clk;
  output audio_spdif;
  output video_vblank;
  output video_hblank;
  output video_de;
  output [15:0]video_data;
  input io_hdmii_clk;
  input [15:0]io_hdmii_video;
  input io_hdmii_spdif;

  wire audio_spdif;
  wire bufio_hdmii_clk;
  wire de;
  wire de_i_1_n_0;
  wire eav_vb;
  wire eqOp__14;
  wire hblank;
  wire hblank_i_1_n_0;
  wire hblank_i_2_n_0;
  wire hblank_i_3_n_0;
  wire hblank_i_4_n_0;
  wire hdmii_clk;
  wire io_hdmii_clk;
  wire io_hdmii_spdif;
  wire [15:0]io_hdmii_video;
  wire iob_spdif_r;
  wire [15:0]iob_video_r;
  wire p_10_in;
  wire sav_va;
  wire sav_va_d3_reg_srl3_n_0;
  wire sav_va_d4;
  wire sav_vb;
  wire sav_vb_d3_reg_srl3_n_0;
  wire sav_vb_d4;
  wire vblank;
  wire vblank_i_11_n_0;
  wire vblank_i_12_n_0;
  wire vblank_i_13_n_0;
  wire vblank_i_14_n_0;
  wire vblank_i_15_n_0;
  wire vblank_i_16_n_0;
  wire vblank_i_17_n_0;
  wire vblank_i_18_n_0;
  wire vblank_i_19_n_0;
  wire vblank_i_1_n_0;
  wire vblank_i_20_n_0;
  wire vblank_i_21_n_0;
  wire vblank_i_22_n_0;
  wire vblank_i_23_n_0;
  wire vblank_i_24_n_0;
  wire vblank_i_25_n_0;
  wire vblank_i_26_n_0;
  wire vblank_i_2_n_0;
  wire vblank_i_5_n_0;
  wire vblank_i_6_n_0;
  wire vblank_i_7_n_0;
  wire vblank_i_8_n_0;
  wire vblank_i_9_n_0;
  wire [15:0]video_d1;
  wire [15:0]video_d2;
  wire [15:0]video_d3;
  wire [15:0]video_d4;
  wire [15:0]video_data;
  wire video_de;
  wire video_hblank;
  wire [15:0]video_r;
  wire video_vblank;

  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[0] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[0]),
        .Q(video_data[0]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[10] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[10]),
        .Q(video_data[10]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[11] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[11]),
        .Q(video_data[11]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[12] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[12]),
        .Q(video_data[12]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[13] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[13]),
        .Q(video_data[13]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[14] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[14]),
        .Q(video_data[14]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[15] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[15]),
        .Q(video_data[15]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[1] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[1]),
        .Q(video_data[1]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[2] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[2]),
        .Q(video_data[2]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[3] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[3]),
        .Q(video_data[3]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[4] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[4]),
        .Q(video_data[4]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[5] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[5]),
        .Q(video_data[5]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[6] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[6]),
        .Q(video_data[6]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[7] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[7]),
        .Q(video_data[7]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[8] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[8]),
        .Q(video_data[8]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_data_reg[9] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d4[9]),
        .Q(video_data[9]),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_de_reg 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(de),
        .Q(video_de),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_hblank_reg 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(hblank),
        .Q(video_hblank),
        .R(1'b0));
  FDRE \VIDEO_PORTS_16BIT_GEN.video_vblank_reg 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(vblank),
        .Q(video_vblank),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000E0E0E)) 
    de_i_1
       (.I0(de),
        .I1(sav_va_d4),
        .I2(eav_vb),
        .I3(hblank_i_2_n_0),
        .I4(p_10_in),
        .O(de_i_1_n_0));
  FDRE de_reg
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(de_i_1_n_0),
        .Q(de),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF10FF10FF10)) 
    hblank_i_1
       (.I0(sav_va_d4),
        .I1(sav_vb_d4),
        .I2(hblank),
        .I3(eav_vb),
        .I4(hblank_i_2_n_0),
        .I5(p_10_in),
        .O(hblank_i_1_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    hblank_i_2
       (.I0(video_r[1]),
        .I1(video_r[0]),
        .I2(video_r[3]),
        .I3(video_r[2]),
        .I4(vblank_i_6_n_0),
        .I5(hblank_i_3_n_0),
        .O(hblank_i_2_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    hblank_i_3
       (.I0(video_r[10]),
        .I1(video_r[11]),
        .I2(video_r[12]),
        .I3(video_r[13]),
        .I4(hblank_i_4_n_0),
        .O(hblank_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    hblank_i_4
       (.I0(video_r[9]),
        .I1(video_r[8]),
        .I2(video_r[5]),
        .I3(video_r[4]),
        .O(hblank_i_4_n_0));
  FDRE hblank_reg
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(hblank_i_1_n_0),
        .Q(hblank),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_spdif_r_reg 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_spdif),
        .Q(iob_spdif_r),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[0] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[0]),
        .Q(iob_video_r[0]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[10] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[10]),
        .Q(iob_video_r[10]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[11] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[11]),
        .Q(iob_video_r[11]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[12] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[12]),
        .Q(iob_video_r[12]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[13] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[13]),
        .Q(iob_video_r[13]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[14] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[14]),
        .Q(iob_video_r[14]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[15] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[15]),
        .Q(iob_video_r[15]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[1] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[1]),
        .Q(iob_video_r[1]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[2] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[2]),
        .Q(iob_video_r[2]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[3] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[3]),
        .Q(iob_video_r[3]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[4] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[4]),
        .Q(iob_video_r[4]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[5] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[5]),
        .Q(iob_video_r[5]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[6] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[6]),
        .Q(iob_video_r[6]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[7] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[7]),
        .Q(iob_video_r[7]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[8] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[8]),
        .Q(iob_video_r[8]),
        .R(1'b0));
  (* IOB = "FORCE" *) 
  FDRE \pos_edge_iob_ffs.iob_video_r_reg[9] 
       (.C(bufio_hdmii_clk),
        .CE(1'b1),
        .D(io_hdmii_video[9]),
        .Q(iob_video_r[9]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  BUFIO \regional_clocking_bufr.BUFIO_HDMI_CLK 
       (.I(io_hdmii_clk),
        .O(bufio_hdmii_clk));
  (* box_type = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("BYPASS"),
    .SIM_DEVICE("7SERIES")) 
    \regional_clocking_bufr.BUFR_HDMI_CLK 
       (.CE(1'b1),
        .CLR(1'b0),
        .I(io_hdmii_clk),
        .O(hdmii_clk));
  (* srl_name = "\U0/sav_va_d3_reg_srl3 " *) 
  SRL16E sav_va_d3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmii_clk),
        .D(sav_va),
        .Q(sav_va_d3_reg_srl3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sav_va_d3_reg_srl3_i_1
       (.I0(vblank_i_5_n_0),
        .I1(p_10_in),
        .O(sav_va));
  FDRE sav_va_d4_reg
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(sav_va_d3_reg_srl3_n_0),
        .Q(sav_va_d4),
        .R(1'b0));
  (* srl_name = "\U0/sav_vb_d3_reg_srl3 " *) 
  SRL16E sav_vb_d3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(hdmii_clk),
        .D(sav_vb),
        .Q(sav_vb_d3_reg_srl3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sav_vb_d3_reg_srl3_i_1
       (.I0(vblank_i_2_n_0),
        .I1(p_10_in),
        .O(sav_vb));
  FDRE sav_vb_d4_reg
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(sav_vb_d3_reg_srl3_n_0),
        .Q(sav_vb_d4),
        .R(1'b0));
  FDRE spdif_r_reg
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_spdif_r),
        .Q(audio_spdif),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FAFEFA)) 
    vblank_i_1
       (.I0(vblank),
        .I1(vblank_i_2_n_0),
        .I2(eav_vb),
        .I3(p_10_in),
        .I4(vblank_i_5_n_0),
        .O(vblank_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    vblank_i_10
       (.I0(vblank_i_18_n_0),
        .I1(vblank_i_19_n_0),
        .I2(vblank_i_20_n_0),
        .I3(vblank_i_21_n_0),
        .O(eqOp__14));
  LUT5 #(
    .INIT(32'h80000000)) 
    vblank_i_11
       (.I0(video_d3[2]),
        .I1(video_d3[3]),
        .I2(video_d3[0]),
        .I3(video_d3[1]),
        .I4(vblank_i_22_n_0),
        .O(vblank_i_11_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    vblank_i_12
       (.I0(video_d3[12]),
        .I1(video_d3[13]),
        .I2(video_d3[14]),
        .I3(video_d3[15]),
        .I4(vblank_i_23_n_0),
        .O(vblank_i_12_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    vblank_i_13
       (.I0(video_d1[12]),
        .I1(video_d1[13]),
        .I2(video_d1[14]),
        .I3(video_d1[15]),
        .I4(vblank_i_24_n_0),
        .O(vblank_i_13_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    vblank_i_14
       (.I0(video_d1[2]),
        .I1(video_d1[3]),
        .I2(video_d1[0]),
        .I3(video_d1[1]),
        .I4(vblank_i_25_n_0),
        .O(vblank_i_14_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    vblank_i_15
       (.I0(video_r[10]),
        .I1(video_r[11]),
        .I2(video_r[12]),
        .I3(video_r[13]),
        .I4(vblank_i_26_n_0),
        .O(vblank_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    vblank_i_16
       (.I0(video_r[9]),
        .I1(video_r[8]),
        .I2(video_r[4]),
        .I3(video_r[5]),
        .O(vblank_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    vblank_i_17
       (.I0(video_r[8]),
        .I1(video_r[9]),
        .I2(video_r[5]),
        .I3(video_r[4]),
        .O(vblank_i_17_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    vblank_i_18
       (.I0(video_d2[7]),
        .I1(video_d2[6]),
        .I2(video_d2[5]),
        .I3(video_d2[4]),
        .O(vblank_i_18_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    vblank_i_19
       (.I0(video_d2[1]),
        .I1(video_d2[0]),
        .I2(video_d2[3]),
        .I3(video_d2[2]),
        .O(vblank_i_19_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    vblank_i_2
       (.I0(video_r[1]),
        .I1(video_r[0]),
        .I2(video_r[2]),
        .I3(video_r[3]),
        .I4(vblank_i_6_n_0),
        .I5(vblank_i_7_n_0),
        .O(vblank_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    vblank_i_20
       (.I0(video_d2[11]),
        .I1(video_d2[10]),
        .I2(video_d2[9]),
        .I3(video_d2[8]),
        .O(vblank_i_20_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    vblank_i_21
       (.I0(video_d2[15]),
        .I1(video_d2[14]),
        .I2(video_d2[13]),
        .I3(video_d2[12]),
        .O(vblank_i_21_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    vblank_i_22
       (.I0(video_d3[7]),
        .I1(video_d3[6]),
        .I2(video_d3[5]),
        .I3(video_d3[4]),
        .O(vblank_i_22_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    vblank_i_23
       (.I0(video_d3[11]),
        .I1(video_d3[10]),
        .I2(video_d3[9]),
        .I3(video_d3[8]),
        .O(vblank_i_23_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    vblank_i_24
       (.I0(video_d1[11]),
        .I1(video_d1[10]),
        .I2(video_d1[9]),
        .I3(video_d1[8]),
        .O(vblank_i_24_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    vblank_i_25
       (.I0(video_d1[7]),
        .I1(video_d1[6]),
        .I2(video_d1[5]),
        .I3(video_d1[4]),
        .O(vblank_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    vblank_i_26
       (.I0(video_r[9]),
        .I1(video_r[8]),
        .I2(video_r[5]),
        .I3(video_r[4]),
        .O(vblank_i_26_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    vblank_i_3
       (.I0(vblank_i_8_n_0),
        .I1(vblank_i_9_n_0),
        .I2(eqOp__14),
        .I3(vblank_i_11_n_0),
        .I4(vblank_i_12_n_0),
        .O(eav_vb));
  LUT5 #(
    .INIT(32'h80000000)) 
    vblank_i_4
       (.I0(vblank_i_13_n_0),
        .I1(vblank_i_14_n_0),
        .I2(eqOp__14),
        .I3(vblank_i_11_n_0),
        .I4(vblank_i_12_n_0),
        .O(p_10_in));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    vblank_i_5
       (.I0(video_r[1]),
        .I1(video_r[0]),
        .I2(video_r[3]),
        .I3(video_r[2]),
        .I4(vblank_i_6_n_0),
        .I5(vblank_i_15_n_0),
        .O(vblank_i_5_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    vblank_i_6
       (.I0(video_r[14]),
        .I1(video_r[6]),
        .I2(video_r[15]),
        .I3(video_r[7]),
        .O(vblank_i_6_n_0));
  LUT5 #(
    .INIT(32'h00200000)) 
    vblank_i_7
       (.I0(video_r[11]),
        .I1(video_r[10]),
        .I2(video_r[13]),
        .I3(video_r[12]),
        .I4(vblank_i_16_n_0),
        .O(vblank_i_7_n_0));
  LUT5 #(
    .INIT(32'h00000800)) 
    vblank_i_8
       (.I0(vblank_i_6_n_0),
        .I1(video_r[2]),
        .I2(video_r[3]),
        .I3(video_r[1]),
        .I4(video_r[0]),
        .O(vblank_i_8_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    vblank_i_9
       (.I0(video_r[10]),
        .I1(video_r[11]),
        .I2(video_r[12]),
        .I3(video_r[13]),
        .I4(vblank_i_17_n_0),
        .O(vblank_i_9_n_0));
  FDRE vblank_reg
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(vblank_i_1_n_0),
        .Q(vblank),
        .R(1'b0));
  FDRE \video_d1_reg[0] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[0]),
        .Q(video_d1[0]),
        .R(1'b0));
  FDRE \video_d1_reg[10] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[10]),
        .Q(video_d1[10]),
        .R(1'b0));
  FDRE \video_d1_reg[11] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[11]),
        .Q(video_d1[11]),
        .R(1'b0));
  FDRE \video_d1_reg[12] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[12]),
        .Q(video_d1[12]),
        .R(1'b0));
  FDRE \video_d1_reg[13] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[13]),
        .Q(video_d1[13]),
        .R(1'b0));
  FDRE \video_d1_reg[14] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[14]),
        .Q(video_d1[14]),
        .R(1'b0));
  FDRE \video_d1_reg[15] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[15]),
        .Q(video_d1[15]),
        .R(1'b0));
  FDRE \video_d1_reg[1] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[1]),
        .Q(video_d1[1]),
        .R(1'b0));
  FDRE \video_d1_reg[2] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[2]),
        .Q(video_d1[2]),
        .R(1'b0));
  FDRE \video_d1_reg[3] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[3]),
        .Q(video_d1[3]),
        .R(1'b0));
  FDRE \video_d1_reg[4] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[4]),
        .Q(video_d1[4]),
        .R(1'b0));
  FDRE \video_d1_reg[5] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[5]),
        .Q(video_d1[5]),
        .R(1'b0));
  FDRE \video_d1_reg[6] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[6]),
        .Q(video_d1[6]),
        .R(1'b0));
  FDRE \video_d1_reg[7] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[7]),
        .Q(video_d1[7]),
        .R(1'b0));
  FDRE \video_d1_reg[8] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[8]),
        .Q(video_d1[8]),
        .R(1'b0));
  FDRE \video_d1_reg[9] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_r[9]),
        .Q(video_d1[9]),
        .R(1'b0));
  FDRE \video_d2_reg[0] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[0]),
        .Q(video_d2[0]),
        .R(1'b0));
  FDRE \video_d2_reg[10] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[10]),
        .Q(video_d2[10]),
        .R(1'b0));
  FDRE \video_d2_reg[11] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[11]),
        .Q(video_d2[11]),
        .R(1'b0));
  FDRE \video_d2_reg[12] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[12]),
        .Q(video_d2[12]),
        .R(1'b0));
  FDRE \video_d2_reg[13] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[13]),
        .Q(video_d2[13]),
        .R(1'b0));
  FDRE \video_d2_reg[14] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[14]),
        .Q(video_d2[14]),
        .R(1'b0));
  FDRE \video_d2_reg[15] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[15]),
        .Q(video_d2[15]),
        .R(1'b0));
  FDRE \video_d2_reg[1] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[1]),
        .Q(video_d2[1]),
        .R(1'b0));
  FDRE \video_d2_reg[2] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[2]),
        .Q(video_d2[2]),
        .R(1'b0));
  FDRE \video_d2_reg[3] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[3]),
        .Q(video_d2[3]),
        .R(1'b0));
  FDRE \video_d2_reg[4] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[4]),
        .Q(video_d2[4]),
        .R(1'b0));
  FDRE \video_d2_reg[5] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[5]),
        .Q(video_d2[5]),
        .R(1'b0));
  FDRE \video_d2_reg[6] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[6]),
        .Q(video_d2[6]),
        .R(1'b0));
  FDRE \video_d2_reg[7] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[7]),
        .Q(video_d2[7]),
        .R(1'b0));
  FDRE \video_d2_reg[8] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[8]),
        .Q(video_d2[8]),
        .R(1'b0));
  FDRE \video_d2_reg[9] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d1[9]),
        .Q(video_d2[9]),
        .R(1'b0));
  FDRE \video_d3_reg[0] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[0]),
        .Q(video_d3[0]),
        .R(1'b0));
  FDRE \video_d3_reg[10] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[10]),
        .Q(video_d3[10]),
        .R(1'b0));
  FDRE \video_d3_reg[11] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[11]),
        .Q(video_d3[11]),
        .R(1'b0));
  FDRE \video_d3_reg[12] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[12]),
        .Q(video_d3[12]),
        .R(1'b0));
  FDRE \video_d3_reg[13] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[13]),
        .Q(video_d3[13]),
        .R(1'b0));
  FDRE \video_d3_reg[14] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[14]),
        .Q(video_d3[14]),
        .R(1'b0));
  FDRE \video_d3_reg[15] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[15]),
        .Q(video_d3[15]),
        .R(1'b0));
  FDRE \video_d3_reg[1] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[1]),
        .Q(video_d3[1]),
        .R(1'b0));
  FDRE \video_d3_reg[2] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[2]),
        .Q(video_d3[2]),
        .R(1'b0));
  FDRE \video_d3_reg[3] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[3]),
        .Q(video_d3[3]),
        .R(1'b0));
  FDRE \video_d3_reg[4] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[4]),
        .Q(video_d3[4]),
        .R(1'b0));
  FDRE \video_d3_reg[5] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[5]),
        .Q(video_d3[5]),
        .R(1'b0));
  FDRE \video_d3_reg[6] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[6]),
        .Q(video_d3[6]),
        .R(1'b0));
  FDRE \video_d3_reg[7] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[7]),
        .Q(video_d3[7]),
        .R(1'b0));
  FDRE \video_d3_reg[8] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[8]),
        .Q(video_d3[8]),
        .R(1'b0));
  FDRE \video_d3_reg[9] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d2[9]),
        .Q(video_d3[9]),
        .R(1'b0));
  FDRE \video_d4_reg[0] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[0]),
        .Q(video_d4[0]),
        .R(1'b0));
  FDRE \video_d4_reg[10] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[10]),
        .Q(video_d4[10]),
        .R(1'b0));
  FDRE \video_d4_reg[11] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[11]),
        .Q(video_d4[11]),
        .R(1'b0));
  FDRE \video_d4_reg[12] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[12]),
        .Q(video_d4[12]),
        .R(1'b0));
  FDRE \video_d4_reg[13] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[13]),
        .Q(video_d4[13]),
        .R(1'b0));
  FDRE \video_d4_reg[14] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[14]),
        .Q(video_d4[14]),
        .R(1'b0));
  FDRE \video_d4_reg[15] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[15]),
        .Q(video_d4[15]),
        .R(1'b0));
  FDRE \video_d4_reg[1] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[1]),
        .Q(video_d4[1]),
        .R(1'b0));
  FDRE \video_d4_reg[2] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[2]),
        .Q(video_d4[2]),
        .R(1'b0));
  FDRE \video_d4_reg[3] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[3]),
        .Q(video_d4[3]),
        .R(1'b0));
  FDRE \video_d4_reg[4] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[4]),
        .Q(video_d4[4]),
        .R(1'b0));
  FDRE \video_d4_reg[5] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[5]),
        .Q(video_d4[5]),
        .R(1'b0));
  FDRE \video_d4_reg[6] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[6]),
        .Q(video_d4[6]),
        .R(1'b0));
  FDRE \video_d4_reg[7] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[7]),
        .Q(video_d4[7]),
        .R(1'b0));
  FDRE \video_d4_reg[8] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[8]),
        .Q(video_d4[8]),
        .R(1'b0));
  FDRE \video_d4_reg[9] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(video_d3[9]),
        .Q(video_d4[9]),
        .R(1'b0));
  FDRE \video_r_reg[0] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[0]),
        .Q(video_r[0]),
        .R(1'b0));
  FDRE \video_r_reg[10] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[10]),
        .Q(video_r[10]),
        .R(1'b0));
  FDRE \video_r_reg[11] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[11]),
        .Q(video_r[11]),
        .R(1'b0));
  FDRE \video_r_reg[12] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[12]),
        .Q(video_r[12]),
        .R(1'b0));
  FDRE \video_r_reg[13] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[13]),
        .Q(video_r[13]),
        .R(1'b0));
  FDRE \video_r_reg[14] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[14]),
        .Q(video_r[14]),
        .R(1'b0));
  FDRE \video_r_reg[15] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[15]),
        .Q(video_r[15]),
        .R(1'b0));
  FDRE \video_r_reg[1] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[1]),
        .Q(video_r[1]),
        .R(1'b0));
  FDRE \video_r_reg[2] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[2]),
        .Q(video_r[2]),
        .R(1'b0));
  FDRE \video_r_reg[3] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[3]),
        .Q(video_r[3]),
        .R(1'b0));
  FDRE \video_r_reg[4] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[4]),
        .Q(video_r[4]),
        .R(1'b0));
  FDRE \video_r_reg[5] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[5]),
        .Q(video_r[5]),
        .R(1'b0));
  FDRE \video_r_reg[6] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[6]),
        .Q(video_r[6]),
        .R(1'b0));
  FDRE \video_r_reg[7] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[7]),
        .Q(video_r[7]),
        .R(1'b0));
  FDRE \video_r_reg[8] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[8]),
        .Q(video_r[8]),
        .R(1'b0));
  FDRE \video_r_reg[9] 
       (.C(hdmii_clk),
        .CE(1'b1),
        .D(iob_video_r[9]),
        .Q(video_r[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "fmchc_python1300c_avnet_hdmi_in_0_0,avnet_hdmi_in,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "avnet_hdmi_in,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (hdmii_clk,
    io_hdmii_clk,
    io_hdmii_spdif,
    io_hdmii_video,
    audio_spdif,
    video_vblank,
    video_hblank,
    video_de,
    video_data);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 HDMI_CLOCK CLK" *) output hdmii_clk;
  (* x_interface_info = "avnet.com:interface:avnet_hdmi:2.0 IO_HDMII CLK" *) input io_hdmii_clk;
  (* x_interface_info = "avnet.com:interface:avnet_hdmi:2.0 IO_HDMII SPDIF" *) input io_hdmii_spdif;
  (* x_interface_info = "avnet.com:interface:avnet_hdmi:2.0 IO_HDMII DATA" *) input [15:0]io_hdmii_video;
  output audio_spdif;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 VID_IO_OUT VBLANK" *) output video_vblank;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 VID_IO_OUT HBLANK" *) output video_hblank;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 VID_IO_OUT ACTIVE_VIDEO" *) output video_de;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 VID_IO_OUT DATA" *) output [15:0]video_data;

  wire audio_spdif;
  wire hdmii_clk;
  wire io_hdmii_clk;
  wire io_hdmii_spdif;
  wire [15:0]io_hdmii_video;
  wire [15:0]video_data;
  wire video_de;
  wire video_hblank;
  wire video_vblank;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_avnet_hdmi_in U0
       (.audio_spdif(audio_spdif),
        .hdmii_clk(hdmii_clk),
        .io_hdmii_clk(io_hdmii_clk),
        .io_hdmii_spdif(io_hdmii_spdif),
        .io_hdmii_video(io_hdmii_video),
        .video_data(video_data),
        .video_de(video_de),
        .video_hblank(video_hblank),
        .video_vblank(video_vblank));
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

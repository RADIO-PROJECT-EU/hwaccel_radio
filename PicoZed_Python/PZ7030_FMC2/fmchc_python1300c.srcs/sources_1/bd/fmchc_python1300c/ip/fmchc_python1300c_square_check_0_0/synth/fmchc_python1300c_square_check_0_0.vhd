-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: RUB:hls:square_check:1.0
-- IP Revision: 1711171148

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY fmchc_python1300c_square_check_0_0 IS
  PORT (
    s_axi_AXI_Lite_RGB_1_N_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_AXI_Lite_RGB_1_N_AWVALID : IN STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_AWREADY : OUT STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_AXI_Lite_RGB_1_N_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_AXI_Lite_RGB_1_N_WVALID : IN STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_WREADY : OUT STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_AXI_Lite_RGB_1_N_BVALID : OUT STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_BREADY : IN STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_AXI_Lite_RGB_1_N_ARVALID : IN STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_ARREADY : OUT STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_AXI_Lite_RGB_1_N_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_AXI_Lite_RGB_1_N_RVALID : OUT STD_LOGIC;
    s_axi_AXI_Lite_RGB_1_N_RREADY : IN STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_AXI_Lite_RGB_2_AWVALID : IN STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_AWREADY : OUT STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_AXI_Lite_RGB_2_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_AXI_Lite_RGB_2_WVALID : IN STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_WREADY : OUT STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_AXI_Lite_RGB_2_BVALID : OUT STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_BREADY : IN STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_AXI_Lite_RGB_2_ARVALID : IN STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_ARREADY : OUT STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_AXI_Lite_RGB_2_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_AXI_Lite_RGB_2_RVALID : OUT STD_LOGIC;
    s_axi_AXI_Lite_RGB_2_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_AWVALID : OUT STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_AWREADY : IN STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_WLAST : OUT STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_WVALID : OUT STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_WREADY : IN STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_BVALID : IN STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_BREADY : OUT STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_ARVALID : OUT STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_ARREADY : IN STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_AXI_Lite_RGB_1_N_RLAST : IN STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_RVALID : IN STD_LOGIC;
    m_axi_AXI_Lite_RGB_1_N_RREADY : OUT STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_AWVALID : OUT STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_AWREADY : IN STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_WLAST : OUT STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_WVALID : OUT STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_WREADY : IN STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_BVALID : IN STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_BREADY : OUT STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_ARVALID : OUT STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_ARREADY : IN STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_AXI_Lite_RGB_2_RLAST : IN STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_RVALID : IN STD_LOGIC;
    m_axi_AXI_Lite_RGB_2_RREADY : OUT STD_LOGIC
  );
END fmchc_python1300c_square_check_0_0;

ARCHITECTURE fmchc_python1300c_square_check_0_0_arch OF fmchc_python1300c_square_check_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF fmchc_python1300c_square_check_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT square_check IS
    GENERIC (
      C_S_AXI_AXI_LITE_RGB_1_N_ADDR_WIDTH : INTEGER;
      C_S_AXI_AXI_LITE_RGB_1_N_DATA_WIDTH : INTEGER;
      C_S_AXI_AXI_LITE_RGB_2_ADDR_WIDTH : INTEGER;
      C_S_AXI_AXI_LITE_RGB_2_DATA_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_1_N_ID_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_1_N_ADDR_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_1_N_DATA_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_1_N_AWUSER_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_1_N_ARUSER_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_1_N_WUSER_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_1_N_RUSER_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_1_N_BUSER_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_1_N_USER_VALUE : INTEGER;
      C_M_AXI_AXI_LITE_RGB_1_N_PROT_VALUE : INTEGER;
      C_M_AXI_AXI_LITE_RGB_1_N_CACHE_VALUE : INTEGER;
      C_M_AXI_AXI_LITE_RGB_2_ID_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_2_ADDR_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_2_DATA_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_2_AWUSER_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_2_ARUSER_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_2_WUSER_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_2_RUSER_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_2_BUSER_WIDTH : INTEGER;
      C_M_AXI_AXI_LITE_RGB_2_USER_VALUE : INTEGER;
      C_M_AXI_AXI_LITE_RGB_2_PROT_VALUE : INTEGER;
      C_M_AXI_AXI_LITE_RGB_2_CACHE_VALUE : INTEGER
    );
    PORT (
      s_axi_AXI_Lite_RGB_1_N_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_AXI_Lite_RGB_1_N_AWVALID : IN STD_LOGIC;
      s_axi_AXI_Lite_RGB_1_N_AWREADY : OUT STD_LOGIC;
      s_axi_AXI_Lite_RGB_1_N_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_AXI_Lite_RGB_1_N_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_AXI_Lite_RGB_1_N_WVALID : IN STD_LOGIC;
      s_axi_AXI_Lite_RGB_1_N_WREADY : OUT STD_LOGIC;
      s_axi_AXI_Lite_RGB_1_N_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_AXI_Lite_RGB_1_N_BVALID : OUT STD_LOGIC;
      s_axi_AXI_Lite_RGB_1_N_BREADY : IN STD_LOGIC;
      s_axi_AXI_Lite_RGB_1_N_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_AXI_Lite_RGB_1_N_ARVALID : IN STD_LOGIC;
      s_axi_AXI_Lite_RGB_1_N_ARREADY : OUT STD_LOGIC;
      s_axi_AXI_Lite_RGB_1_N_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_AXI_Lite_RGB_1_N_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_AXI_Lite_RGB_1_N_RVALID : OUT STD_LOGIC;
      s_axi_AXI_Lite_RGB_1_N_RREADY : IN STD_LOGIC;
      s_axi_AXI_Lite_RGB_2_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_AXI_Lite_RGB_2_AWVALID : IN STD_LOGIC;
      s_axi_AXI_Lite_RGB_2_AWREADY : OUT STD_LOGIC;
      s_axi_AXI_Lite_RGB_2_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_AXI_Lite_RGB_2_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_AXI_Lite_RGB_2_WVALID : IN STD_LOGIC;
      s_axi_AXI_Lite_RGB_2_WREADY : OUT STD_LOGIC;
      s_axi_AXI_Lite_RGB_2_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_AXI_Lite_RGB_2_BVALID : OUT STD_LOGIC;
      s_axi_AXI_Lite_RGB_2_BREADY : IN STD_LOGIC;
      s_axi_AXI_Lite_RGB_2_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_AXI_Lite_RGB_2_ARVALID : IN STD_LOGIC;
      s_axi_AXI_Lite_RGB_2_ARREADY : OUT STD_LOGIC;
      s_axi_AXI_Lite_RGB_2_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_AXI_Lite_RGB_2_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_AXI_Lite_RGB_2_RVALID : OUT STD_LOGIC;
      s_axi_AXI_Lite_RGB_2_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      m_axi_AXI_Lite_RGB_1_N_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_AWVALID : OUT STD_LOGIC;
      m_axi_AXI_Lite_RGB_1_N_AWREADY : IN STD_LOGIC;
      m_axi_AXI_Lite_RGB_1_N_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_WLAST : OUT STD_LOGIC;
      m_axi_AXI_Lite_RGB_1_N_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_WVALID : OUT STD_LOGIC;
      m_axi_AXI_Lite_RGB_1_N_WREADY : IN STD_LOGIC;
      m_axi_AXI_Lite_RGB_1_N_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_BVALID : IN STD_LOGIC;
      m_axi_AXI_Lite_RGB_1_N_BREADY : OUT STD_LOGIC;
      m_axi_AXI_Lite_RGB_1_N_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_ARVALID : OUT STD_LOGIC;
      m_axi_AXI_Lite_RGB_1_N_ARREADY : IN STD_LOGIC;
      m_axi_AXI_Lite_RGB_1_N_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_RLAST : IN STD_LOGIC;
      m_axi_AXI_Lite_RGB_1_N_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_1_N_RVALID : IN STD_LOGIC;
      m_axi_AXI_Lite_RGB_1_N_RREADY : OUT STD_LOGIC;
      m_axi_AXI_Lite_RGB_2_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_AWVALID : OUT STD_LOGIC;
      m_axi_AXI_Lite_RGB_2_AWREADY : IN STD_LOGIC;
      m_axi_AXI_Lite_RGB_2_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_WLAST : OUT STD_LOGIC;
      m_axi_AXI_Lite_RGB_2_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_WVALID : OUT STD_LOGIC;
      m_axi_AXI_Lite_RGB_2_WREADY : IN STD_LOGIC;
      m_axi_AXI_Lite_RGB_2_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_BVALID : IN STD_LOGIC;
      m_axi_AXI_Lite_RGB_2_BREADY : OUT STD_LOGIC;
      m_axi_AXI_Lite_RGB_2_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_ARVALID : OUT STD_LOGIC;
      m_axi_AXI_Lite_RGB_2_ARREADY : IN STD_LOGIC;
      m_axi_AXI_Lite_RGB_2_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_RLAST : IN STD_LOGIC;
      m_axi_AXI_Lite_RGB_2_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_AXI_Lite_RGB_2_RVALID : IN STD_LOGIC;
      m_axi_AXI_Lite_RGB_2_RREADY : OUT STD_LOGIC
    );
  END COMPONENT square_check;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF fmchc_python1300c_square_check_0_0_arch: ARCHITECTURE IS "square_check,Vivado 2016.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF fmchc_python1300c_square_check_0_0_arch : ARCHITECTURE IS "fmchc_python1300c_square_check_0_0,square_check,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_1_N_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_1_N RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXI_Lite_RGB_2_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXI_Lite_RGB_2 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_1_N_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_1_N RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_AXI_Lite_RGB_2_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_AXI_Lite_RGB_2 RREADY";
BEGIN
  U0 : square_check
    GENERIC MAP (
      C_S_AXI_AXI_LITE_RGB_1_N_ADDR_WIDTH => 5,
      C_S_AXI_AXI_LITE_RGB_1_N_DATA_WIDTH => 32,
      C_S_AXI_AXI_LITE_RGB_2_ADDR_WIDTH => 5,
      C_S_AXI_AXI_LITE_RGB_2_DATA_WIDTH => 32,
      C_M_AXI_AXI_LITE_RGB_1_N_ID_WIDTH => 1,
      C_M_AXI_AXI_LITE_RGB_1_N_ADDR_WIDTH => 32,
      C_M_AXI_AXI_LITE_RGB_1_N_DATA_WIDTH => 32,
      C_M_AXI_AXI_LITE_RGB_1_N_AWUSER_WIDTH => 1,
      C_M_AXI_AXI_LITE_RGB_1_N_ARUSER_WIDTH => 1,
      C_M_AXI_AXI_LITE_RGB_1_N_WUSER_WIDTH => 1,
      C_M_AXI_AXI_LITE_RGB_1_N_RUSER_WIDTH => 1,
      C_M_AXI_AXI_LITE_RGB_1_N_BUSER_WIDTH => 1,
      C_M_AXI_AXI_LITE_RGB_1_N_USER_VALUE => 0,
      C_M_AXI_AXI_LITE_RGB_1_N_PROT_VALUE => 0,
      C_M_AXI_AXI_LITE_RGB_1_N_CACHE_VALUE => 3,
      C_M_AXI_AXI_LITE_RGB_2_ID_WIDTH => 1,
      C_M_AXI_AXI_LITE_RGB_2_ADDR_WIDTH => 32,
      C_M_AXI_AXI_LITE_RGB_2_DATA_WIDTH => 32,
      C_M_AXI_AXI_LITE_RGB_2_AWUSER_WIDTH => 1,
      C_M_AXI_AXI_LITE_RGB_2_ARUSER_WIDTH => 1,
      C_M_AXI_AXI_LITE_RGB_2_WUSER_WIDTH => 1,
      C_M_AXI_AXI_LITE_RGB_2_RUSER_WIDTH => 1,
      C_M_AXI_AXI_LITE_RGB_2_BUSER_WIDTH => 1,
      C_M_AXI_AXI_LITE_RGB_2_USER_VALUE => 0,
      C_M_AXI_AXI_LITE_RGB_2_PROT_VALUE => 0,
      C_M_AXI_AXI_LITE_RGB_2_CACHE_VALUE => 3
    )
    PORT MAP (
      s_axi_AXI_Lite_RGB_1_N_AWADDR => s_axi_AXI_Lite_RGB_1_N_AWADDR,
      s_axi_AXI_Lite_RGB_1_N_AWVALID => s_axi_AXI_Lite_RGB_1_N_AWVALID,
      s_axi_AXI_Lite_RGB_1_N_AWREADY => s_axi_AXI_Lite_RGB_1_N_AWREADY,
      s_axi_AXI_Lite_RGB_1_N_WDATA => s_axi_AXI_Lite_RGB_1_N_WDATA,
      s_axi_AXI_Lite_RGB_1_N_WSTRB => s_axi_AXI_Lite_RGB_1_N_WSTRB,
      s_axi_AXI_Lite_RGB_1_N_WVALID => s_axi_AXI_Lite_RGB_1_N_WVALID,
      s_axi_AXI_Lite_RGB_1_N_WREADY => s_axi_AXI_Lite_RGB_1_N_WREADY,
      s_axi_AXI_Lite_RGB_1_N_BRESP => s_axi_AXI_Lite_RGB_1_N_BRESP,
      s_axi_AXI_Lite_RGB_1_N_BVALID => s_axi_AXI_Lite_RGB_1_N_BVALID,
      s_axi_AXI_Lite_RGB_1_N_BREADY => s_axi_AXI_Lite_RGB_1_N_BREADY,
      s_axi_AXI_Lite_RGB_1_N_ARADDR => s_axi_AXI_Lite_RGB_1_N_ARADDR,
      s_axi_AXI_Lite_RGB_1_N_ARVALID => s_axi_AXI_Lite_RGB_1_N_ARVALID,
      s_axi_AXI_Lite_RGB_1_N_ARREADY => s_axi_AXI_Lite_RGB_1_N_ARREADY,
      s_axi_AXI_Lite_RGB_1_N_RDATA => s_axi_AXI_Lite_RGB_1_N_RDATA,
      s_axi_AXI_Lite_RGB_1_N_RRESP => s_axi_AXI_Lite_RGB_1_N_RRESP,
      s_axi_AXI_Lite_RGB_1_N_RVALID => s_axi_AXI_Lite_RGB_1_N_RVALID,
      s_axi_AXI_Lite_RGB_1_N_RREADY => s_axi_AXI_Lite_RGB_1_N_RREADY,
      s_axi_AXI_Lite_RGB_2_AWADDR => s_axi_AXI_Lite_RGB_2_AWADDR,
      s_axi_AXI_Lite_RGB_2_AWVALID => s_axi_AXI_Lite_RGB_2_AWVALID,
      s_axi_AXI_Lite_RGB_2_AWREADY => s_axi_AXI_Lite_RGB_2_AWREADY,
      s_axi_AXI_Lite_RGB_2_WDATA => s_axi_AXI_Lite_RGB_2_WDATA,
      s_axi_AXI_Lite_RGB_2_WSTRB => s_axi_AXI_Lite_RGB_2_WSTRB,
      s_axi_AXI_Lite_RGB_2_WVALID => s_axi_AXI_Lite_RGB_2_WVALID,
      s_axi_AXI_Lite_RGB_2_WREADY => s_axi_AXI_Lite_RGB_2_WREADY,
      s_axi_AXI_Lite_RGB_2_BRESP => s_axi_AXI_Lite_RGB_2_BRESP,
      s_axi_AXI_Lite_RGB_2_BVALID => s_axi_AXI_Lite_RGB_2_BVALID,
      s_axi_AXI_Lite_RGB_2_BREADY => s_axi_AXI_Lite_RGB_2_BREADY,
      s_axi_AXI_Lite_RGB_2_ARADDR => s_axi_AXI_Lite_RGB_2_ARADDR,
      s_axi_AXI_Lite_RGB_2_ARVALID => s_axi_AXI_Lite_RGB_2_ARVALID,
      s_axi_AXI_Lite_RGB_2_ARREADY => s_axi_AXI_Lite_RGB_2_ARREADY,
      s_axi_AXI_Lite_RGB_2_RDATA => s_axi_AXI_Lite_RGB_2_RDATA,
      s_axi_AXI_Lite_RGB_2_RRESP => s_axi_AXI_Lite_RGB_2_RRESP,
      s_axi_AXI_Lite_RGB_2_RVALID => s_axi_AXI_Lite_RGB_2_RVALID,
      s_axi_AXI_Lite_RGB_2_RREADY => s_axi_AXI_Lite_RGB_2_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      m_axi_AXI_Lite_RGB_1_N_AWADDR => m_axi_AXI_Lite_RGB_1_N_AWADDR,
      m_axi_AXI_Lite_RGB_1_N_AWLEN => m_axi_AXI_Lite_RGB_1_N_AWLEN,
      m_axi_AXI_Lite_RGB_1_N_AWSIZE => m_axi_AXI_Lite_RGB_1_N_AWSIZE,
      m_axi_AXI_Lite_RGB_1_N_AWBURST => m_axi_AXI_Lite_RGB_1_N_AWBURST,
      m_axi_AXI_Lite_RGB_1_N_AWLOCK => m_axi_AXI_Lite_RGB_1_N_AWLOCK,
      m_axi_AXI_Lite_RGB_1_N_AWREGION => m_axi_AXI_Lite_RGB_1_N_AWREGION,
      m_axi_AXI_Lite_RGB_1_N_AWCACHE => m_axi_AXI_Lite_RGB_1_N_AWCACHE,
      m_axi_AXI_Lite_RGB_1_N_AWPROT => m_axi_AXI_Lite_RGB_1_N_AWPROT,
      m_axi_AXI_Lite_RGB_1_N_AWQOS => m_axi_AXI_Lite_RGB_1_N_AWQOS,
      m_axi_AXI_Lite_RGB_1_N_AWVALID => m_axi_AXI_Lite_RGB_1_N_AWVALID,
      m_axi_AXI_Lite_RGB_1_N_AWREADY => m_axi_AXI_Lite_RGB_1_N_AWREADY,
      m_axi_AXI_Lite_RGB_1_N_WDATA => m_axi_AXI_Lite_RGB_1_N_WDATA,
      m_axi_AXI_Lite_RGB_1_N_WSTRB => m_axi_AXI_Lite_RGB_1_N_WSTRB,
      m_axi_AXI_Lite_RGB_1_N_WLAST => m_axi_AXI_Lite_RGB_1_N_WLAST,
      m_axi_AXI_Lite_RGB_1_N_WVALID => m_axi_AXI_Lite_RGB_1_N_WVALID,
      m_axi_AXI_Lite_RGB_1_N_WREADY => m_axi_AXI_Lite_RGB_1_N_WREADY,
      m_axi_AXI_Lite_RGB_1_N_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_AXI_Lite_RGB_1_N_BRESP => m_axi_AXI_Lite_RGB_1_N_BRESP,
      m_axi_AXI_Lite_RGB_1_N_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_AXI_Lite_RGB_1_N_BVALID => m_axi_AXI_Lite_RGB_1_N_BVALID,
      m_axi_AXI_Lite_RGB_1_N_BREADY => m_axi_AXI_Lite_RGB_1_N_BREADY,
      m_axi_AXI_Lite_RGB_1_N_ARADDR => m_axi_AXI_Lite_RGB_1_N_ARADDR,
      m_axi_AXI_Lite_RGB_1_N_ARLEN => m_axi_AXI_Lite_RGB_1_N_ARLEN,
      m_axi_AXI_Lite_RGB_1_N_ARSIZE => m_axi_AXI_Lite_RGB_1_N_ARSIZE,
      m_axi_AXI_Lite_RGB_1_N_ARBURST => m_axi_AXI_Lite_RGB_1_N_ARBURST,
      m_axi_AXI_Lite_RGB_1_N_ARLOCK => m_axi_AXI_Lite_RGB_1_N_ARLOCK,
      m_axi_AXI_Lite_RGB_1_N_ARREGION => m_axi_AXI_Lite_RGB_1_N_ARREGION,
      m_axi_AXI_Lite_RGB_1_N_ARCACHE => m_axi_AXI_Lite_RGB_1_N_ARCACHE,
      m_axi_AXI_Lite_RGB_1_N_ARPROT => m_axi_AXI_Lite_RGB_1_N_ARPROT,
      m_axi_AXI_Lite_RGB_1_N_ARQOS => m_axi_AXI_Lite_RGB_1_N_ARQOS,
      m_axi_AXI_Lite_RGB_1_N_ARVALID => m_axi_AXI_Lite_RGB_1_N_ARVALID,
      m_axi_AXI_Lite_RGB_1_N_ARREADY => m_axi_AXI_Lite_RGB_1_N_ARREADY,
      m_axi_AXI_Lite_RGB_1_N_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_AXI_Lite_RGB_1_N_RDATA => m_axi_AXI_Lite_RGB_1_N_RDATA,
      m_axi_AXI_Lite_RGB_1_N_RRESP => m_axi_AXI_Lite_RGB_1_N_RRESP,
      m_axi_AXI_Lite_RGB_1_N_RLAST => m_axi_AXI_Lite_RGB_1_N_RLAST,
      m_axi_AXI_Lite_RGB_1_N_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_AXI_Lite_RGB_1_N_RVALID => m_axi_AXI_Lite_RGB_1_N_RVALID,
      m_axi_AXI_Lite_RGB_1_N_RREADY => m_axi_AXI_Lite_RGB_1_N_RREADY,
      m_axi_AXI_Lite_RGB_2_AWADDR => m_axi_AXI_Lite_RGB_2_AWADDR,
      m_axi_AXI_Lite_RGB_2_AWLEN => m_axi_AXI_Lite_RGB_2_AWLEN,
      m_axi_AXI_Lite_RGB_2_AWSIZE => m_axi_AXI_Lite_RGB_2_AWSIZE,
      m_axi_AXI_Lite_RGB_2_AWBURST => m_axi_AXI_Lite_RGB_2_AWBURST,
      m_axi_AXI_Lite_RGB_2_AWLOCK => m_axi_AXI_Lite_RGB_2_AWLOCK,
      m_axi_AXI_Lite_RGB_2_AWREGION => m_axi_AXI_Lite_RGB_2_AWREGION,
      m_axi_AXI_Lite_RGB_2_AWCACHE => m_axi_AXI_Lite_RGB_2_AWCACHE,
      m_axi_AXI_Lite_RGB_2_AWPROT => m_axi_AXI_Lite_RGB_2_AWPROT,
      m_axi_AXI_Lite_RGB_2_AWQOS => m_axi_AXI_Lite_RGB_2_AWQOS,
      m_axi_AXI_Lite_RGB_2_AWVALID => m_axi_AXI_Lite_RGB_2_AWVALID,
      m_axi_AXI_Lite_RGB_2_AWREADY => m_axi_AXI_Lite_RGB_2_AWREADY,
      m_axi_AXI_Lite_RGB_2_WDATA => m_axi_AXI_Lite_RGB_2_WDATA,
      m_axi_AXI_Lite_RGB_2_WSTRB => m_axi_AXI_Lite_RGB_2_WSTRB,
      m_axi_AXI_Lite_RGB_2_WLAST => m_axi_AXI_Lite_RGB_2_WLAST,
      m_axi_AXI_Lite_RGB_2_WVALID => m_axi_AXI_Lite_RGB_2_WVALID,
      m_axi_AXI_Lite_RGB_2_WREADY => m_axi_AXI_Lite_RGB_2_WREADY,
      m_axi_AXI_Lite_RGB_2_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_AXI_Lite_RGB_2_BRESP => m_axi_AXI_Lite_RGB_2_BRESP,
      m_axi_AXI_Lite_RGB_2_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_AXI_Lite_RGB_2_BVALID => m_axi_AXI_Lite_RGB_2_BVALID,
      m_axi_AXI_Lite_RGB_2_BREADY => m_axi_AXI_Lite_RGB_2_BREADY,
      m_axi_AXI_Lite_RGB_2_ARADDR => m_axi_AXI_Lite_RGB_2_ARADDR,
      m_axi_AXI_Lite_RGB_2_ARLEN => m_axi_AXI_Lite_RGB_2_ARLEN,
      m_axi_AXI_Lite_RGB_2_ARSIZE => m_axi_AXI_Lite_RGB_2_ARSIZE,
      m_axi_AXI_Lite_RGB_2_ARBURST => m_axi_AXI_Lite_RGB_2_ARBURST,
      m_axi_AXI_Lite_RGB_2_ARLOCK => m_axi_AXI_Lite_RGB_2_ARLOCK,
      m_axi_AXI_Lite_RGB_2_ARREGION => m_axi_AXI_Lite_RGB_2_ARREGION,
      m_axi_AXI_Lite_RGB_2_ARCACHE => m_axi_AXI_Lite_RGB_2_ARCACHE,
      m_axi_AXI_Lite_RGB_2_ARPROT => m_axi_AXI_Lite_RGB_2_ARPROT,
      m_axi_AXI_Lite_RGB_2_ARQOS => m_axi_AXI_Lite_RGB_2_ARQOS,
      m_axi_AXI_Lite_RGB_2_ARVALID => m_axi_AXI_Lite_RGB_2_ARVALID,
      m_axi_AXI_Lite_RGB_2_ARREADY => m_axi_AXI_Lite_RGB_2_ARREADY,
      m_axi_AXI_Lite_RGB_2_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_AXI_Lite_RGB_2_RDATA => m_axi_AXI_Lite_RGB_2_RDATA,
      m_axi_AXI_Lite_RGB_2_RRESP => m_axi_AXI_Lite_RGB_2_RRESP,
      m_axi_AXI_Lite_RGB_2_RLAST => m_axi_AXI_Lite_RGB_2_RLAST,
      m_axi_AXI_Lite_RGB_2_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_AXI_Lite_RGB_2_RVALID => m_axi_AXI_Lite_RGB_2_RVALID,
      m_axi_AXI_Lite_RGB_2_RREADY => m_axi_AXI_Lite_RGB_2_RREADY
    );
END fmchc_python1300c_square_check_0_0_arch;

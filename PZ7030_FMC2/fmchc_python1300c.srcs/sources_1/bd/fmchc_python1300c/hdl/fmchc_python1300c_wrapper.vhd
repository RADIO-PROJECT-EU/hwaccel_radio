--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Fri Jan 26 15:28:53 2018
--Host        : ESIT044 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target fmchc_python1300c_wrapper.bd
--Design      : fmchc_python1300c_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fmchc_python1300c_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    IO_HDMII_clk : in STD_LOGIC;
    IO_HDMII_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IO_HDMII_spdif : in STD_LOGIC;
    IO_HDMIO_clk : out STD_LOGIC;
    IO_HDMIO_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    IO_HDMIO_spdif : out STD_LOGIC;
    IO_PYTHON_CAM_clk_out_n : in STD_LOGIC;
    IO_PYTHON_CAM_clk_out_p : in STD_LOGIC;
    IO_PYTHON_CAM_clk_pll : out STD_LOGIC;
    IO_PYTHON_CAM_data_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IO_PYTHON_CAM_data_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IO_PYTHON_CAM_monitor : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IO_PYTHON_CAM_reset_n : out STD_LOGIC;
    IO_PYTHON_CAM_sync_n : in STD_LOGIC;
    IO_PYTHON_CAM_sync_p : in STD_LOGIC;
    IO_PYTHON_CAM_trigger : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IO_PYTHON_SPI_spi_miso : in STD_LOGIC;
    IO_PYTHON_SPI_spi_mosi : out STD_LOGIC;
    IO_PYTHON_SPI_spi_sclk : out STD_LOGIC;
    IO_PYTHON_SPI_spi_ssel_n : out STD_LOGIC;
    M_AXI_GP0_ACLK : in STD_LOGIC;
    fmc_hdmi_cam_iic_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    fmc_hdmi_cam_iic_scl_io : inout STD_LOGIC;
    fmc_hdmi_cam_iic_sda_io : inout STD_LOGIC;
    fmc_hdmi_cam_vclk : in STD_LOGIC
  );
end fmchc_python1300c_wrapper;

architecture STRUCTURE of fmchc_python1300c_wrapper is
  component fmchc_python1300c is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    IO_HDMII_clk : in STD_LOGIC;
    IO_HDMII_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IO_HDMII_spdif : in STD_LOGIC;
    IO_HDMIO_clk : out STD_LOGIC;
    IO_HDMIO_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    IO_HDMIO_spdif : out STD_LOGIC;
    IO_PYTHON_CAM_data_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IO_PYTHON_CAM_sync_p : in STD_LOGIC;
    IO_PYTHON_CAM_sync_n : in STD_LOGIC;
    IO_PYTHON_CAM_reset_n : out STD_LOGIC;
    IO_PYTHON_CAM_trigger : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IO_PYTHON_CAM_monitor : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IO_PYTHON_CAM_clk_pll : out STD_LOGIC;
    IO_PYTHON_CAM_data_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IO_PYTHON_CAM_clk_out_p : in STD_LOGIC;
    IO_PYTHON_CAM_clk_out_n : in STD_LOGIC;
    IO_PYTHON_SPI_spi_sclk : out STD_LOGIC;
    IO_PYTHON_SPI_spi_ssel_n : out STD_LOGIC;
    IO_PYTHON_SPI_spi_mosi : out STD_LOGIC;
    IO_PYTHON_SPI_spi_miso : in STD_LOGIC;
    fmc_hdmi_cam_iic_scl_i : in STD_LOGIC;
    fmc_hdmi_cam_iic_scl_o : out STD_LOGIC;
    fmc_hdmi_cam_iic_scl_t : out STD_LOGIC;
    fmc_hdmi_cam_iic_sda_i : in STD_LOGIC;
    fmc_hdmi_cam_iic_sda_o : out STD_LOGIC;
    fmc_hdmi_cam_iic_sda_t : out STD_LOGIC;
    M_AXI_GP0_ACLK : in STD_LOGIC;
    fmc_hdmi_cam_iic_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    fmc_hdmi_cam_vclk : in STD_LOGIC
  );
  end component fmchc_python1300c;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal fmc_hdmi_cam_iic_scl_i : STD_LOGIC;
  signal fmc_hdmi_cam_iic_scl_o : STD_LOGIC;
  signal fmc_hdmi_cam_iic_scl_t : STD_LOGIC;
  signal fmc_hdmi_cam_iic_sda_i : STD_LOGIC;
  signal fmc_hdmi_cam_iic_sda_o : STD_LOGIC;
  signal fmc_hdmi_cam_iic_sda_t : STD_LOGIC;
begin
fmc_hdmi_cam_iic_scl_iobuf: component IOBUF
     port map (
      I => fmc_hdmi_cam_iic_scl_o,
      IO => fmc_hdmi_cam_iic_scl_io,
      O => fmc_hdmi_cam_iic_scl_i,
      T => fmc_hdmi_cam_iic_scl_t
    );
fmc_hdmi_cam_iic_sda_iobuf: component IOBUF
     port map (
      I => fmc_hdmi_cam_iic_sda_o,
      IO => fmc_hdmi_cam_iic_sda_io,
      O => fmc_hdmi_cam_iic_sda_i,
      T => fmc_hdmi_cam_iic_sda_t
    );
fmchc_python1300c_i: component fmchc_python1300c
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      IO_HDMII_clk => IO_HDMII_clk,
      IO_HDMII_data(15 downto 0) => IO_HDMII_data(15 downto 0),
      IO_HDMII_spdif => IO_HDMII_spdif,
      IO_HDMIO_clk => IO_HDMIO_clk,
      IO_HDMIO_data(15 downto 0) => IO_HDMIO_data(15 downto 0),
      IO_HDMIO_spdif => IO_HDMIO_spdif,
      IO_PYTHON_CAM_clk_out_n => IO_PYTHON_CAM_clk_out_n,
      IO_PYTHON_CAM_clk_out_p => IO_PYTHON_CAM_clk_out_p,
      IO_PYTHON_CAM_clk_pll => IO_PYTHON_CAM_clk_pll,
      IO_PYTHON_CAM_data_n(3 downto 0) => IO_PYTHON_CAM_data_n(3 downto 0),
      IO_PYTHON_CAM_data_p(3 downto 0) => IO_PYTHON_CAM_data_p(3 downto 0),
      IO_PYTHON_CAM_monitor(1 downto 0) => IO_PYTHON_CAM_monitor(1 downto 0),
      IO_PYTHON_CAM_reset_n => IO_PYTHON_CAM_reset_n,
      IO_PYTHON_CAM_sync_n => IO_PYTHON_CAM_sync_n,
      IO_PYTHON_CAM_sync_p => IO_PYTHON_CAM_sync_p,
      IO_PYTHON_CAM_trigger(2 downto 0) => IO_PYTHON_CAM_trigger(2 downto 0),
      IO_PYTHON_SPI_spi_miso => IO_PYTHON_SPI_spi_miso,
      IO_PYTHON_SPI_spi_mosi => IO_PYTHON_SPI_spi_mosi,
      IO_PYTHON_SPI_spi_sclk => IO_PYTHON_SPI_spi_sclk,
      IO_PYTHON_SPI_spi_ssel_n => IO_PYTHON_SPI_spi_ssel_n,
      M_AXI_GP0_ACLK => M_AXI_GP0_ACLK,
      fmc_hdmi_cam_iic_rst_n(0) => fmc_hdmi_cam_iic_rst_n(0),
      fmc_hdmi_cam_iic_scl_i => fmc_hdmi_cam_iic_scl_i,
      fmc_hdmi_cam_iic_scl_o => fmc_hdmi_cam_iic_scl_o,
      fmc_hdmi_cam_iic_scl_t => fmc_hdmi_cam_iic_scl_t,
      fmc_hdmi_cam_iic_sda_i => fmc_hdmi_cam_iic_sda_i,
      fmc_hdmi_cam_iic_sda_o => fmc_hdmi_cam_iic_sda_o,
      fmc_hdmi_cam_iic_sda_t => fmc_hdmi_cam_iic_sda_t,
      fmc_hdmi_cam_vclk => fmc_hdmi_cam_vclk
    );
end STRUCTURE;

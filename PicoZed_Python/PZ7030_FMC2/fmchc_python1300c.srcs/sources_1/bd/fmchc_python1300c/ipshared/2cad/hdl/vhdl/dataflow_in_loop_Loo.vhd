-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dataflow_in_loop_Loo is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    row_0_i_i : IN STD_LOGIC_VECTOR (6 downto 0);
    row_0_i_i_channel_din : OUT STD_LOGIC_VECTOR (5 downto 0);
    row_0_i_i_channel_full_n : IN STD_LOGIC;
    row_0_i_i_channel_write : OUT STD_LOGIC;
    row_0_i_i_channel1_din : OUT STD_LOGIC_VECTOR (5 downto 0);
    row_0_i_i_channel1_full_n : IN STD_LOGIC;
    row_0_i_i_channel1_write : OUT STD_LOGIC;
    rgb1_in1 : IN STD_LOGIC_VECTOR (29 downto 0);
    rgb2_in3 : IN STD_LOGIC_VECTOR (29 downto 0);
    rgb1_in1_out_din : OUT STD_LOGIC_VECTOR (29 downto 0);
    rgb1_in1_out_full_n : IN STD_LOGIC;
    rgb1_in1_out_write : OUT STD_LOGIC;
    rgb2_in3_out_din : OUT STD_LOGIC_VECTOR (29 downto 0);
    rgb2_in3_out_full_n : IN STD_LOGIC;
    rgb2_in3_out_write : OUT STD_LOGIC );
end;


architecture behav of dataflow_in_loop_Loo is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal row_0_i_i_channel_blk_n : STD_LOGIC;
    signal row_0_i_i_channel1_blk_n : STD_LOGIC;
    signal rgb1_in1_out_blk_n : STD_LOGIC;
    signal rgb2_in3_out_blk_n : STD_LOGIC;
    signal ap_condition_60 : BOOLEAN;
    signal tmp_fu_128_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_condition_60 = ap_const_boolean_1)))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_condition_60)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0 downto 0);

    ap_condition_60_assign_proc : process(ap_start, ap_done_reg, row_0_i_i_channel_full_n, row_0_i_i_channel1_full_n, rgb1_in1_out_full_n, rgb2_in3_out_full_n)
    begin
                ap_condition_60 <= ((rgb1_in1_out_full_n = ap_const_logic_0) or (rgb2_in3_out_full_n = ap_const_logic_0) or (row_0_i_i_channel_full_n = ap_const_logic_0) or (row_0_i_i_channel1_full_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state1, ap_condition_60)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_condition_60 = ap_const_boolean_1))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state1, ap_condition_60)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_condition_60 = ap_const_boolean_1)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    rgb1_in1_out_blk_n_assign_proc : process(ap_CS_fsm_state1, rgb1_in1_out_full_n)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            rgb1_in1_out_blk_n <= rgb1_in1_out_full_n;
        else 
            rgb1_in1_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rgb1_in1_out_din <= rgb1_in1;

    rgb1_in1_out_write_assign_proc : process(ap_CS_fsm_state1, ap_condition_60)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_condition_60 = ap_const_boolean_1)))) then 
            rgb1_in1_out_write <= ap_const_logic_1;
        else 
            rgb1_in1_out_write <= ap_const_logic_0;
        end if; 
    end process;


    rgb2_in3_out_blk_n_assign_proc : process(ap_CS_fsm_state1, rgb2_in3_out_full_n)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            rgb2_in3_out_blk_n <= rgb2_in3_out_full_n;
        else 
            rgb2_in3_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rgb2_in3_out_din <= rgb2_in3;

    rgb2_in3_out_write_assign_proc : process(ap_CS_fsm_state1, ap_condition_60)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_condition_60 = ap_const_boolean_1)))) then 
            rgb2_in3_out_write <= ap_const_logic_1;
        else 
            rgb2_in3_out_write <= ap_const_logic_0;
        end if; 
    end process;


    row_0_i_i_channel1_blk_n_assign_proc : process(ap_CS_fsm_state1, row_0_i_i_channel1_full_n)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            row_0_i_i_channel1_blk_n <= row_0_i_i_channel1_full_n;
        else 
            row_0_i_i_channel1_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    row_0_i_i_channel1_din <= tmp_fu_128_p1;

    row_0_i_i_channel1_write_assign_proc : process(ap_CS_fsm_state1, ap_condition_60)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_condition_60 = ap_const_boolean_1)))) then 
            row_0_i_i_channel1_write <= ap_const_logic_1;
        else 
            row_0_i_i_channel1_write <= ap_const_logic_0;
        end if; 
    end process;


    row_0_i_i_channel_blk_n_assign_proc : process(ap_CS_fsm_state1, row_0_i_i_channel_full_n)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            row_0_i_i_channel_blk_n <= row_0_i_i_channel_full_n;
        else 
            row_0_i_i_channel_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    row_0_i_i_channel_din <= tmp_fu_128_p1;

    row_0_i_i_channel_write_assign_proc : process(ap_CS_fsm_state1, ap_condition_60)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_condition_60 = ap_const_boolean_1)))) then 
            row_0_i_i_channel_write <= ap_const_logic_1;
        else 
            row_0_i_i_channel_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_fu_128_p1 <= row_0_i_i(6 - 1 downto 0);
end behav;

-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/13/2024 13:26:15"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processor IS
    PORT (
	clk : IN std_logic;
	PC_addr : OUT std_logic_vector(15 DOWNTO 0);
	IR_data : OUT std_logic_vector(15 DOWNTO 0);
	D_W_data : OUT std_logic_vector(15 DOWNTO 0);
	D_R_data : OUT std_logic_vector(15 DOWNTO 0);
	D_addr : OUT std_logic_vector(7 DOWNTO 0);
	D_R_enable : OUT std_logic
	);
END processor;

-- Design Ports Information
-- PC_addr[0]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[1]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[2]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[3]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[4]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[5]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[6]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[7]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[8]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[9]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[10]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[11]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[12]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[13]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[14]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[15]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[0]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[3]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[4]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[5]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[6]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[7]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[8]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[9]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[10]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[11]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[12]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[13]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[14]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[15]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[0]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[1]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[3]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[4]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[5]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[6]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[7]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[8]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[9]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[10]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[11]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[12]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[13]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[14]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[15]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[0]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[1]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[2]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[3]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[4]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[5]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[6]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[7]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[8]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[9]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[10]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[11]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[12]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[13]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[14]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[15]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[0]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[2]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[3]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[4]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[6]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_addr[7]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_enable	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_PC_addr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IR_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_W_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_R_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_addr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_D_R_enable : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controlunit|comb|RF_Rq_rd~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controlunit|comb|RF_Rp_rd~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controlunit|add|Add0~9_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~12_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~24_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~27_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~30_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~33_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~36_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \controlunit|add|Add0~11_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~14_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~26_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~29_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~32_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~35_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~38_combout\ : std_logic;
SIGNAL \controlunit|comb|n3~3_combout\ : std_logic;
SIGNAL \controlunit|comb|n1~1_combout\ : std_logic;
SIGNAL \controlunit|comb|n1~2_combout\ : std_logic;
SIGNAL \controlunit|comb|RF_Rp_rd~combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~39_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~40_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~44_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~45_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~46_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~47_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~48_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~50_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~51_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~53_combout\ : std_logic;
SIGNAL \controlunit|comb|RF_Rq_rd~combout\ : std_logic;
SIGNAL \controlunit|comb|RF_Rq_rd~clkctrl_outclk\ : std_logic;
SIGNAL \controlunit|comb|RF_Rp_rd~clkctrl_outclk\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \controlunit|add|Add0~1\ : std_logic;
SIGNAL \controlunit|add|Add0~4\ : std_logic;
SIGNAL \controlunit|add|Add0~6_combout\ : std_logic;
SIGNAL \readonlymemory|Mux1~0_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \controlunit|comb|RF_W_wr~0_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~21_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~combout\ : std_logic;
SIGNAL \controlunit|comb|PC_inc~0_wirecell_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \operationalunit|mux|Equal2~0_combout\ : std_logic;
SIGNAL \controlunit|comb|D_rd~0_combout\ : std_logic;
SIGNAL \operationalunit|mux|D[2]~2_combout\ : std_logic;
SIGNAL \readonlymemory|Mux0~0_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff13|q~regout\ : std_logic;
SIGNAL \randomaccessmemory|temp_address[0]~feeder_combout\ : std_logic;
SIGNAL \randomaccessmemory|temp_address[4]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \operationalunit|reg|reg~37_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \operationalunit|mux|D[15]~15_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \operationalunit|reg|reg~36_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \operationalunit|mux|D[14]~14_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \operationalunit|reg|reg~35_combout\ : std_logic;
SIGNAL \operationalunit|mux|D[13]~13_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \operationalunit|reg|reg~34_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \operationalunit|mux|D[12]~12_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \operationalunit|reg|reg~33_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \operationalunit|mux|D[11]~11_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \operationalunit|reg|reg~32_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \operationalunit|mux|D[10]~10_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \operationalunit|reg|reg~31_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \operationalunit|mux|D[9]~9_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \operationalunit|reg|reg~30_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \operationalunit|mux|D[8]~8_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \operationalunit|reg|reg~29_combout\ : std_logic;
SIGNAL \operationalunit|mux|D[7]~7_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \operationalunit|reg|reg~28_combout\ : std_logic;
SIGNAL \operationalunit|mux|D[6]~6_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \operationalunit|reg|reg~27_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \operationalunit|mux|D[5]~5_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \operationalunit|reg|reg~26_combout\ : std_logic;
SIGNAL \operationalunit|mux|D[4]~4_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \operationalunit|reg|reg~25_combout\ : std_logic;
SIGNAL \operationalunit|mux|D[3]~3_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \operationalunit|reg|reg~23_combout\ : std_logic;
SIGNAL \operationalunit|mux|D[1]~1_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \operationalunit|reg|reg~22_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \operationalunit|mux|D[0]~0_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \operationalunit|reg|reg~24_combout\ : std_logic;
SIGNAL \controlunit|comb|n3~0_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~38_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \operationalunit|reg|reg~41_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \operationalunit|reg|reg~42_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \operationalunit|reg|reg~43_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \operationalunit|reg|reg~49_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \operationalunit|reg|reg~52_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \operationalunit|reg|reg~54_combout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~1_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~3_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~5_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~7_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~9_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~11_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~13_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~15_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~17_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~19_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~21_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~23_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~25_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~27_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~29_cout\ : std_logic;
SIGNAL \operationalunit|comp0|LessThan0~30_combout\ : std_logic;
SIGNAL \controlunit|comb|n3~7_combout\ : std_logic;
SIGNAL \controlunit|statereg|ff3|q~regout\ : std_logic;
SIGNAL \controlunit|comb|PC_inc~0_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff12|q~regout\ : std_logic;
SIGNAL \controlunit|comb|n1~0_combout\ : std_logic;
SIGNAL \controlunit|comb|n2~2_combout\ : std_logic;
SIGNAL \controlunit|statereg|ff2|q~regout\ : std_logic;
SIGNAL \controlunit|comb|n0~0_combout\ : std_logic;
SIGNAL \controlunit|comb|n0~1_combout\ : std_logic;
SIGNAL \controlunit|comb|n3~1_combout\ : std_logic;
SIGNAL \controlunit|comb|n3~2_combout\ : std_logic;
SIGNAL \controlunit|comb|n3~4_combout\ : std_logic;
SIGNAL \controlunit|comb|n3~5_combout\ : std_logic;
SIGNAL \controlunit|comb|n0~2_combout\ : std_logic;
SIGNAL \controlunit|statereg|ff0|q~regout\ : std_logic;
SIGNAL \controlunit|comb|n3~6_combout\ : std_logic;
SIGNAL \controlunit|comb|n1~combout\ : std_logic;
SIGNAL \controlunit|statereg|ff1|q~regout\ : std_logic;
SIGNAL \controlunit|comb|PC_ld~0_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~8_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[15]~17\ : std_logic;
SIGNAL \controlunit|programcounter|counter[14]~21\ : std_logic;
SIGNAL \controlunit|programcounter|counter[13]~22_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[13]~feeder_combout\ : std_logic;
SIGNAL \controlunit|comb|PC_clr~combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[9]~18_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[9]~19_combout\ : std_logic;
SIGNAL \readonlymemory|Mux3~0_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff1|q~regout\ : std_logic;
SIGNAL \controlunit|add|Add0~3_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~5_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[14]~20_combout\ : std_logic;
SIGNAL \readonlymemory|Mux2~0_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff10|q~regout\ : std_logic;
SIGNAL \controlunit|add|Add0~0_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~2_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[15]~16_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[13]~23\ : std_logic;
SIGNAL \controlunit|programcounter|counter[12]~24_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[12]~feeder_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[12]~25\ : std_logic;
SIGNAL \controlunit|programcounter|counter[11]~26_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[11]~feeder_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~7\ : std_logic;
SIGNAL \controlunit|add|Add0~10\ : std_logic;
SIGNAL \controlunit|add|Add0~13\ : std_logic;
SIGNAL \controlunit|add|Add0~15_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~17_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[11]~27\ : std_logic;
SIGNAL \controlunit|programcounter|counter[10]~28_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[10]~feeder_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~16\ : std_logic;
SIGNAL \controlunit|add|Add0~18_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~20_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[10]~29\ : std_logic;
SIGNAL \controlunit|programcounter|counter[9]~30_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[9]~feeder_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~19\ : std_logic;
SIGNAL \controlunit|add|Add0~21_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~23_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[9]~31\ : std_logic;
SIGNAL \controlunit|programcounter|counter[8]~32_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[8]~33\ : std_logic;
SIGNAL \controlunit|programcounter|counter[7]~34_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[7]~35\ : std_logic;
SIGNAL \controlunit|programcounter|counter[6]~36_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[6]~37\ : std_logic;
SIGNAL \controlunit|programcounter|counter[5]~38_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[5]~39\ : std_logic;
SIGNAL \controlunit|programcounter|counter[4]~40_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[4]~feeder_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[4]~41\ : std_logic;
SIGNAL \controlunit|programcounter|counter[3]~42_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[3]~feeder_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~22\ : std_logic;
SIGNAL \controlunit|add|Add0~25\ : std_logic;
SIGNAL \controlunit|add|Add0~28\ : std_logic;
SIGNAL \controlunit|add|Add0~31\ : std_logic;
SIGNAL \controlunit|add|Add0~34\ : std_logic;
SIGNAL \controlunit|add|Add0~37\ : std_logic;
SIGNAL \controlunit|add|Add0~39_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~41_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[3]~43\ : std_logic;
SIGNAL \controlunit|programcounter|counter[2]~44_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[2]~feeder_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~40\ : std_logic;
SIGNAL \controlunit|add|Add0~42_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~44_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[2]~45\ : std_logic;
SIGNAL \controlunit|programcounter|counter[1]~46_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[1]~feeder_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~43\ : std_logic;
SIGNAL \controlunit|add|Add0~45_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~47_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[1]~47\ : std_logic;
SIGNAL \controlunit|programcounter|counter[0]~48_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass\ : std_logic_vector(0 TO 40);
SIGNAL \readonlymemory|data_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \randomaccessmemory|temp_address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operationalunit|reg|Rq_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operationalunit|reg|Rp_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \controlunit|programcounter|counter\ : std_logic_vector(0 TO 15);
SIGNAL \controlunit|comb|ALT_INV_PC_inc~0_combout\ : std_logic;
SIGNAL \controlunit|comb|ALT_INV_D_rd~0_combout\ : std_logic;
SIGNAL \controlunit|comb|ALT_INV_PC_inc~0_wirecell_combout\ : std_logic;

BEGIN

ww_clk <= clk;
PC_addr <= ww_PC_addr;
IR_data <= ww_IR_data;
D_W_data <= ww_D_W_data;
D_R_data <= ww_D_R_data;
D_addr <= ww_D_addr;
D_R_enable <= ww_D_R_enable;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\operationalunit|reg|Rp_data\(15) & \operationalunit|reg|Rp_data\(14) & \operationalunit|reg|Rp_data\(13) & \operationalunit|reg|Rp_data\(12) & 
\operationalunit|reg|Rp_data\(11) & \operationalunit|reg|Rp_data\(10) & \operationalunit|reg|Rp_data\(9) & \operationalunit|reg|Rp_data\(8) & \operationalunit|reg|Rp_data\(7) & \operationalunit|reg|Rp_data\(6) & 
\operationalunit|reg|Rp_data\(5) & \operationalunit|reg|Rp_data\(4) & \operationalunit|reg|Rp_data\(3) & \operationalunit|reg|Rp_data\(2) & \operationalunit|reg|Rp_data\(1) & \operationalunit|reg|Rp_data\(0));

\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\controlunit|instructionreg|ff13|q~regout\ & \~GND~combout\ & \~GND~combout\ & \controlunit|instructionreg|ff1|q~regout\ & \controlunit|instructionreg|ff10|q~regout\);

\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\randomaccessmemory|temp_address\(4) & \~GND~combout\ & \~GND~combout\ & \randomaccessmemory|temp_address\(1) & \randomaccessmemory|temp_address\(0));

\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\operationalunit|mux|D[15]~15_combout\ & \operationalunit|mux|D[14]~14_combout\ & \operationalunit|mux|D[13]~13_combout\ & \operationalunit|mux|D[12]~12_combout\ & 
\operationalunit|mux|D[11]~11_combout\ & \operationalunit|mux|D[10]~10_combout\ & \operationalunit|mux|D[9]~9_combout\ & \operationalunit|mux|D[8]~8_combout\ & \operationalunit|mux|D[7]~7_combout\ & \operationalunit|mux|D[6]~6_combout\ & 
\operationalunit|mux|D[5]~5_combout\ & \operationalunit|mux|D[4]~4_combout\ & \operationalunit|mux|D[3]~3_combout\ & \operationalunit|mux|D[2]~2_combout\ & \operationalunit|mux|D[1]~1_combout\ & \operationalunit|mux|D[0]~0_combout\);

\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \controlunit|instructionreg|ff1|q~regout\ & \controlunit|instructionreg|ff10|q~regout\);

\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\readonlymemory|data_output\(0) & \readonlymemory|data_output\(9) & \readonlymemory|data_output\(0));

\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a1\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a2\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a3\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a4\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a5\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a6\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a7\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a8\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a9\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a10\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a11\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a12\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a13\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a14\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a15\ <= \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\operationalunit|mux|D[15]~15_combout\ & \operationalunit|mux|D[14]~14_combout\ & \operationalunit|mux|D[13]~13_combout\ & \operationalunit|mux|D[12]~12_combout\ & 
\operationalunit|mux|D[11]~11_combout\ & \operationalunit|mux|D[10]~10_combout\ & \operationalunit|mux|D[9]~9_combout\ & \operationalunit|mux|D[8]~8_combout\ & \operationalunit|mux|D[7]~7_combout\ & \operationalunit|mux|D[6]~6_combout\ & 
\operationalunit|mux|D[5]~5_combout\ & \operationalunit|mux|D[4]~4_combout\ & \operationalunit|mux|D[3]~3_combout\ & \operationalunit|mux|D[2]~2_combout\ & \operationalunit|mux|D[1]~1_combout\ & \operationalunit|mux|D[0]~0_combout\);

\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\controlunit|instructionreg|ff1|q~regout\ & \controlunit|instructionreg|ff10|q~regout\);

\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \readonlymemory|data_output\(4));

\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a1\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a2\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a3\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a4\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a5\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a6\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a7\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a8\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a9\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a10\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a11\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a12\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a13\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a14\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a15\ <= \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\controlunit|comb|RF_Rq_rd~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \controlunit|comb|RF_Rq_rd~combout\);

\controlunit|comb|RF_Rp_rd~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \controlunit|comb|RF_Rp_rd~combout\);
\controlunit|comb|ALT_INV_PC_inc~0_combout\ <= NOT \controlunit|comb|PC_inc~0_combout\;
\controlunit|comb|ALT_INV_D_rd~0_combout\ <= NOT \controlunit|comb|D_rd~0_combout\;
\controlunit|comb|ALT_INV_PC_inc~0_wirecell_combout\ <= NOT \controlunit|comb|PC_inc~0_wirecell_combout\;

-- Location: LCCOMB_X47_Y28_N6
\controlunit|add|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~9_combout\ = (\controlunit|programcounter|counter\(12) & (!\controlunit|add|Add0~7\)) # (!\controlunit|programcounter|counter\(12) & ((\controlunit|add|Add0~7\) # (GND)))
-- \controlunit|add|Add0~10\ = CARRY((!\controlunit|add|Add0~7\) # (!\controlunit|programcounter|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(12),
	datad => VCC,
	cin => \controlunit|add|Add0~7\,
	combout => \controlunit|add|Add0~9_combout\,
	cout => \controlunit|add|Add0~10\);

-- Location: LCCOMB_X47_Y28_N8
\controlunit|add|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~12_combout\ = ((\controlunit|programcounter|counter\(11) $ (\controlunit|instructionreg|ff13|q~regout\ $ (!\controlunit|add|Add0~10\)))) # (GND)
-- \controlunit|add|Add0~13\ = CARRY((\controlunit|programcounter|counter\(11) & ((\controlunit|instructionreg|ff13|q~regout\) # (!\controlunit|add|Add0~10\))) # (!\controlunit|programcounter|counter\(11) & (\controlunit|instructionreg|ff13|q~regout\ & 
-- !\controlunit|add|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(11),
	datab => \controlunit|instructionreg|ff13|q~regout\,
	datad => VCC,
	cin => \controlunit|add|Add0~10\,
	combout => \controlunit|add|Add0~12_combout\,
	cout => \controlunit|add|Add0~13\);

-- Location: LCCOMB_X47_Y28_N16
\controlunit|add|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~24_combout\ = ((\controlunit|programcounter|counter\(7) $ (\controlunit|instructionreg|ff10|q~regout\ $ (!\controlunit|add|Add0~22\)))) # (GND)
-- \controlunit|add|Add0~25\ = CARRY((\controlunit|programcounter|counter\(7) & ((\controlunit|instructionreg|ff10|q~regout\) # (!\controlunit|add|Add0~22\))) # (!\controlunit|programcounter|counter\(7) & (\controlunit|instructionreg|ff10|q~regout\ & 
-- !\controlunit|add|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(7),
	datab => \controlunit|instructionreg|ff10|q~regout\,
	datad => VCC,
	cin => \controlunit|add|Add0~22\,
	combout => \controlunit|add|Add0~24_combout\,
	cout => \controlunit|add|Add0~25\);

-- Location: LCCOMB_X47_Y28_N18
\controlunit|add|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~27_combout\ = (\controlunit|programcounter|counter\(6) & ((\controlunit|instructionreg|ff12|q~regout\ & (\controlunit|add|Add0~25\ & VCC)) # (!\controlunit|instructionreg|ff12|q~regout\ & (!\controlunit|add|Add0~25\)))) # 
-- (!\controlunit|programcounter|counter\(6) & ((\controlunit|instructionreg|ff12|q~regout\ & (!\controlunit|add|Add0~25\)) # (!\controlunit|instructionreg|ff12|q~regout\ & ((\controlunit|add|Add0~25\) # (GND)))))
-- \controlunit|add|Add0~28\ = CARRY((\controlunit|programcounter|counter\(6) & (!\controlunit|instructionreg|ff12|q~regout\ & !\controlunit|add|Add0~25\)) # (!\controlunit|programcounter|counter\(6) & ((!\controlunit|add|Add0~25\) # 
-- (!\controlunit|instructionreg|ff12|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(6),
	datab => \controlunit|instructionreg|ff12|q~regout\,
	datad => VCC,
	cin => \controlunit|add|Add0~25\,
	combout => \controlunit|add|Add0~27_combout\,
	cout => \controlunit|add|Add0~28\);

-- Location: LCCOMB_X47_Y28_N20
\controlunit|add|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~30_combout\ = ((\controlunit|programcounter|counter\(5) $ (\controlunit|instructionreg|ff10|q~regout\ $ (!\controlunit|add|Add0~28\)))) # (GND)
-- \controlunit|add|Add0~31\ = CARRY((\controlunit|programcounter|counter\(5) & ((\controlunit|instructionreg|ff10|q~regout\) # (!\controlunit|add|Add0~28\))) # (!\controlunit|programcounter|counter\(5) & (\controlunit|instructionreg|ff10|q~regout\ & 
-- !\controlunit|add|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(5),
	datab => \controlunit|instructionreg|ff10|q~regout\,
	datad => VCC,
	cin => \controlunit|add|Add0~28\,
	combout => \controlunit|add|Add0~30_combout\,
	cout => \controlunit|add|Add0~31\);

-- Location: LCCOMB_X47_Y28_N22
\controlunit|add|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~33_combout\ = (\controlunit|programcounter|counter\(4) & (!\controlunit|add|Add0~31\)) # (!\controlunit|programcounter|counter\(4) & ((\controlunit|add|Add0~31\) # (GND)))
-- \controlunit|add|Add0~34\ = CARRY((!\controlunit|add|Add0~31\) # (!\controlunit|programcounter|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(4),
	datad => VCC,
	cin => \controlunit|add|Add0~31\,
	combout => \controlunit|add|Add0~33_combout\,
	cout => \controlunit|add|Add0~34\);

-- Location: LCCOMB_X47_Y28_N24
\controlunit|add|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~36_combout\ = ((\controlunit|programcounter|counter\(3) $ (\controlunit|instructionreg|ff12|q~regout\ $ (!\controlunit|add|Add0~34\)))) # (GND)
-- \controlunit|add|Add0~37\ = CARRY((\controlunit|programcounter|counter\(3) & ((\controlunit|instructionreg|ff12|q~regout\) # (!\controlunit|add|Add0~34\))) # (!\controlunit|programcounter|counter\(3) & (\controlunit|instructionreg|ff12|q~regout\ & 
-- !\controlunit|add|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(3),
	datab => \controlunit|instructionreg|ff12|q~regout\,
	datad => VCC,
	cin => \controlunit|add|Add0~34\,
	combout => \controlunit|add|Add0~36_combout\,
	cout => \controlunit|add|Add0~37\);

-- Location: M4K_X52_Y28
\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processor.ram0_regfile_4c9f4da2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:operationalunit|regfile:reg|altsyncram:reg_rtl_1|altsyncram_5ki1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 16,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \controlunit|comb|RF_W_wr~0_combout\,
	portbrewe => VCC,
	portbaddrstall => \controlunit|comb|ALT_INV_PC_inc~0_wirecell_combout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X48_Y28_N14
\controlunit|add|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~11_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~9_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(12),
	datac => \controlunit|add|Add0~9_combout\,
	datad => \controlunit|comb|PC_ld~0_combout\,
	combout => \controlunit|add|Add0~11_combout\);

-- Location: LCCOMB_X48_Y28_N8
\controlunit|add|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~14_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~12_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datac => \controlunit|programcounter|counter\(11),
	datad => \controlunit|add|Add0~12_combout\,
	combout => \controlunit|add|Add0~14_combout\);

-- Location: LCCOMB_X48_Y28_N0
\controlunit|add|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~26_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~24_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datac => \controlunit|programcounter|counter\(7),
	datad => \controlunit|add|Add0~24_combout\,
	combout => \controlunit|add|Add0~26_combout\);

-- Location: LCCOMB_X48_Y28_N10
\controlunit|add|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~29_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~27_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datab => \controlunit|programcounter|counter\(6),
	datad => \controlunit|add|Add0~27_combout\,
	combout => \controlunit|add|Add0~29_combout\);

-- Location: LCCOMB_X48_Y28_N20
\controlunit|add|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~32_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~30_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(5),
	datac => \controlunit|add|Add0~30_combout\,
	datad => \controlunit|comb|PC_ld~0_combout\,
	combout => \controlunit|add|Add0~32_combout\);

-- Location: LCCOMB_X48_Y28_N30
\controlunit|add|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~35_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~33_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datac => \controlunit|programcounter|counter\(4),
	datad => \controlunit|add|Add0~33_combout\,
	combout => \controlunit|add|Add0~35_combout\);

-- Location: LCCOMB_X46_Y28_N6
\controlunit|add|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~38_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~36_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(3),
	datac => \controlunit|comb|PC_ld~0_combout\,
	datad => \controlunit|add|Add0~36_combout\,
	combout => \controlunit|add|Add0~38_combout\);

-- Location: LCFF_X53_Y27_N25
\operationalunit|reg|reg_rtl_0_bypass[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(13));

-- Location: LCFF_X53_Y27_N21
\operationalunit|reg|reg_rtl_0_bypass[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(21));

-- Location: LCFF_X51_Y27_N29
\operationalunit|reg|reg_rtl_0_bypass[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(27));

-- Location: LCFF_X51_Y27_N17
\operationalunit|reg|reg_rtl_0_bypass[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(37));

-- Location: LCCOMB_X51_Y28_N20
\controlunit|comb|n3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n3~3_combout\ = (!\operationalunit|reg|Rp_data\(10) & (!\operationalunit|reg|Rp_data\(7) & (!\operationalunit|reg|Rp_data\(8) & !\operationalunit|reg|Rp_data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(10),
	datab => \operationalunit|reg|Rp_data\(7),
	datac => \operationalunit|reg|Rp_data\(8),
	datad => \operationalunit|reg|Rp_data\(9),
	combout => \controlunit|comb|n3~3_combout\);

-- Location: LCFF_X51_Y28_N17
\operationalunit|reg|Rq_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(15));

-- Location: LCFF_X55_Y28_N17
\operationalunit|reg|Rq_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(14));

-- Location: LCFF_X55_Y28_N5
\operationalunit|reg|Rq_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(10));

-- Location: LCFF_X53_Y28_N21
\operationalunit|reg|Rq_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(9));

-- Location: LCFF_X55_Y28_N7
\operationalunit|reg|Rq_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(8));

-- Location: LCFF_X53_Y28_N11
\operationalunit|reg|Rq_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(7));

-- Location: LCFF_X53_Y28_N13
\operationalunit|reg|Rq_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(6));

-- Location: LCFF_X53_Y28_N9
\operationalunit|reg|Rq_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(4));

-- Location: LCFF_X53_Y28_N15
\operationalunit|reg|Rq_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(3));

-- Location: LCFF_X53_Y28_N31
\operationalunit|reg|Rq_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(1));

-- Location: LCCOMB_X51_Y28_N10
\controlunit|comb|n1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n1~1_combout\ = \controlunit|instructionreg|ff12|q~regout\ $ (\controlunit|instructionreg|ff13|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|instructionreg|ff12|q~regout\,
	datac => \controlunit|instructionreg|ff13|q~regout\,
	combout => \controlunit|comb|n1~1_combout\);

-- Location: LCCOMB_X51_Y28_N26
\controlunit|comb|n1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n1~2_combout\ = (\controlunit|comb|n1~1_combout\ & (((\controlunit|comb|n3~0_combout\ & \controlunit|comb|n3~5_combout\)))) # (!\controlunit|comb|n1~1_combout\ & ((\controlunit|comb|n1~0_combout\) # ((\controlunit|comb|n3~0_combout\ & 
-- \controlunit|comb|n3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|n1~1_combout\,
	datab => \controlunit|comb|n1~0_combout\,
	datac => \controlunit|comb|n3~0_combout\,
	datad => \controlunit|comb|n3~5_combout\,
	combout => \controlunit|comb|n1~2_combout\);

-- Location: LCCOMB_X51_Y28_N6
\controlunit|comb|RF_Rp_rd\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|RF_Rp_rd~combout\ = LCELL((\controlunit|statereg|ff3|q~regout\ & (((!\controlunit|statereg|ff1|q~regout\ & !\controlunit|statereg|ff2|q~regout\)))) # (!\controlunit|statereg|ff3|q~regout\ & (\controlunit|statereg|ff2|q~regout\ & 
-- ((\controlunit|statereg|ff0|q~regout\) # (!\controlunit|statereg|ff1|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff0|q~regout\,
	datab => \controlunit|statereg|ff3|q~regout\,
	datac => \controlunit|statereg|ff1|q~regout\,
	datad => \controlunit|statereg|ff2|q~regout\,
	combout => \controlunit|comb|RF_Rp_rd~combout\);

-- Location: LCCOMB_X51_Y28_N16
\operationalunit|reg|reg~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~39_combout\ = (\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(39))) # (!\operationalunit|reg|reg~38_combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(10) & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a15\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(39),
	datab => \operationalunit|reg|reg~38_combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a15\,
	combout => \operationalunit|reg|reg~39_combout\);

-- Location: LCCOMB_X55_Y28_N16
\operationalunit|reg|reg~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~40_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(37))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a14\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(37),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a14\,
	combout => \operationalunit|reg|reg~40_combout\);

-- Location: LCCOMB_X55_Y28_N4
\operationalunit|reg|reg~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~44_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(29))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a10\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(29),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a10\,
	combout => \operationalunit|reg|reg~44_combout\);

-- Location: LCCOMB_X53_Y28_N20
\operationalunit|reg|reg~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~45_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(27))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a9\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (((\operationalunit|reg|reg_rtl_0_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datab => \operationalunit|reg|reg~38_combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(27),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a9\,
	combout => \operationalunit|reg|reg~45_combout\);

-- Location: LCCOMB_X55_Y28_N6
\operationalunit|reg|reg~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~46_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(25))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a8\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(25),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a8\,
	combout => \operationalunit|reg|reg~46_combout\);

-- Location: LCCOMB_X53_Y28_N10
\operationalunit|reg|reg~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~47_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(23))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a7\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(23),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a7\,
	combout => \operationalunit|reg|reg~47_combout\);

-- Location: LCCOMB_X53_Y28_N12
\operationalunit|reg|reg~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~48_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(21))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a6\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(21),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datac => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a6\,
	datad => \operationalunit|reg|reg~38_combout\,
	combout => \operationalunit|reg|reg~48_combout\);

-- Location: LCCOMB_X53_Y28_N8
\operationalunit|reg|reg~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~50_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(17))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a4\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (((\operationalunit|reg|reg_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datab => \operationalunit|reg|reg~38_combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(17),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a4\,
	combout => \operationalunit|reg|reg~50_combout\);

-- Location: LCCOMB_X53_Y28_N14
\operationalunit|reg|reg~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~51_combout\ = (\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(15))) # (!\operationalunit|reg|reg~38_combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(10) & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a3\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(15),
	datab => \operationalunit|reg|reg~38_combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a3\,
	combout => \operationalunit|reg|reg~51_combout\);

-- Location: LCCOMB_X53_Y28_N30
\operationalunit|reg|reg~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~53_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(11))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a1\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (((\operationalunit|reg|reg_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datab => \operationalunit|reg|reg~38_combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(11),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a1\,
	combout => \operationalunit|reg|reg~53_combout\);

-- Location: LCCOMB_X50_Y28_N0
\controlunit|comb|RF_Rq_rd\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|RF_Rq_rd~combout\ = LCELL((\controlunit|statereg|ff0|q~regout\ & ((\controlunit|statereg|ff2|q~regout\ & (!\controlunit|statereg|ff3|q~regout\)) # (!\controlunit|statereg|ff2|q~regout\ & (\controlunit|statereg|ff3|q~regout\ & 
-- !\controlunit|statereg|ff1|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff0|q~regout\,
	datab => \controlunit|statereg|ff2|q~regout\,
	datac => \controlunit|statereg|ff3|q~regout\,
	datad => \controlunit|statereg|ff1|q~regout\,
	combout => \controlunit|comb|RF_Rq_rd~combout\);

-- Location: CLKCTRL_G8
\controlunit|comb|RF_Rq_rd~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \controlunit|comb|RF_Rq_rd~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\controlunit|comb|RF_Rp_rd~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \controlunit|comb|RF_Rp_rd~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y28_N0
\controlunit|add|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~0_combout\ = (\controlunit|programcounter|counter\(15) & (\controlunit|instructionreg|ff10|q~regout\ $ (VCC))) # (!\controlunit|programcounter|counter\(15) & (\controlunit|instructionreg|ff10|q~regout\ & VCC))
-- \controlunit|add|Add0~1\ = CARRY((\controlunit|programcounter|counter\(15) & \controlunit|instructionreg|ff10|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(15),
	datab => \controlunit|instructionreg|ff10|q~regout\,
	datad => VCC,
	combout => \controlunit|add|Add0~0_combout\,
	cout => \controlunit|add|Add0~1\);

-- Location: LCCOMB_X47_Y28_N2
\controlunit|add|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~3_combout\ = (\controlunit|programcounter|counter\(14) & ((\controlunit|instructionreg|ff1|q~regout\ & (\controlunit|add|Add0~1\ & VCC)) # (!\controlunit|instructionreg|ff1|q~regout\ & (!\controlunit|add|Add0~1\)))) # 
-- (!\controlunit|programcounter|counter\(14) & ((\controlunit|instructionreg|ff1|q~regout\ & (!\controlunit|add|Add0~1\)) # (!\controlunit|instructionreg|ff1|q~regout\ & ((\controlunit|add|Add0~1\) # (GND)))))
-- \controlunit|add|Add0~4\ = CARRY((\controlunit|programcounter|counter\(14) & (!\controlunit|instructionreg|ff1|q~regout\ & !\controlunit|add|Add0~1\)) # (!\controlunit|programcounter|counter\(14) & ((!\controlunit|add|Add0~1\) # 
-- (!\controlunit|instructionreg|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(14),
	datab => \controlunit|instructionreg|ff1|q~regout\,
	datad => VCC,
	cin => \controlunit|add|Add0~1\,
	combout => \controlunit|add|Add0~3_combout\,
	cout => \controlunit|add|Add0~4\);

-- Location: LCCOMB_X47_Y28_N4
\controlunit|add|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~6_combout\ = (\controlunit|programcounter|counter\(13) & (\controlunit|add|Add0~4\ $ (GND))) # (!\controlunit|programcounter|counter\(13) & (!\controlunit|add|Add0~4\ & VCC))
-- \controlunit|add|Add0~7\ = CARRY((\controlunit|programcounter|counter\(13) & !\controlunit|add|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(13),
	datad => VCC,
	cin => \controlunit|add|Add0~4\,
	combout => \controlunit|add|Add0~6_combout\,
	cout => \controlunit|add|Add0~7\);

-- Location: LCCOMB_X46_Y28_N18
\readonlymemory|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux1~0_combout\ = (!\controlunit|programcounter|counter\(12) & (\controlunit|programcounter|counter\(14) & (\controlunit|programcounter|counter\(15) & !\controlunit|programcounter|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datab => \controlunit|programcounter|counter\(14),
	datac => \controlunit|programcounter|counter\(15),
	datad => \controlunit|programcounter|counter\(13),
	combout => \readonlymemory|Mux1~0_combout\);

-- Location: LCFF_X46_Y28_N19
\readonlymemory|data_output[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(9));

-- Location: LCCOMB_X51_Y29_N2
\operationalunit|reg|reg_rtl_0_bypass[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \operationalunit|reg|reg_rtl_0_bypass[10]~feeder_combout\);

-- Location: LCFF_X51_Y29_N3
\operationalunit|reg|reg_rtl_0_bypass[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(10));

-- Location: LCFF_X51_Y29_N1
\operationalunit|reg|reg_rtl_0_bypass[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controlunit|instructionreg|ff10|q~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(1));

-- Location: LCCOMB_X51_Y28_N30
\controlunit|comb|RF_W_wr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|RF_W_wr~0_combout\ = (!\controlunit|statereg|ff3|q~regout\ & ((\controlunit|statereg|ff1|q~regout\ & ((\controlunit|statereg|ff0|q~regout\) # (\controlunit|statereg|ff2|q~regout\))) # (!\controlunit|statereg|ff1|q~regout\ & 
-- (\controlunit|statereg|ff0|q~regout\ & \controlunit|statereg|ff2|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff1|q~regout\,
	datab => \controlunit|statereg|ff0|q~regout\,
	datac => \controlunit|statereg|ff2|q~regout\,
	datad => \controlunit|statereg|ff3|q~regout\,
	combout => \controlunit|comb|RF_W_wr~0_combout\);

-- Location: LCFF_X51_Y29_N9
\operationalunit|reg|reg_rtl_0_bypass[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controlunit|comb|RF_W_wr~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(0));

-- Location: LCFF_X51_Y29_N11
\operationalunit|reg|reg_rtl_0_bypass[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controlunit|instructionreg|ff1|q~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(3));

-- Location: LCCOMB_X51_Y29_N10
\operationalunit|reg|reg~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~21_combout\ = (!\controlunit|instructionreg|ff10|q~regout\ & (\operationalunit|reg|reg_rtl_0_bypass\(0) & (\operationalunit|reg|reg_rtl_0_bypass\(3) $ (!\controlunit|instructionreg|ff12|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|instructionreg|ff10|q~regout\,
	datab => \operationalunit|reg|reg_rtl_0_bypass\(0),
	datac => \operationalunit|reg|reg_rtl_0_bypass\(3),
	datad => \controlunit|instructionreg|ff12|q~regout\,
	combout => \operationalunit|reg|reg~21_combout\);

-- Location: LCCOMB_X51_Y29_N0
\operationalunit|reg|reg\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~combout\ = ((!\operationalunit|reg|reg_rtl_0_bypass\(1) & \operationalunit|reg|reg~21_combout\)) # (!\operationalunit|reg|reg_rtl_0_bypass\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datac => \operationalunit|reg|reg_rtl_0_bypass\(1),
	datad => \operationalunit|reg|reg~21_combout\,
	combout => \operationalunit|reg|reg~combout\);

-- Location: LCCOMB_X51_Y28_N0
\controlunit|comb|PC_inc~0_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|PC_inc~0_wirecell_combout\ = !\controlunit|comb|PC_inc~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|comb|PC_inc~0_combout\,
	combout => \controlunit|comb|PC_inc~0_wirecell_combout\);

-- Location: LCCOMB_X53_Y29_N16
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCFF_X53_Y27_N31
\operationalunit|reg|reg_rtl_0_bypass[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(11));

-- Location: LCCOMB_X51_Y27_N14
\operationalunit|mux|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|Equal2~0_combout\ = (\controlunit|statereg|ff3|q~regout\) # (((\controlunit|statereg|ff0|q~regout\) # (!\controlunit|statereg|ff1|q~regout\)) # (!\controlunit|statereg|ff2|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff3|q~regout\,
	datab => \controlunit|statereg|ff2|q~regout\,
	datac => \controlunit|statereg|ff1|q~regout\,
	datad => \controlunit|statereg|ff0|q~regout\,
	combout => \operationalunit|mux|Equal2~0_combout\);

-- Location: LCCOMB_X51_Y27_N12
\controlunit|comb|D_rd~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|D_rd~0_combout\ = (\controlunit|statereg|ff3|q~regout\) # ((\controlunit|statereg|ff2|q~regout\) # ((!\controlunit|statereg|ff0|q~regout\) # (!\controlunit|statereg|ff1|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff3|q~regout\,
	datab => \controlunit|statereg|ff2|q~regout\,
	datac => \controlunit|statereg|ff1|q~regout\,
	datad => \controlunit|statereg|ff0|q~regout\,
	combout => \controlunit|comb|D_rd~0_combout\);

-- Location: LCCOMB_X53_Y27_N24
\operationalunit|mux|D[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[2]~2_combout\ = (\controlunit|comb|D_rd~0_combout\ & (((!\operationalunit|mux|Equal2~0_combout\ & \operationalunit|reg|Rp_data\(2))))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\,
	datab => \operationalunit|mux|Equal2~0_combout\,
	datac => \operationalunit|reg|Rp_data\(2),
	datad => \controlunit|comb|D_rd~0_combout\,
	combout => \operationalunit|mux|D[2]~2_combout\);

-- Location: LCCOMB_X46_Y28_N16
\readonlymemory|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux0~0_combout\ = (!\controlunit|programcounter|counter\(12) & (\controlunit|programcounter|counter\(14) & (!\controlunit|programcounter|counter\(15) & !\controlunit|programcounter|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datab => \controlunit|programcounter|counter\(14),
	datac => \controlunit|programcounter|counter\(15),
	datad => \controlunit|programcounter|counter\(13),
	combout => \readonlymemory|Mux0~0_combout\);

-- Location: LCFF_X46_Y28_N17
\readonlymemory|data_output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(4));

-- Location: LCFF_X47_Y28_N9
\controlunit|instructionreg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \readonlymemory|data_output\(4),
	sload => VCC,
	ena => \controlunit|comb|ALT_INV_PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff13|q~regout\);

-- Location: LCCOMB_X51_Y27_N20
\randomaccessmemory|temp_address[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \randomaccessmemory|temp_address[0]~feeder_combout\ = \controlunit|instructionreg|ff10|q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|instructionreg|ff10|q~regout\,
	combout => \randomaccessmemory|temp_address[0]~feeder_combout\);

-- Location: LCFF_X51_Y27_N21
\randomaccessmemory|temp_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \randomaccessmemory|temp_address[0]~feeder_combout\,
	ena => \controlunit|comb|D_rd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randomaccessmemory|temp_address\(0));

-- Location: LCFF_X51_Y27_N31
\randomaccessmemory|temp_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controlunit|instructionreg|ff1|q~regout\,
	sload => VCC,
	ena => \controlunit|comb|D_rd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randomaccessmemory|temp_address\(1));

-- Location: LCCOMB_X51_Y27_N0
\randomaccessmemory|temp_address[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \randomaccessmemory|temp_address[4]~feeder_combout\ = \controlunit|instructionreg|ff13|q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|instructionreg|ff13|q~regout\,
	combout => \randomaccessmemory|temp_address[4]~feeder_combout\);

-- Location: LCFF_X51_Y27_N1
\randomaccessmemory|temp_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \randomaccessmemory|temp_address[4]~feeder_combout\,
	ena => \controlunit|comb|D_rd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randomaccessmemory|temp_address\(4));

-- Location: LCFF_X53_Y27_N3
\operationalunit|reg|reg_rtl_0_bypass[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(19));

-- Location: LCFF_X53_Y27_N23
\operationalunit|reg|reg_rtl_0_bypass[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(23));

-- Location: LCFF_X51_Y27_N27
\operationalunit|reg|reg_rtl_0_bypass[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(25));

-- Location: LCFF_X51_Y27_N3
\operationalunit|reg|reg_rtl_0_bypass[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(29));

-- Location: LCFF_X51_Y29_N25
\operationalunit|reg|reg_rtl_0_bypass[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(31));

-- Location: LCFF_X51_Y29_N27
\operationalunit|reg|reg_rtl_0_bypass[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(33));

-- Location: LCFF_X51_Y29_N21
\operationalunit|reg|reg_rtl_0_bypass[35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(35));

-- Location: M4K_X52_Y29
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processor.ram0_regfile_4c9f4da2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:operationalunit|regfile:reg|altsyncram:reg_rtl_0|altsyncram_5ki1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 16,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \controlunit|comb|RF_W_wr~0_combout\,
	portbrewe => VCC,
	portbaddrstall => \controlunit|comb|ALT_INV_PC_inc~0_wirecell_combout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X51_Y27_N7
\operationalunit|reg|reg_rtl_0_bypass[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(39));

-- Location: LCCOMB_X51_Y29_N18
\operationalunit|reg|reg~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~37_combout\ = (\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(39)))) # (!\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~combout\,
	datab => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a15\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(39),
	combout => \operationalunit|reg|reg~37_combout\);

-- Location: LCFF_X51_Y29_N19
\operationalunit|reg|Rp_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(15));

-- Location: M4K_X52_Y27
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000C000B000A000900080007000600050004000300020001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processor.ram0_RAM_15119.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:randomaccessmemory|altsyncram:ram_rtl_0|altsyncram_gbk1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 16,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X51_Y27_N6
\operationalunit|mux|D[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[15]~15_combout\ = (\controlunit|comb|D_rd~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & ((\operationalunit|reg|Rp_data\(15))))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|D_rd~0_combout\,
	datab => \operationalunit|mux|Equal2~0_combout\,
	datac => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\,
	datad => \operationalunit|reg|Rp_data\(15),
	combout => \operationalunit|mux|D[15]~15_combout\);

-- Location: LCCOMB_X51_Y29_N4
\operationalunit|reg|reg~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~36_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(37))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(37),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a14\,
	combout => \operationalunit|reg|reg~36_combout\);

-- Location: LCFF_X51_Y29_N5
\operationalunit|reg|Rp_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(14));

-- Location: LCCOMB_X51_Y27_N16
\operationalunit|mux|D[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[14]~14_combout\ = (\controlunit|comb|D_rd~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & ((\operationalunit|reg|Rp_data\(14))))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|D_rd~0_combout\,
	datab => \operationalunit|mux|Equal2~0_combout\,
	datac => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\,
	datad => \operationalunit|reg|Rp_data\(14),
	combout => \operationalunit|mux|D[14]~14_combout\);

-- Location: LCCOMB_X51_Y29_N14
\operationalunit|reg|reg~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~35_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(35))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(35),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a13\,
	combout => \operationalunit|reg|reg~35_combout\);

-- Location: LCFF_X51_Y29_N15
\operationalunit|reg|Rp_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(13));

-- Location: LCCOMB_X51_Y29_N20
\operationalunit|mux|D[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[13]~13_combout\ = (\controlunit|comb|D_rd~0_combout\ & (((\operationalunit|reg|Rp_data\(13) & !\operationalunit|mux|Equal2~0_combout\)))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\,
	datab => \operationalunit|reg|Rp_data\(13),
	datac => \controlunit|comb|D_rd~0_combout\,
	datad => \operationalunit|mux|Equal2~0_combout\,
	combout => \operationalunit|mux|D[13]~13_combout\);

-- Location: LCCOMB_X51_Y29_N12
\operationalunit|reg|reg~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~34_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(33))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(33),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a12\,
	combout => \operationalunit|reg|reg~34_combout\);

-- Location: LCFF_X51_Y29_N13
\operationalunit|reg|Rp_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(12));

-- Location: LCCOMB_X51_Y29_N26
\operationalunit|mux|D[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[12]~12_combout\ = (\controlunit|comb|D_rd~0_combout\ & (\operationalunit|reg|Rp_data\(12) & ((!\operationalunit|mux|Equal2~0_combout\)))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(12),
	datab => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\,
	datac => \controlunit|comb|D_rd~0_combout\,
	datad => \operationalunit|mux|Equal2~0_combout\,
	combout => \operationalunit|mux|D[12]~12_combout\);

-- Location: LCCOMB_X51_Y29_N6
\operationalunit|reg|reg~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~33_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(31))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(31),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a11\,
	combout => \operationalunit|reg|reg~33_combout\);

-- Location: LCFF_X51_Y29_N7
\operationalunit|reg|Rp_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(11));

-- Location: LCCOMB_X51_Y29_N24
\operationalunit|mux|D[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[11]~11_combout\ = (\controlunit|comb|D_rd~0_combout\ & (\operationalunit|reg|Rp_data\(11) & ((!\operationalunit|mux|Equal2~0_combout\)))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(11),
	datab => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\,
	datac => \controlunit|comb|D_rd~0_combout\,
	datad => \operationalunit|mux|Equal2~0_combout\,
	combout => \operationalunit|mux|D[11]~11_combout\);

-- Location: LCCOMB_X51_Y29_N16
\operationalunit|reg|reg~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~32_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(29))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(29),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a10\,
	combout => \operationalunit|reg|reg~32_combout\);

-- Location: LCFF_X51_Y29_N17
\operationalunit|reg|Rp_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(10));

-- Location: LCCOMB_X51_Y27_N2
\operationalunit|mux|D[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[10]~10_combout\ = (\controlunit|comb|D_rd~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & ((\operationalunit|reg|Rp_data\(10))))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|D_rd~0_combout\,
	datab => \operationalunit|mux|Equal2~0_combout\,
	datac => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\,
	datad => \operationalunit|reg|Rp_data\(10),
	combout => \operationalunit|mux|D[10]~10_combout\);

-- Location: LCCOMB_X51_Y29_N30
\operationalunit|reg|reg~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~31_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(27))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(27),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a9\,
	combout => \operationalunit|reg|reg~31_combout\);

-- Location: LCFF_X51_Y29_N31
\operationalunit|reg|Rp_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(9));

-- Location: LCCOMB_X51_Y27_N28
\operationalunit|mux|D[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[9]~9_combout\ = (\controlunit|comb|D_rd~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & ((\operationalunit|reg|Rp_data\(9))))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|D_rd~0_combout\,
	datab => \operationalunit|mux|Equal2~0_combout\,
	datac => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \operationalunit|reg|Rp_data\(9),
	combout => \operationalunit|mux|D[9]~9_combout\);

-- Location: LCCOMB_X51_Y29_N28
\operationalunit|reg|reg~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~30_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(25))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(25),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a8\,
	combout => \operationalunit|reg|reg~30_combout\);

-- Location: LCFF_X51_Y29_N29
\operationalunit|reg|Rp_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(8));

-- Location: LCCOMB_X51_Y27_N26
\operationalunit|mux|D[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[8]~8_combout\ = (\controlunit|comb|D_rd~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & (\operationalunit|reg|Rp_data\(8)))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|D_rd~0_combout\,
	datab => \operationalunit|mux|Equal2~0_combout\,
	datac => \operationalunit|reg|Rp_data\(8),
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\,
	combout => \operationalunit|mux|D[8]~8_combout\);

-- Location: LCCOMB_X53_Y28_N18
\operationalunit|reg|reg~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~29_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(23))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(23),
	datac => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a7\,
	datad => \operationalunit|reg|reg~combout\,
	combout => \operationalunit|reg|reg~29_combout\);

-- Location: LCFF_X53_Y28_N19
\operationalunit|reg|Rp_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(7));

-- Location: LCCOMB_X53_Y27_N22
\operationalunit|mux|D[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[7]~7_combout\ = (\controlunit|comb|D_rd~0_combout\ & (((\operationalunit|reg|Rp_data\(7) & !\operationalunit|mux|Equal2~0_combout\)))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\,
	datab => \operationalunit|reg|Rp_data\(7),
	datac => \operationalunit|mux|Equal2~0_combout\,
	datad => \controlunit|comb|D_rd~0_combout\,
	combout => \operationalunit|mux|D[7]~7_combout\);

-- Location: LCCOMB_X53_Y28_N16
\operationalunit|reg|reg~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~28_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(21))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(21),
	datac => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a6\,
	datad => \operationalunit|reg|reg~combout\,
	combout => \operationalunit|reg|reg~28_combout\);

-- Location: LCFF_X53_Y28_N17
\operationalunit|reg|Rp_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(6));

-- Location: LCCOMB_X53_Y27_N20
\operationalunit|mux|D[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[6]~6_combout\ = (\controlunit|comb|D_rd~0_combout\ & (((\operationalunit|reg|Rp_data\(6) & !\operationalunit|mux|Equal2~0_combout\)))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\,
	datab => \controlunit|comb|D_rd~0_combout\,
	datac => \operationalunit|reg|Rp_data\(6),
	datad => \operationalunit|mux|Equal2~0_combout\,
	combout => \operationalunit|mux|D[6]~6_combout\);

-- Location: LCCOMB_X53_Y28_N2
\operationalunit|reg|reg~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~27_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(19))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(19),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a5\,
	combout => \operationalunit|reg|reg~27_combout\);

-- Location: LCFF_X53_Y28_N3
\operationalunit|reg|Rp_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(5));

-- Location: LCCOMB_X53_Y27_N2
\operationalunit|mux|D[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[5]~5_combout\ = (\controlunit|comb|D_rd~0_combout\ & (\operationalunit|reg|Rp_data\(5) & ((!\operationalunit|mux|Equal2~0_combout\)))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(5),
	datab => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\,
	datac => \operationalunit|mux|Equal2~0_combout\,
	datad => \controlunit|comb|D_rd~0_combout\,
	combout => \operationalunit|mux|D[5]~5_combout\);

-- Location: LCFF_X53_Y27_N29
\operationalunit|reg|reg_rtl_0_bypass[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(17));

-- Location: LCCOMB_X53_Y28_N4
\operationalunit|reg|reg~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~26_combout\ = (\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(17)))) # (!\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~combout\,
	datac => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a4\,
	datad => \operationalunit|reg|reg_rtl_0_bypass\(17),
	combout => \operationalunit|reg|reg~26_combout\);

-- Location: LCFF_X53_Y28_N5
\operationalunit|reg|Rp_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(4));

-- Location: LCCOMB_X53_Y27_N28
\operationalunit|mux|D[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[4]~4_combout\ = (\controlunit|comb|D_rd~0_combout\ & (((\operationalunit|reg|Rp_data\(4) & !\operationalunit|mux|Equal2~0_combout\)))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\,
	datab => \operationalunit|reg|Rp_data\(4),
	datac => \operationalunit|mux|Equal2~0_combout\,
	datad => \controlunit|comb|D_rd~0_combout\,
	combout => \operationalunit|mux|D[4]~4_combout\);

-- Location: LCFF_X53_Y27_N27
\operationalunit|reg|reg_rtl_0_bypass[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(15));

-- Location: LCCOMB_X53_Y28_N6
\operationalunit|reg|reg~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~25_combout\ = (\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(15)))) # (!\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~combout\,
	datac => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a3\,
	datad => \operationalunit|reg|reg_rtl_0_bypass\(15),
	combout => \operationalunit|reg|reg~25_combout\);

-- Location: LCFF_X53_Y28_N7
\operationalunit|reg|Rp_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(3));

-- Location: LCCOMB_X53_Y27_N26
\operationalunit|mux|D[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[3]~3_combout\ = (\controlunit|comb|D_rd~0_combout\ & (((\operationalunit|reg|Rp_data\(3) & !\operationalunit|mux|Equal2~0_combout\)))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\,
	datab => \operationalunit|reg|Rp_data\(3),
	datac => \operationalunit|mux|Equal2~0_combout\,
	datad => \controlunit|comb|D_rd~0_combout\,
	combout => \operationalunit|mux|D[3]~3_combout\);

-- Location: LCCOMB_X53_Y28_N22
\operationalunit|reg|reg~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~23_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(11))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(11),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a1\,
	combout => \operationalunit|reg|reg~23_combout\);

-- Location: LCFF_X53_Y28_N23
\operationalunit|reg|Rp_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(1));

-- Location: LCCOMB_X53_Y27_N30
\operationalunit|mux|D[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[1]~1_combout\ = (\controlunit|comb|D_rd~0_combout\ & (((\operationalunit|reg|Rp_data\(1) & !\operationalunit|mux|Equal2~0_combout\)))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\,
	datab => \operationalunit|reg|Rp_data\(1),
	datac => \operationalunit|mux|Equal2~0_combout\,
	datad => \controlunit|comb|D_rd~0_combout\,
	combout => \operationalunit|mux|D[1]~1_combout\);

-- Location: LCFF_X53_Y27_N1
\operationalunit|reg|reg_rtl_0_bypass[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(9));

-- Location: LCCOMB_X53_Y28_N0
\operationalunit|reg|reg~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~22_combout\ = (\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(9)))) # (!\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~combout\,
	datac => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \operationalunit|reg|reg_rtl_0_bypass\(9),
	combout => \operationalunit|reg|reg~22_combout\);

-- Location: LCFF_X53_Y28_N1
\operationalunit|reg|Rp_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(0));

-- Location: LCCOMB_X53_Y27_N0
\operationalunit|mux|D[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[0]~0_combout\ = (\controlunit|comb|D_rd~0_combout\ & (((\operationalunit|reg|Rp_data\(0) & !\operationalunit|mux|Equal2~0_combout\)))) # (!\controlunit|comb|D_rd~0_combout\ & 
-- (\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|D_rd~0_combout\,
	datab => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \operationalunit|reg|Rp_data\(0),
	datad => \operationalunit|mux|Equal2~0_combout\,
	combout => \operationalunit|mux|D[0]~0_combout\);

-- Location: LCCOMB_X53_Y28_N28
\operationalunit|reg|reg~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~24_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(13))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(13),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a2\,
	combout => \operationalunit|reg|reg~24_combout\);

-- Location: LCFF_X53_Y28_N29
\operationalunit|reg|Rp_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(2));

-- Location: LCCOMB_X51_Y28_N14
\controlunit|comb|n3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n3~0_combout\ = (!\operationalunit|reg|Rp_data\(0) & (!\controlunit|statereg|ff0|q~regout\ & (!\operationalunit|reg|Rp_data\(2) & !\operationalunit|reg|Rp_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(0),
	datab => \controlunit|statereg|ff0|q~regout\,
	datac => \operationalunit|reg|Rp_data\(2),
	datad => \operationalunit|reg|Rp_data\(1),
	combout => \controlunit|comb|n3~0_combout\);

-- Location: LCCOMB_X51_Y29_N8
\operationalunit|reg|reg~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~38_combout\ = (!\operationalunit|reg|reg_rtl_0_bypass\(3) & (\operationalunit|reg|reg_rtl_0_bypass\(0) & (\operationalunit|reg|reg_rtl_0_bypass\(1) $ (!\controlunit|instructionreg|ff13|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(3),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(1),
	datac => \operationalunit|reg|reg_rtl_0_bypass\(0),
	datad => \controlunit|instructionreg|ff13|q~regout\,
	combout => \operationalunit|reg|reg~38_combout\);

-- Location: LCCOMB_X55_Y28_N14
\operationalunit|reg|reg~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~41_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(35))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a13\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(35),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a13\,
	combout => \operationalunit|reg|reg~41_combout\);

-- Location: LCFF_X55_Y28_N15
\operationalunit|reg|Rq_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(13));

-- Location: LCCOMB_X55_Y28_N12
\operationalunit|reg|reg~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~42_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(33))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a12\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(33),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a12\,
	combout => \operationalunit|reg|reg~42_combout\);

-- Location: LCFF_X55_Y28_N13
\operationalunit|reg|Rq_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(12));

-- Location: LCCOMB_X55_Y28_N30
\operationalunit|reg|reg~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~43_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(31))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a11\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(31),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a11\,
	combout => \operationalunit|reg|reg~43_combout\);

-- Location: LCFF_X55_Y28_N31
\operationalunit|reg|Rq_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(11));

-- Location: LCCOMB_X53_Y28_N26
\operationalunit|reg|reg~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~49_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(19))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a5\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (((\operationalunit|reg|reg_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datab => \operationalunit|reg|reg~38_combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(19),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a5\,
	combout => \operationalunit|reg|reg~49_combout\);

-- Location: LCFF_X53_Y28_N27
\operationalunit|reg|Rq_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(5));

-- Location: LCCOMB_X53_Y28_N24
\operationalunit|reg|reg~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~52_combout\ = (\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(13))) # (!\operationalunit|reg|reg~38_combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(10) & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a2\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(13),
	datab => \operationalunit|reg|reg~38_combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a2\,
	combout => \operationalunit|reg|reg~52_combout\);

-- Location: LCFF_X53_Y28_N25
\operationalunit|reg|Rq_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(2));

-- Location: LCCOMB_X51_Y28_N18
\operationalunit|reg|reg~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~54_combout\ = (\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(9))) # (!\operationalunit|reg|reg~38_combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(10) & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0~portbdataout\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(9),
	datab => \operationalunit|reg|reg~38_combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \operationalunit|reg|reg~54_combout\);

-- Location: LCFF_X51_Y28_N19
\operationalunit|reg|Rq_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(0));

-- Location: LCCOMB_X54_Y28_N0
\operationalunit|comp0|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~1_cout\ = CARRY((\operationalunit|reg|Rp_data\(0) & !\operationalunit|reg|Rq_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(0),
	datab => \operationalunit|reg|Rq_data\(0),
	datad => VCC,
	cout => \operationalunit|comp0|LessThan0~1_cout\);

-- Location: LCCOMB_X54_Y28_N2
\operationalunit|comp0|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~3_cout\ = CARRY((\operationalunit|reg|Rq_data\(1) & ((!\operationalunit|comp0|LessThan0~1_cout\) # (!\operationalunit|reg|Rp_data\(1)))) # (!\operationalunit|reg|Rq_data\(1) & (!\operationalunit|reg|Rp_data\(1) & 
-- !\operationalunit|comp0|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rq_data\(1),
	datab => \operationalunit|reg|Rp_data\(1),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~1_cout\,
	cout => \operationalunit|comp0|LessThan0~3_cout\);

-- Location: LCCOMB_X54_Y28_N4
\operationalunit|comp0|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~5_cout\ = CARRY((\operationalunit|reg|Rp_data\(2) & ((!\operationalunit|comp0|LessThan0~3_cout\) # (!\operationalunit|reg|Rq_data\(2)))) # (!\operationalunit|reg|Rp_data\(2) & (!\operationalunit|reg|Rq_data\(2) & 
-- !\operationalunit|comp0|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(2),
	datab => \operationalunit|reg|Rq_data\(2),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~3_cout\,
	cout => \operationalunit|comp0|LessThan0~5_cout\);

-- Location: LCCOMB_X54_Y28_N6
\operationalunit|comp0|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~7_cout\ = CARRY((\operationalunit|reg|Rq_data\(3) & ((!\operationalunit|comp0|LessThan0~5_cout\) # (!\operationalunit|reg|Rp_data\(3)))) # (!\operationalunit|reg|Rq_data\(3) & (!\operationalunit|reg|Rp_data\(3) & 
-- !\operationalunit|comp0|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rq_data\(3),
	datab => \operationalunit|reg|Rp_data\(3),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~5_cout\,
	cout => \operationalunit|comp0|LessThan0~7_cout\);

-- Location: LCCOMB_X54_Y28_N8
\operationalunit|comp0|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~9_cout\ = CARRY((\operationalunit|reg|Rq_data\(4) & (\operationalunit|reg|Rp_data\(4) & !\operationalunit|comp0|LessThan0~7_cout\)) # (!\operationalunit|reg|Rq_data\(4) & ((\operationalunit|reg|Rp_data\(4)) # 
-- (!\operationalunit|comp0|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rq_data\(4),
	datab => \operationalunit|reg|Rp_data\(4),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~7_cout\,
	cout => \operationalunit|comp0|LessThan0~9_cout\);

-- Location: LCCOMB_X54_Y28_N10
\operationalunit|comp0|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~11_cout\ = CARRY((\operationalunit|reg|Rp_data\(5) & (\operationalunit|reg|Rq_data\(5) & !\operationalunit|comp0|LessThan0~9_cout\)) # (!\operationalunit|reg|Rp_data\(5) & ((\operationalunit|reg|Rq_data\(5)) # 
-- (!\operationalunit|comp0|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(5),
	datab => \operationalunit|reg|Rq_data\(5),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~9_cout\,
	cout => \operationalunit|comp0|LessThan0~11_cout\);

-- Location: LCCOMB_X54_Y28_N12
\operationalunit|comp0|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~13_cout\ = CARRY((\operationalunit|reg|Rq_data\(6) & (\operationalunit|reg|Rp_data\(6) & !\operationalunit|comp0|LessThan0~11_cout\)) # (!\operationalunit|reg|Rq_data\(6) & ((\operationalunit|reg|Rp_data\(6)) # 
-- (!\operationalunit|comp0|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rq_data\(6),
	datab => \operationalunit|reg|Rp_data\(6),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~11_cout\,
	cout => \operationalunit|comp0|LessThan0~13_cout\);

-- Location: LCCOMB_X54_Y28_N14
\operationalunit|comp0|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~15_cout\ = CARRY((\operationalunit|reg|Rq_data\(7) & ((!\operationalunit|comp0|LessThan0~13_cout\) # (!\operationalunit|reg|Rp_data\(7)))) # (!\operationalunit|reg|Rq_data\(7) & (!\operationalunit|reg|Rp_data\(7) & 
-- !\operationalunit|comp0|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rq_data\(7),
	datab => \operationalunit|reg|Rp_data\(7),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~13_cout\,
	cout => \operationalunit|comp0|LessThan0~15_cout\);

-- Location: LCCOMB_X54_Y28_N16
\operationalunit|comp0|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~17_cout\ = CARRY((\operationalunit|reg|Rq_data\(8) & (\operationalunit|reg|Rp_data\(8) & !\operationalunit|comp0|LessThan0~15_cout\)) # (!\operationalunit|reg|Rq_data\(8) & ((\operationalunit|reg|Rp_data\(8)) # 
-- (!\operationalunit|comp0|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rq_data\(8),
	datab => \operationalunit|reg|Rp_data\(8),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~15_cout\,
	cout => \operationalunit|comp0|LessThan0~17_cout\);

-- Location: LCCOMB_X54_Y28_N18
\operationalunit|comp0|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~19_cout\ = CARRY((\operationalunit|reg|Rq_data\(9) & ((!\operationalunit|comp0|LessThan0~17_cout\) # (!\operationalunit|reg|Rp_data\(9)))) # (!\operationalunit|reg|Rq_data\(9) & (!\operationalunit|reg|Rp_data\(9) & 
-- !\operationalunit|comp0|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rq_data\(9),
	datab => \operationalunit|reg|Rp_data\(9),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~17_cout\,
	cout => \operationalunit|comp0|LessThan0~19_cout\);

-- Location: LCCOMB_X54_Y28_N20
\operationalunit|comp0|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~21_cout\ = CARRY((\operationalunit|reg|Rq_data\(10) & (\operationalunit|reg|Rp_data\(10) & !\operationalunit|comp0|LessThan0~19_cout\)) # (!\operationalunit|reg|Rq_data\(10) & ((\operationalunit|reg|Rp_data\(10)) # 
-- (!\operationalunit|comp0|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rq_data\(10),
	datab => \operationalunit|reg|Rp_data\(10),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~19_cout\,
	cout => \operationalunit|comp0|LessThan0~21_cout\);

-- Location: LCCOMB_X54_Y28_N22
\operationalunit|comp0|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~23_cout\ = CARRY((\operationalunit|reg|Rp_data\(11) & (\operationalunit|reg|Rq_data\(11) & !\operationalunit|comp0|LessThan0~21_cout\)) # (!\operationalunit|reg|Rp_data\(11) & ((\operationalunit|reg|Rq_data\(11)) # 
-- (!\operationalunit|comp0|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(11),
	datab => \operationalunit|reg|Rq_data\(11),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~21_cout\,
	cout => \operationalunit|comp0|LessThan0~23_cout\);

-- Location: LCCOMB_X54_Y28_N24
\operationalunit|comp0|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~25_cout\ = CARRY((\operationalunit|reg|Rp_data\(12) & ((!\operationalunit|comp0|LessThan0~23_cout\) # (!\operationalunit|reg|Rq_data\(12)))) # (!\operationalunit|reg|Rp_data\(12) & (!\operationalunit|reg|Rq_data\(12) & 
-- !\operationalunit|comp0|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(12),
	datab => \operationalunit|reg|Rq_data\(12),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~23_cout\,
	cout => \operationalunit|comp0|LessThan0~25_cout\);

-- Location: LCCOMB_X54_Y28_N26
\operationalunit|comp0|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~27_cout\ = CARRY((\operationalunit|reg|Rp_data\(13) & (\operationalunit|reg|Rq_data\(13) & !\operationalunit|comp0|LessThan0~25_cout\)) # (!\operationalunit|reg|Rp_data\(13) & ((\operationalunit|reg|Rq_data\(13)) # 
-- (!\operationalunit|comp0|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(13),
	datab => \operationalunit|reg|Rq_data\(13),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~25_cout\,
	cout => \operationalunit|comp0|LessThan0~27_cout\);

-- Location: LCCOMB_X54_Y28_N28
\operationalunit|comp0|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~29_cout\ = CARRY((\operationalunit|reg|Rq_data\(14) & (\operationalunit|reg|Rp_data\(14) & !\operationalunit|comp0|LessThan0~27_cout\)) # (!\operationalunit|reg|Rq_data\(14) & ((\operationalunit|reg|Rp_data\(14)) # 
-- (!\operationalunit|comp0|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rq_data\(14),
	datab => \operationalunit|reg|Rp_data\(14),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~27_cout\,
	cout => \operationalunit|comp0|LessThan0~29_cout\);

-- Location: LCCOMB_X54_Y28_N30
\operationalunit|comp0|LessThan0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~30_combout\ = (\operationalunit|reg|Rq_data\(15) & (\operationalunit|reg|Rp_data\(15) & \operationalunit|comp0|LessThan0~29_cout\)) # (!\operationalunit|reg|Rq_data\(15) & ((\operationalunit|reg|Rp_data\(15)) # 
-- (\operationalunit|comp0|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rq_data\(15),
	datab => \operationalunit|reg|Rp_data\(15),
	cin => \operationalunit|comp0|LessThan0~29_cout\,
	combout => \operationalunit|comp0|LessThan0~30_combout\);

-- Location: LCCOMB_X50_Y28_N24
\controlunit|comb|n3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n3~7_combout\ = (\controlunit|comb|n3~5_combout\ & ((\controlunit|comb|n3~0_combout\) # ((\controlunit|comb|n3~6_combout\ & \operationalunit|comp0|LessThan0~30_combout\)))) # (!\controlunit|comb|n3~5_combout\ & 
-- (\controlunit|comb|n3~6_combout\ & ((\operationalunit|comp0|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|n3~5_combout\,
	datab => \controlunit|comb|n3~6_combout\,
	datac => \controlunit|comb|n3~0_combout\,
	datad => \operationalunit|comp0|LessThan0~30_combout\,
	combout => \controlunit|comb|n3~7_combout\);

-- Location: LCFF_X50_Y28_N25
\controlunit|statereg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controlunit|comb|n3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|statereg|ff3|q~regout\);

-- Location: LCCOMB_X51_Y28_N28
\controlunit|comb|PC_inc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|PC_inc~0_combout\ = (\controlunit|statereg|ff1|q~regout\) # (((\controlunit|statereg|ff2|q~regout\) # (\controlunit|statereg|ff3|q~regout\)) # (!\controlunit|statereg|ff0|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff1|q~regout\,
	datab => \controlunit|statereg|ff0|q~regout\,
	datac => \controlunit|statereg|ff2|q~regout\,
	datad => \controlunit|statereg|ff3|q~regout\,
	combout => \controlunit|comb|PC_inc~0_combout\);

-- Location: LCFF_X47_Y28_N19
\controlunit|instructionreg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \readonlymemory|data_output\(9),
	sload => VCC,
	ena => \controlunit|comb|ALT_INV_PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff12|q~regout\);

-- Location: LCCOMB_X51_Y28_N22
\controlunit|comb|n1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n1~0_combout\ = (\controlunit|statereg|ff1|q~regout\ & (!\controlunit|statereg|ff0|q~regout\ & (!\controlunit|statereg|ff3|q~regout\ & !\controlunit|statereg|ff2|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff1|q~regout\,
	datab => \controlunit|statereg|ff0|q~regout\,
	datac => \controlunit|statereg|ff3|q~regout\,
	datad => \controlunit|statereg|ff2|q~regout\,
	combout => \controlunit|comb|n1~0_combout\);

-- Location: LCCOMB_X50_Y28_N26
\controlunit|comb|n2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n2~2_combout\ = (\controlunit|comb|n1~0_combout\ & (\controlunit|instructionreg|ff13|q~regout\ $ (\controlunit|instructionreg|ff12|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|instructionreg|ff13|q~regout\,
	datab => \controlunit|instructionreg|ff12|q~regout\,
	datad => \controlunit|comb|n1~0_combout\,
	combout => \controlunit|comb|n2~2_combout\);

-- Location: LCFF_X50_Y28_N27
\controlunit|statereg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controlunit|comb|n2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|statereg|ff2|q~regout\);

-- Location: LCCOMB_X50_Y27_N0
\controlunit|comb|n0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n0~0_combout\ = (\controlunit|statereg|ff1|q~regout\ & (\controlunit|instructionreg|ff12|q~regout\ & !\controlunit|statereg|ff0|q~regout\)) # (!\controlunit|statereg|ff1|q~regout\ & ((\controlunit|statereg|ff0|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff1|q~regout\,
	datac => \controlunit|instructionreg|ff12|q~regout\,
	datad => \controlunit|statereg|ff0|q~regout\,
	combout => \controlunit|comb|n0~0_combout\);

-- Location: LCCOMB_X50_Y27_N2
\controlunit|comb|n0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n0~1_combout\ = (\controlunit|statereg|ff2|q~regout\ & (((\controlunit|statereg|ff3|q~regout\)))) # (!\controlunit|statereg|ff2|q~regout\ & ((\controlunit|statereg|ff3|q~regout\ & (!\controlunit|statereg|ff1|q~regout\ & 
-- !\controlunit|comb|n0~0_combout\)) # (!\controlunit|statereg|ff3|q~regout\ & ((\controlunit|comb|n0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff1|q~regout\,
	datab => \controlunit|statereg|ff2|q~regout\,
	datac => \controlunit|statereg|ff3|q~regout\,
	datad => \controlunit|comb|n0~0_combout\,
	combout => \controlunit|comb|n0~1_combout\);

-- Location: LCCOMB_X51_Y28_N4
\controlunit|comb|n3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n3~1_combout\ = (!\controlunit|statereg|ff2|q~regout\ & (!\controlunit|statereg|ff1|q~regout\ & (!\operationalunit|reg|Rp_data\(15) & \controlunit|statereg|ff3|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff2|q~regout\,
	datab => \controlunit|statereg|ff1|q~regout\,
	datac => \operationalunit|reg|Rp_data\(15),
	datad => \controlunit|statereg|ff3|q~regout\,
	combout => \controlunit|comb|n3~1_combout\);

-- Location: LCCOMB_X51_Y29_N22
\controlunit|comb|n3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n3~2_combout\ = (!\operationalunit|reg|Rp_data\(11) & (!\operationalunit|reg|Rp_data\(13) & (!\operationalunit|reg|Rp_data\(14) & !\operationalunit|reg|Rp_data\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(11),
	datab => \operationalunit|reg|Rp_data\(13),
	datac => \operationalunit|reg|Rp_data\(14),
	datad => \operationalunit|reg|Rp_data\(12),
	combout => \controlunit|comb|n3~2_combout\);

-- Location: LCCOMB_X51_Y28_N12
\controlunit|comb|n3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n3~4_combout\ = (!\operationalunit|reg|Rp_data\(3) & (!\operationalunit|reg|Rp_data\(4) & (!\operationalunit|reg|Rp_data\(6) & !\operationalunit|reg|Rp_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(3),
	datab => \operationalunit|reg|Rp_data\(4),
	datac => \operationalunit|reg|Rp_data\(6),
	datad => \operationalunit|reg|Rp_data\(5),
	combout => \controlunit|comb|n3~4_combout\);

-- Location: LCCOMB_X51_Y28_N2
\controlunit|comb|n3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n3~5_combout\ = (\controlunit|comb|n3~3_combout\ & (\controlunit|comb|n3~1_combout\ & (\controlunit|comb|n3~2_combout\ & \controlunit|comb|n3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|n3~3_combout\,
	datab => \controlunit|comb|n3~1_combout\,
	datac => \controlunit|comb|n3~2_combout\,
	datad => \controlunit|comb|n3~4_combout\,
	combout => \controlunit|comb|n3~5_combout\);

-- Location: LCCOMB_X51_Y28_N8
\controlunit|comb|n0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n0~2_combout\ = ((\controlunit|comb|n3~0_combout\ & \controlunit|comb|n3~5_combout\)) # (!\controlunit|comb|n0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|comb|n0~1_combout\,
	datac => \controlunit|comb|n3~0_combout\,
	datad => \controlunit|comb|n3~5_combout\,
	combout => \controlunit|comb|n0~2_combout\);

-- Location: LCFF_X51_Y28_N9
\controlunit|statereg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|comb|n0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|statereg|ff0|q~regout\);

-- Location: LCCOMB_X51_Y28_N24
\controlunit|comb|n3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n3~6_combout\ = (!\controlunit|statereg|ff2|q~regout\ & (\controlunit|statereg|ff0|q~regout\ & (!\controlunit|statereg|ff1|q~regout\ & \controlunit|statereg|ff3|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff2|q~regout\,
	datab => \controlunit|statereg|ff0|q~regout\,
	datac => \controlunit|statereg|ff1|q~regout\,
	datad => \controlunit|statereg|ff3|q~regout\,
	combout => \controlunit|comb|n3~6_combout\);

-- Location: LCCOMB_X50_Y28_N30
\controlunit|comb|n1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n1~combout\ = (\controlunit|comb|n1~2_combout\) # (((\controlunit|comb|n3~6_combout\ & \operationalunit|comp0|LessThan0~30_combout\)) # (!\controlunit|comb|PC_inc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|n1~2_combout\,
	datab => \controlunit|comb|n3~6_combout\,
	datac => \controlunit|comb|PC_inc~0_combout\,
	datad => \operationalunit|comp0|LessThan0~30_combout\,
	combout => \controlunit|comb|n1~combout\);

-- Location: LCFF_X50_Y28_N31
\controlunit|statereg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controlunit|comb|n1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|statereg|ff1|q~regout\);

-- Location: LCCOMB_X48_Y28_N12
\controlunit|comb|PC_ld~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|PC_ld~0_combout\ = (!\controlunit|statereg|ff2|q~regout\ & (\controlunit|statereg|ff1|q~regout\ & \controlunit|statereg|ff3|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff2|q~regout\,
	datac => \controlunit|statereg|ff1|q~regout\,
	datad => \controlunit|statereg|ff3|q~regout\,
	combout => \controlunit|comb|PC_ld~0_combout\);

-- Location: LCCOMB_X48_Y28_N28
\controlunit|add|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~8_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~6_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(13),
	datac => \controlunit|add|Add0~6_combout\,
	datad => \controlunit|comb|PC_ld~0_combout\,
	combout => \controlunit|add|Add0~8_combout\);

-- Location: LCCOMB_X49_Y28_N0
\controlunit|programcounter|counter[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[15]~16_combout\ = \controlunit|add|Add0~2_combout\ $ (VCC)
-- \controlunit|programcounter|counter[15]~17\ = CARRY(\controlunit|add|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|add|Add0~2_combout\,
	datad => VCC,
	combout => \controlunit|programcounter|counter[15]~16_combout\,
	cout => \controlunit|programcounter|counter[15]~17\);

-- Location: LCCOMB_X49_Y28_N2
\controlunit|programcounter|counter[14]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[14]~20_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~5_combout\ & (\controlunit|programcounter|counter[15]~17\ & VCC)) # (!\controlunit|add|Add0~5_combout\ & 
-- (!\controlunit|programcounter|counter[15]~17\)))) # (!\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~5_combout\ & (!\controlunit|programcounter|counter[15]~17\)) # (!\controlunit|add|Add0~5_combout\ & 
-- ((\controlunit|programcounter|counter[15]~17\) # (GND)))))
-- \controlunit|programcounter|counter[14]~21\ = CARRY((\controlunit|comb|PC_ld~0_combout\ & (!\controlunit|add|Add0~5_combout\ & !\controlunit|programcounter|counter[15]~17\)) # (!\controlunit|comb|PC_ld~0_combout\ & 
-- ((!\controlunit|programcounter|counter[15]~17\) # (!\controlunit|add|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datab => \controlunit|add|Add0~5_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[15]~17\,
	combout => \controlunit|programcounter|counter[14]~20_combout\,
	cout => \controlunit|programcounter|counter[14]~21\);

-- Location: LCCOMB_X49_Y28_N4
\controlunit|programcounter|counter[13]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[13]~22_combout\ = ((\controlunit|comb|PC_ld~0_combout\ $ (\controlunit|add|Add0~8_combout\ $ (!\controlunit|programcounter|counter[14]~21\)))) # (GND)
-- \controlunit|programcounter|counter[13]~23\ = CARRY((\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~8_combout\) # (!\controlunit|programcounter|counter[14]~21\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|add|Add0~8_combout\ & 
-- !\controlunit|programcounter|counter[14]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datab => \controlunit|add|Add0~8_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[14]~21\,
	combout => \controlunit|programcounter|counter[13]~22_combout\,
	cout => \controlunit|programcounter|counter[13]~23\);

-- Location: LCCOMB_X50_Y28_N20
\controlunit|programcounter|counter[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[13]~feeder_combout\ = \controlunit|programcounter|counter[13]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|programcounter|counter[13]~22_combout\,
	combout => \controlunit|programcounter|counter[13]~feeder_combout\);

-- Location: LCCOMB_X50_Y28_N18
\controlunit|comb|PC_clr\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|PC_clr~combout\ = (!\controlunit|statereg|ff0|q~regout\ & (!\controlunit|statereg|ff1|q~regout\ & (!\controlunit|statereg|ff3|q~regout\ & !\controlunit|statereg|ff2|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff0|q~regout\,
	datab => \controlunit|statereg|ff1|q~regout\,
	datac => \controlunit|statereg|ff3|q~regout\,
	datad => \controlunit|statereg|ff2|q~regout\,
	combout => \controlunit|comb|PC_clr~combout\);

-- Location: LCCOMB_X50_Y28_N2
\controlunit|programcounter|counter[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[9]~18_combout\ = (!\controlunit|statereg|ff2|q~regout\ & (\controlunit|statereg|ff1|q~regout\ & (\controlunit|statereg|ff0|q~regout\ & \controlunit|statereg|ff3|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff2|q~regout\,
	datab => \controlunit|statereg|ff1|q~regout\,
	datac => \controlunit|statereg|ff0|q~regout\,
	datad => \controlunit|statereg|ff3|q~regout\,
	combout => \controlunit|programcounter|counter[9]~18_combout\);

-- Location: LCCOMB_X50_Y28_N12
\controlunit|programcounter|counter[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[9]~19_combout\ = (!\controlunit|statereg|ff2|q~regout\ & ((\controlunit|statereg|ff1|q~regout\ & ((\controlunit|statereg|ff3|q~regout\))) # (!\controlunit|statereg|ff1|q~regout\ & (\controlunit|statereg|ff0|q~regout\ & 
-- !\controlunit|statereg|ff3|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff2|q~regout\,
	datab => \controlunit|statereg|ff1|q~regout\,
	datac => \controlunit|statereg|ff0|q~regout\,
	datad => \controlunit|statereg|ff3|q~regout\,
	combout => \controlunit|programcounter|counter[9]~19_combout\);

-- Location: LCFF_X50_Y28_N21
\controlunit|programcounter|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[13]~feeder_combout\,
	sdata => \operationalunit|reg|Rp_data\(2),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(13));

-- Location: LCCOMB_X46_Y28_N30
\readonlymemory|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux3~0_combout\ = (!\controlunit|programcounter|counter\(12) & (\controlunit|programcounter|counter\(14) & !\controlunit|programcounter|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datac => \controlunit|programcounter|counter\(14),
	datad => \controlunit|programcounter|counter\(13),
	combout => \readonlymemory|Mux3~0_combout\);

-- Location: LCFF_X46_Y28_N31
\readonlymemory|data_output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(1));

-- Location: LCFF_X47_Y28_N3
\controlunit|instructionreg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \readonlymemory|data_output\(1),
	sload => VCC,
	ena => \controlunit|comb|ALT_INV_PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff1|q~regout\);

-- Location: LCCOMB_X48_Y28_N18
\controlunit|add|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~5_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~3_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datab => \controlunit|programcounter|counter\(14),
	datad => \controlunit|add|Add0~3_combout\,
	combout => \controlunit|add|Add0~5_combout\);

-- Location: LCFF_X49_Y28_N3
\controlunit|programcounter|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[14]~20_combout\,
	sdata => \operationalunit|reg|Rp_data\(1),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(14));

-- Location: LCCOMB_X46_Y28_N0
\readonlymemory|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux2~0_combout\ = (!\controlunit|programcounter|counter\(12) & (!\controlunit|programcounter|counter\(14) & (\controlunit|programcounter|counter\(15) & !\controlunit|programcounter|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datab => \controlunit|programcounter|counter\(14),
	datac => \controlunit|programcounter|counter\(15),
	datad => \controlunit|programcounter|counter\(13),
	combout => \readonlymemory|Mux2~0_combout\);

-- Location: LCFF_X46_Y28_N1
\readonlymemory|data_output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(0));

-- Location: LCFF_X47_Y28_N1
\controlunit|instructionreg|ff10|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \readonlymemory|data_output\(0),
	sload => VCC,
	ena => \controlunit|comb|ALT_INV_PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff10|q~regout\);

-- Location: LCCOMB_X46_Y28_N12
\controlunit|add|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~2_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~0_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(15),
	datac => \controlunit|add|Add0~0_combout\,
	datad => \controlunit|comb|PC_ld~0_combout\,
	combout => \controlunit|add|Add0~2_combout\);

-- Location: LCFF_X49_Y28_N1
\controlunit|programcounter|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[15]~16_combout\,
	sdata => \operationalunit|reg|Rp_data\(0),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(15));

-- Location: LCCOMB_X49_Y28_N6
\controlunit|programcounter|counter[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[12]~24_combout\ = (\controlunit|add|Add0~11_combout\ & ((\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter[13]~23\ & VCC)) # (!\controlunit|comb|PC_ld~0_combout\ & 
-- (!\controlunit|programcounter|counter[13]~23\)))) # (!\controlunit|add|Add0~11_combout\ & ((\controlunit|comb|PC_ld~0_combout\ & (!\controlunit|programcounter|counter[13]~23\)) # (!\controlunit|comb|PC_ld~0_combout\ & 
-- ((\controlunit|programcounter|counter[13]~23\) # (GND)))))
-- \controlunit|programcounter|counter[12]~25\ = CARRY((\controlunit|add|Add0~11_combout\ & (!\controlunit|comb|PC_ld~0_combout\ & !\controlunit|programcounter|counter[13]~23\)) # (!\controlunit|add|Add0~11_combout\ & 
-- ((!\controlunit|programcounter|counter[13]~23\) # (!\controlunit|comb|PC_ld~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|add|Add0~11_combout\,
	datab => \controlunit|comb|PC_ld~0_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[13]~23\,
	combout => \controlunit|programcounter|counter[12]~24_combout\,
	cout => \controlunit|programcounter|counter[12]~25\);

-- Location: LCCOMB_X50_Y28_N28
\controlunit|programcounter|counter[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[12]~feeder_combout\ = \controlunit|programcounter|counter[12]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|programcounter|counter[12]~24_combout\,
	combout => \controlunit|programcounter|counter[12]~feeder_combout\);

-- Location: LCFF_X50_Y28_N29
\controlunit|programcounter|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[12]~feeder_combout\,
	sdata => \operationalunit|reg|Rp_data\(3),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(12));

-- Location: LCCOMB_X49_Y28_N8
\controlunit|programcounter|counter[11]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[11]~26_combout\ = ((\controlunit|add|Add0~14_combout\ $ (\controlunit|comb|PC_ld~0_combout\ $ (!\controlunit|programcounter|counter[12]~25\)))) # (GND)
-- \controlunit|programcounter|counter[11]~27\ = CARRY((\controlunit|add|Add0~14_combout\ & ((\controlunit|comb|PC_ld~0_combout\) # (!\controlunit|programcounter|counter[12]~25\))) # (!\controlunit|add|Add0~14_combout\ & (\controlunit|comb|PC_ld~0_combout\ & 
-- !\controlunit|programcounter|counter[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|add|Add0~14_combout\,
	datab => \controlunit|comb|PC_ld~0_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[12]~25\,
	combout => \controlunit|programcounter|counter[11]~26_combout\,
	cout => \controlunit|programcounter|counter[11]~27\);

-- Location: LCCOMB_X50_Y28_N10
\controlunit|programcounter|counter[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[11]~feeder_combout\ = \controlunit|programcounter|counter[11]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter[11]~26_combout\,
	combout => \controlunit|programcounter|counter[11]~feeder_combout\);

-- Location: LCFF_X50_Y28_N11
\controlunit|programcounter|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[11]~feeder_combout\,
	sdata => \operationalunit|reg|Rp_data\(4),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(11));

-- Location: LCCOMB_X47_Y28_N10
\controlunit|add|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~15_combout\ = (\controlunit|programcounter|counter\(10) & (!\controlunit|add|Add0~13\)) # (!\controlunit|programcounter|counter\(10) & ((\controlunit|add|Add0~13\) # (GND)))
-- \controlunit|add|Add0~16\ = CARRY((!\controlunit|add|Add0~13\) # (!\controlunit|programcounter|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(10),
	datad => VCC,
	cin => \controlunit|add|Add0~13\,
	combout => \controlunit|add|Add0~15_combout\,
	cout => \controlunit|add|Add0~16\);

-- Location: LCCOMB_X48_Y28_N22
\controlunit|add|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~17_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~15_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datac => \controlunit|programcounter|counter\(10),
	datad => \controlunit|add|Add0~15_combout\,
	combout => \controlunit|add|Add0~17_combout\);

-- Location: LCCOMB_X49_Y28_N10
\controlunit|programcounter|counter[10]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[10]~28_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~17_combout\ & (\controlunit|programcounter|counter[11]~27\ & VCC)) # (!\controlunit|add|Add0~17_combout\ & 
-- (!\controlunit|programcounter|counter[11]~27\)))) # (!\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~17_combout\ & (!\controlunit|programcounter|counter[11]~27\)) # (!\controlunit|add|Add0~17_combout\ & 
-- ((\controlunit|programcounter|counter[11]~27\) # (GND)))))
-- \controlunit|programcounter|counter[10]~29\ = CARRY((\controlunit|comb|PC_ld~0_combout\ & (!\controlunit|add|Add0~17_combout\ & !\controlunit|programcounter|counter[11]~27\)) # (!\controlunit|comb|PC_ld~0_combout\ & 
-- ((!\controlunit|programcounter|counter[11]~27\) # (!\controlunit|add|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datab => \controlunit|add|Add0~17_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[11]~27\,
	combout => \controlunit|programcounter|counter[10]~28_combout\,
	cout => \controlunit|programcounter|counter[10]~29\);

-- Location: LCCOMB_X50_Y28_N6
\controlunit|programcounter|counter[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[10]~feeder_combout\ = \controlunit|programcounter|counter[10]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|programcounter|counter[10]~28_combout\,
	combout => \controlunit|programcounter|counter[10]~feeder_combout\);

-- Location: LCFF_X50_Y28_N7
\controlunit|programcounter|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[10]~feeder_combout\,
	sdata => \operationalunit|reg|Rp_data\(5),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(10));

-- Location: LCCOMB_X47_Y28_N12
\controlunit|add|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~18_combout\ = (\controlunit|programcounter|counter\(9) & (\controlunit|add|Add0~16\ $ (GND))) # (!\controlunit|programcounter|counter\(9) & (!\controlunit|add|Add0~16\ & VCC))
-- \controlunit|add|Add0~19\ = CARRY((\controlunit|programcounter|counter\(9) & !\controlunit|add|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(9),
	datad => VCC,
	cin => \controlunit|add|Add0~16\,
	combout => \controlunit|add|Add0~18_combout\,
	cout => \controlunit|add|Add0~19\);

-- Location: LCCOMB_X48_Y28_N16
\controlunit|add|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~20_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~18_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datac => \controlunit|programcounter|counter\(9),
	datad => \controlunit|add|Add0~18_combout\,
	combout => \controlunit|add|Add0~20_combout\);

-- Location: LCCOMB_X49_Y28_N12
\controlunit|programcounter|counter[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[9]~30_combout\ = ((\controlunit|comb|PC_ld~0_combout\ $ (\controlunit|add|Add0~20_combout\ $ (!\controlunit|programcounter|counter[10]~29\)))) # (GND)
-- \controlunit|programcounter|counter[9]~31\ = CARRY((\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~20_combout\) # (!\controlunit|programcounter|counter[10]~29\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|add|Add0~20_combout\ & 
-- !\controlunit|programcounter|counter[10]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datab => \controlunit|add|Add0~20_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[10]~29\,
	combout => \controlunit|programcounter|counter[9]~30_combout\,
	cout => \controlunit|programcounter|counter[9]~31\);

-- Location: LCCOMB_X50_Y28_N8
\controlunit|programcounter|counter[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[9]~feeder_combout\ = \controlunit|programcounter|counter[9]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|programcounter|counter[9]~30_combout\,
	combout => \controlunit|programcounter|counter[9]~feeder_combout\);

-- Location: LCFF_X50_Y28_N9
\controlunit|programcounter|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[9]~feeder_combout\,
	sdata => \operationalunit|reg|Rp_data\(6),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(9));

-- Location: LCCOMB_X47_Y28_N14
\controlunit|add|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~21_combout\ = (\controlunit|programcounter|counter\(8) & (!\controlunit|add|Add0~19\)) # (!\controlunit|programcounter|counter\(8) & ((\controlunit|add|Add0~19\) # (GND)))
-- \controlunit|add|Add0~22\ = CARRY((!\controlunit|add|Add0~19\) # (!\controlunit|programcounter|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(8),
	datad => VCC,
	cin => \controlunit|add|Add0~19\,
	combout => \controlunit|add|Add0~21_combout\,
	cout => \controlunit|add|Add0~22\);

-- Location: LCCOMB_X48_Y28_N6
\controlunit|add|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~23_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~21_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datac => \controlunit|programcounter|counter\(8),
	datad => \controlunit|add|Add0~21_combout\,
	combout => \controlunit|add|Add0~23_combout\);

-- Location: LCCOMB_X49_Y28_N14
\controlunit|programcounter|counter[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[8]~32_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~23_combout\ & (\controlunit|programcounter|counter[9]~31\ & VCC)) # (!\controlunit|add|Add0~23_combout\ & 
-- (!\controlunit|programcounter|counter[9]~31\)))) # (!\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~23_combout\ & (!\controlunit|programcounter|counter[9]~31\)) # (!\controlunit|add|Add0~23_combout\ & 
-- ((\controlunit|programcounter|counter[9]~31\) # (GND)))))
-- \controlunit|programcounter|counter[8]~33\ = CARRY((\controlunit|comb|PC_ld~0_combout\ & (!\controlunit|add|Add0~23_combout\ & !\controlunit|programcounter|counter[9]~31\)) # (!\controlunit|comb|PC_ld~0_combout\ & 
-- ((!\controlunit|programcounter|counter[9]~31\) # (!\controlunit|add|Add0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datab => \controlunit|add|Add0~23_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[9]~31\,
	combout => \controlunit|programcounter|counter[8]~32_combout\,
	cout => \controlunit|programcounter|counter[8]~33\);

-- Location: LCFF_X49_Y28_N15
\controlunit|programcounter|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[8]~32_combout\,
	sdata => \operationalunit|reg|Rp_data\(7),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(8));

-- Location: LCCOMB_X49_Y28_N16
\controlunit|programcounter|counter[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[7]~34_combout\ = ((\controlunit|add|Add0~26_combout\ $ (\controlunit|comb|PC_ld~0_combout\ $ (!\controlunit|programcounter|counter[8]~33\)))) # (GND)
-- \controlunit|programcounter|counter[7]~35\ = CARRY((\controlunit|add|Add0~26_combout\ & ((\controlunit|comb|PC_ld~0_combout\) # (!\controlunit|programcounter|counter[8]~33\))) # (!\controlunit|add|Add0~26_combout\ & (\controlunit|comb|PC_ld~0_combout\ & 
-- !\controlunit|programcounter|counter[8]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|add|Add0~26_combout\,
	datab => \controlunit|comb|PC_ld~0_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[8]~33\,
	combout => \controlunit|programcounter|counter[7]~34_combout\,
	cout => \controlunit|programcounter|counter[7]~35\);

-- Location: LCFF_X49_Y28_N17
\controlunit|programcounter|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[7]~34_combout\,
	sdata => \operationalunit|reg|Rp_data\(8),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(7));

-- Location: LCCOMB_X49_Y28_N18
\controlunit|programcounter|counter[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[6]~36_combout\ = (\controlunit|add|Add0~29_combout\ & ((\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter[7]~35\ & VCC)) # (!\controlunit|comb|PC_ld~0_combout\ & 
-- (!\controlunit|programcounter|counter[7]~35\)))) # (!\controlunit|add|Add0~29_combout\ & ((\controlunit|comb|PC_ld~0_combout\ & (!\controlunit|programcounter|counter[7]~35\)) # (!\controlunit|comb|PC_ld~0_combout\ & 
-- ((\controlunit|programcounter|counter[7]~35\) # (GND)))))
-- \controlunit|programcounter|counter[6]~37\ = CARRY((\controlunit|add|Add0~29_combout\ & (!\controlunit|comb|PC_ld~0_combout\ & !\controlunit|programcounter|counter[7]~35\)) # (!\controlunit|add|Add0~29_combout\ & 
-- ((!\controlunit|programcounter|counter[7]~35\) # (!\controlunit|comb|PC_ld~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|add|Add0~29_combout\,
	datab => \controlunit|comb|PC_ld~0_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[7]~35\,
	combout => \controlunit|programcounter|counter[6]~36_combout\,
	cout => \controlunit|programcounter|counter[6]~37\);

-- Location: LCFF_X49_Y28_N19
\controlunit|programcounter|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[6]~36_combout\,
	sdata => \operationalunit|reg|Rp_data\(9),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(6));

-- Location: LCCOMB_X49_Y28_N20
\controlunit|programcounter|counter[5]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[5]~38_combout\ = ((\controlunit|add|Add0~32_combout\ $ (\controlunit|comb|PC_ld~0_combout\ $ (!\controlunit|programcounter|counter[6]~37\)))) # (GND)
-- \controlunit|programcounter|counter[5]~39\ = CARRY((\controlunit|add|Add0~32_combout\ & ((\controlunit|comb|PC_ld~0_combout\) # (!\controlunit|programcounter|counter[6]~37\))) # (!\controlunit|add|Add0~32_combout\ & (\controlunit|comb|PC_ld~0_combout\ & 
-- !\controlunit|programcounter|counter[6]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|add|Add0~32_combout\,
	datab => \controlunit|comb|PC_ld~0_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[6]~37\,
	combout => \controlunit|programcounter|counter[5]~38_combout\,
	cout => \controlunit|programcounter|counter[5]~39\);

-- Location: LCFF_X49_Y28_N21
\controlunit|programcounter|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[5]~38_combout\,
	sdata => \operationalunit|reg|Rp_data\(10),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(5));

-- Location: LCCOMB_X49_Y28_N22
\controlunit|programcounter|counter[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[4]~40_combout\ = (\controlunit|add|Add0~35_combout\ & ((\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter[5]~39\ & VCC)) # (!\controlunit|comb|PC_ld~0_combout\ & 
-- (!\controlunit|programcounter|counter[5]~39\)))) # (!\controlunit|add|Add0~35_combout\ & ((\controlunit|comb|PC_ld~0_combout\ & (!\controlunit|programcounter|counter[5]~39\)) # (!\controlunit|comb|PC_ld~0_combout\ & 
-- ((\controlunit|programcounter|counter[5]~39\) # (GND)))))
-- \controlunit|programcounter|counter[4]~41\ = CARRY((\controlunit|add|Add0~35_combout\ & (!\controlunit|comb|PC_ld~0_combout\ & !\controlunit|programcounter|counter[5]~39\)) # (!\controlunit|add|Add0~35_combout\ & 
-- ((!\controlunit|programcounter|counter[5]~39\) # (!\controlunit|comb|PC_ld~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|add|Add0~35_combout\,
	datab => \controlunit|comb|PC_ld~0_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[5]~39\,
	combout => \controlunit|programcounter|counter[4]~40_combout\,
	cout => \controlunit|programcounter|counter[4]~41\);

-- Location: LCCOMB_X50_Y28_N22
\controlunit|programcounter|counter[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[4]~feeder_combout\ = \controlunit|programcounter|counter[4]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|programcounter|counter[4]~40_combout\,
	combout => \controlunit|programcounter|counter[4]~feeder_combout\);

-- Location: LCFF_X50_Y28_N23
\controlunit|programcounter|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[4]~feeder_combout\,
	sdata => \operationalunit|reg|Rp_data\(11),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(4));

-- Location: LCCOMB_X49_Y28_N24
\controlunit|programcounter|counter[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[3]~42_combout\ = ((\controlunit|add|Add0~38_combout\ $ (\controlunit|comb|PC_ld~0_combout\ $ (!\controlunit|programcounter|counter[4]~41\)))) # (GND)
-- \controlunit|programcounter|counter[3]~43\ = CARRY((\controlunit|add|Add0~38_combout\ & ((\controlunit|comb|PC_ld~0_combout\) # (!\controlunit|programcounter|counter[4]~41\))) # (!\controlunit|add|Add0~38_combout\ & (\controlunit|comb|PC_ld~0_combout\ & 
-- !\controlunit|programcounter|counter[4]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|add|Add0~38_combout\,
	datab => \controlunit|comb|PC_ld~0_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[4]~41\,
	combout => \controlunit|programcounter|counter[3]~42_combout\,
	cout => \controlunit|programcounter|counter[3]~43\);

-- Location: LCCOMB_X50_Y28_N14
\controlunit|programcounter|counter[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[3]~feeder_combout\ = \controlunit|programcounter|counter[3]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|programcounter|counter[3]~42_combout\,
	combout => \controlunit|programcounter|counter[3]~feeder_combout\);

-- Location: LCFF_X50_Y28_N15
\controlunit|programcounter|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[3]~feeder_combout\,
	sdata => \operationalunit|reg|Rp_data\(12),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(3));

-- Location: LCCOMB_X47_Y28_N26
\controlunit|add|Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~39_combout\ = (\controlunit|programcounter|counter\(2) & ((\controlunit|instructionreg|ff13|q~regout\ & (\controlunit|add|Add0~37\ & VCC)) # (!\controlunit|instructionreg|ff13|q~regout\ & (!\controlunit|add|Add0~37\)))) # 
-- (!\controlunit|programcounter|counter\(2) & ((\controlunit|instructionreg|ff13|q~regout\ & (!\controlunit|add|Add0~37\)) # (!\controlunit|instructionreg|ff13|q~regout\ & ((\controlunit|add|Add0~37\) # (GND)))))
-- \controlunit|add|Add0~40\ = CARRY((\controlunit|programcounter|counter\(2) & (!\controlunit|instructionreg|ff13|q~regout\ & !\controlunit|add|Add0~37\)) # (!\controlunit|programcounter|counter\(2) & ((!\controlunit|add|Add0~37\) # 
-- (!\controlunit|instructionreg|ff13|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(2),
	datab => \controlunit|instructionreg|ff13|q~regout\,
	datad => VCC,
	cin => \controlunit|add|Add0~37\,
	combout => \controlunit|add|Add0~39_combout\,
	cout => \controlunit|add|Add0~40\);

-- Location: LCCOMB_X48_Y28_N24
\controlunit|add|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~41_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~39_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(2),
	datac => \controlunit|comb|PC_ld~0_combout\,
	datad => \controlunit|add|Add0~39_combout\,
	combout => \controlunit|add|Add0~41_combout\);

-- Location: LCCOMB_X49_Y28_N26
\controlunit|programcounter|counter[2]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[2]~44_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~41_combout\ & (\controlunit|programcounter|counter[3]~43\ & VCC)) # (!\controlunit|add|Add0~41_combout\ & 
-- (!\controlunit|programcounter|counter[3]~43\)))) # (!\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~41_combout\ & (!\controlunit|programcounter|counter[3]~43\)) # (!\controlunit|add|Add0~41_combout\ & 
-- ((\controlunit|programcounter|counter[3]~43\) # (GND)))))
-- \controlunit|programcounter|counter[2]~45\ = CARRY((\controlunit|comb|PC_ld~0_combout\ & (!\controlunit|add|Add0~41_combout\ & !\controlunit|programcounter|counter[3]~43\)) # (!\controlunit|comb|PC_ld~0_combout\ & 
-- ((!\controlunit|programcounter|counter[3]~43\) # (!\controlunit|add|Add0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datab => \controlunit|add|Add0~41_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[3]~43\,
	combout => \controlunit|programcounter|counter[2]~44_combout\,
	cout => \controlunit|programcounter|counter[2]~45\);

-- Location: LCCOMB_X50_Y28_N16
\controlunit|programcounter|counter[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[2]~feeder_combout\ = \controlunit|programcounter|counter[2]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|programcounter|counter[2]~44_combout\,
	combout => \controlunit|programcounter|counter[2]~feeder_combout\);

-- Location: LCFF_X50_Y28_N17
\controlunit|programcounter|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[2]~feeder_combout\,
	sdata => \operationalunit|reg|Rp_data\(13),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(2));

-- Location: LCCOMB_X47_Y28_N28
\controlunit|add|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~42_combout\ = (\controlunit|programcounter|counter\(1) & (\controlunit|add|Add0~40\ $ (GND))) # (!\controlunit|programcounter|counter\(1) & (!\controlunit|add|Add0~40\ & VCC))
-- \controlunit|add|Add0~43\ = CARRY((\controlunit|programcounter|counter\(1) & !\controlunit|add|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(1),
	datad => VCC,
	cin => \controlunit|add|Add0~40\,
	combout => \controlunit|add|Add0~42_combout\,
	cout => \controlunit|add|Add0~43\);

-- Location: LCCOMB_X48_Y28_N26
\controlunit|add|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~44_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~42_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datac => \controlunit|programcounter|counter\(1),
	datad => \controlunit|add|Add0~42_combout\,
	combout => \controlunit|add|Add0~44_combout\);

-- Location: LCCOMB_X49_Y28_N28
\controlunit|programcounter|counter[1]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[1]~46_combout\ = ((\controlunit|comb|PC_ld~0_combout\ $ (\controlunit|add|Add0~44_combout\ $ (!\controlunit|programcounter|counter[2]~45\)))) # (GND)
-- \controlunit|programcounter|counter[1]~47\ = CARRY((\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~44_combout\) # (!\controlunit|programcounter|counter[2]~45\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|add|Add0~44_combout\ & 
-- !\controlunit|programcounter|counter[2]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datab => \controlunit|add|Add0~44_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[2]~45\,
	combout => \controlunit|programcounter|counter[1]~46_combout\,
	cout => \controlunit|programcounter|counter[1]~47\);

-- Location: LCCOMB_X50_Y28_N4
\controlunit|programcounter|counter[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[1]~feeder_combout\ = \controlunit|programcounter|counter[1]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|programcounter|counter[1]~46_combout\,
	combout => \controlunit|programcounter|counter[1]~feeder_combout\);

-- Location: LCFF_X50_Y28_N5
\controlunit|programcounter|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[1]~feeder_combout\,
	sdata => \operationalunit|reg|Rp_data\(14),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(1));

-- Location: LCCOMB_X47_Y28_N30
\controlunit|add|Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~45_combout\ = \controlunit|add|Add0~43\ $ (\controlunit|programcounter|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|programcounter|counter\(0),
	cin => \controlunit|add|Add0~43\,
	combout => \controlunit|add|Add0~45_combout\);

-- Location: LCCOMB_X46_Y28_N24
\controlunit|add|Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~47_combout\ = (\controlunit|comb|PC_ld~0_combout\ & ((\controlunit|add|Add0~45_combout\))) # (!\controlunit|comb|PC_ld~0_combout\ & (\controlunit|programcounter|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(0),
	datac => \controlunit|comb|PC_ld~0_combout\,
	datad => \controlunit|add|Add0~45_combout\,
	combout => \controlunit|add|Add0~47_combout\);

-- Location: LCCOMB_X49_Y28_N30
\controlunit|programcounter|counter[0]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[0]~48_combout\ = \controlunit|comb|PC_ld~0_combout\ $ (\controlunit|programcounter|counter[1]~47\ $ (\controlunit|add|Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|PC_ld~0_combout\,
	datad => \controlunit|add|Add0~47_combout\,
	cin => \controlunit|programcounter|counter[1]~47\,
	combout => \controlunit|programcounter|counter[0]~48_combout\);

-- Location: LCFF_X49_Y28_N31
\controlunit|programcounter|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[0]~48_combout\,
	sdata => \operationalunit|reg|Rp_data\(15),
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => \controlunit|programcounter|counter[9]~18_combout\,
	ena => \controlunit|programcounter|counter[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(0));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(0));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(1));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(2));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(3));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(4));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(5));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(6));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(7));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(8));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(9));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(10));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(11));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(12));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(13));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(14));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_addr[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|programcounter|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_addr(15));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readonlymemory|data_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(0));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readonlymemory|data_output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(1));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(2));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(3));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readonlymemory|data_output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(4));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(5));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(6));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(7));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readonlymemory|data_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(8));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readonlymemory|data_output\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(9));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readonlymemory|data_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(10));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(11));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readonlymemory|data_output\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(12));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readonlymemory|data_output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(13));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(14));

-- Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(15));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(0));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(1));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(2));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(3));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(4));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(5));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(6));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(7));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(8));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(9));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(10));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(11));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(12));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(13));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(14));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_W_data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \operationalunit|reg|Rp_data\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_W_data(15));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(0));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(1));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(2));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(3));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(4));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(5));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(6));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(7));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(8));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(9));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(10));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(11));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(12));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(13));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(14));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(15));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|instructionreg|ff10|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(0));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|instructionreg|ff1|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(1));

-- Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(2));

-- Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(3));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|instructionreg|ff13|q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(4));

-- Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(5));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(6));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_addr(7));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D_R_enable~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controlunit|comb|ALT_INV_D_rd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_enable);
END structure;



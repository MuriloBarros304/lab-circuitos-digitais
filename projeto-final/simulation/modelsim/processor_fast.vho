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

-- DATE "08/12/2024 12:49:16"

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
	D_R_data : OUT std_logic_vector(15 DOWNTO 0)
	);
END processor;

-- Design Ports Information
-- PC_addr[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[1]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[2]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[3]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[4]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[5]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[6]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[7]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[8]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[9]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[10]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[11]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[12]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[13]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[14]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[15]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[0]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[1]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[3]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[4]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[5]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[6]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[7]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[8]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[9]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[10]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[11]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[12]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[13]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[14]	=>  Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[15]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[0]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[1]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[2]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[3]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[4]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[5]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[6]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[7]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[8]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[9]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[10]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[11]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[12]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[13]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[14]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[15]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[1]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[2]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[3]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[4]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[5]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[6]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[7]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[8]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[9]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[10]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[11]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[12]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[13]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[14]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[15]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controlunit|comb|RF_Rp_rd~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \controlunit|programcounter|counter[15]~16_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[15]~17\ : std_logic;
SIGNAL \controlunit|programcounter|counter[14]~18_combout\ : std_logic;
SIGNAL \readonlymemory|Mux1~0_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff13|q~regout\ : std_logic;
SIGNAL \controlunit|comb|n0~0_combout\ : std_logic;
SIGNAL \controlunit|statereg|ff0|q~regout\ : std_logic;
SIGNAL \controlunit|comb|PC_inc~0_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[14]~19\ : std_logic;
SIGNAL \controlunit|programcounter|counter[13]~20_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[13]~21\ : std_logic;
SIGNAL \controlunit|programcounter|counter[12]~22_combout\ : std_logic;
SIGNAL \readonlymemory|Mux0~0_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff14|q~regout\ : std_logic;
SIGNAL \controlunit|comb|n2~0_combout\ : std_logic;
SIGNAL \controlunit|statereg|ff2|q~regout\ : std_logic;
SIGNAL \controlunit|comb|n1~0_combout\ : std_logic;
SIGNAL \controlunit|statereg|ff1|q~regout\ : std_logic;
SIGNAL \controlunit|comb|PC_clr~combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[12]~23\ : std_logic;
SIGNAL \controlunit|programcounter|counter[11]~24_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[11]~25\ : std_logic;
SIGNAL \controlunit|programcounter|counter[10]~26_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[10]~27\ : std_logic;
SIGNAL \controlunit|programcounter|counter[9]~28_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[9]~29\ : std_logic;
SIGNAL \controlunit|programcounter|counter[8]~30_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[8]~31\ : std_logic;
SIGNAL \controlunit|programcounter|counter[7]~32_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[7]~33\ : std_logic;
SIGNAL \controlunit|programcounter|counter[6]~34_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[6]~35\ : std_logic;
SIGNAL \controlunit|programcounter|counter[5]~36_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[5]~37\ : std_logic;
SIGNAL \controlunit|programcounter|counter[4]~38_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[4]~39\ : std_logic;
SIGNAL \controlunit|programcounter|counter[3]~40_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[3]~41\ : std_logic;
SIGNAL \controlunit|programcounter|counter[2]~42_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[2]~43\ : std_logic;
SIGNAL \controlunit|programcounter|counter[1]~44_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[1]~45\ : std_logic;
SIGNAL \controlunit|programcounter|counter[0]~46_combout\ : std_logic;
SIGNAL \readonlymemory|Mux7~0_combout\ : std_logic;
SIGNAL \readonlymemory|Mux3~0_combout\ : std_logic;
SIGNAL \readonlymemory|Mux6~0_combout\ : std_logic;
SIGNAL \readonlymemory|Mux5~0_combout\ : std_logic;
SIGNAL \readonlymemory|Mux4~0_combout\ : std_logic;
SIGNAL \readonlymemory|Mux2~0_combout\ : std_logic;
SIGNAL \controlunit|comb|RF_Rp_rd~combout\ : std_logic;
SIGNAL \controlunit|comb|RF_Rp_rd~clkctrl_outclk\ : std_logic;
SIGNAL \controlunit|instructionreg|ff0|q~regout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff8|q~feeder_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff8|q~regout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff2|q~feeder_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff2|q~regout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff4|q~feeder_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff4|q~regout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff5|q~feeder_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff5|q~regout\ : std_logic;
SIGNAL \randomaccessmemory|temp_address[0]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|mux|D[8]~0_combout\ : std_logic;
SIGNAL \randomaccessmemory|temp_address[1]~feeder_combout\ : std_logic;
SIGNAL \randomaccessmemory|temp_address[2]~feeder_combout\ : std_logic;
SIGNAL \randomaccessmemory|temp_address[4]~feeder_combout\ : std_logic;
SIGNAL \randomaccessmemory|temp_address[5]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|mux|Equal2~0_combout\ : std_logic;
SIGNAL \operationalunit|mux|D[1]~2_combout\ : std_logic;
SIGNAL \controlunit|comb|RF_W_wr~0_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~21_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \operationalunit|reg|reg~37_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \operationalunit|mux|D[15]~16_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \operationalunit|reg|reg~36_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \operationalunit|mux|D[14]~15_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \operationalunit|reg|reg~35_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \operationalunit|mux|D[13]~14_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \operationalunit|reg|reg~34_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \operationalunit|mux|D[12]~13_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \operationalunit|reg|reg~33_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \operationalunit|mux|D[11]~12_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \operationalunit|reg|reg~32_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \operationalunit|mux|D[10]~11_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \operationalunit|reg|reg~31_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \operationalunit|mux|D[9]~10_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \operationalunit|reg|reg~30_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \operationalunit|mux|D[8]~9_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \operationalunit|reg|reg~29_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \operationalunit|mux|D[7]~8_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \operationalunit|reg|reg~28_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \operationalunit|mux|D[6]~7_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \operationalunit|reg|reg~27_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \operationalunit|mux|D[5]~6_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \operationalunit|reg|reg~26_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \operationalunit|mux|D[4]~5_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \operationalunit|reg|reg~25_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \operationalunit|mux|D[3]~4_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \operationalunit|reg|reg~24_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \operationalunit|mux|D[2]~3_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \operationalunit|reg|reg~23_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \operationalunit|mux|D[0]~1_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \operationalunit|reg|reg~22_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram~25_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass\ : std_logic_vector(0 TO 40);
SIGNAL \readonlymemory|data_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \randomaccessmemory|temp_address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operationalunit|reg|Rp_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \controlunit|programcounter|counter\ : std_logic_vector(0 TO 15);
SIGNAL \controlunit|comb|ALT_INV_PC_inc~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
PC_addr <= ww_PC_addr;
IR_data <= ww_IR_data;
D_W_data <= ww_D_W_data;
D_R_data <= ww_D_R_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\operationalunit|reg|Rp_data\(15) & \operationalunit|reg|Rp_data\(14) & \operationalunit|reg|Rp_data\(13) & \operationalunit|reg|Rp_data\(12) & 
\operationalunit|reg|Rp_data\(11) & \operationalunit|reg|Rp_data\(10) & \operationalunit|reg|Rp_data\(9) & \operationalunit|reg|Rp_data\(8) & \operationalunit|reg|Rp_data\(7) & \operationalunit|reg|Rp_data\(6) & 
\operationalunit|reg|Rp_data\(5) & \operationalunit|reg|Rp_data\(4) & \operationalunit|reg|Rp_data\(3) & \operationalunit|reg|Rp_data\(2) & \operationalunit|reg|Rp_data\(1) & \operationalunit|reg|Rp_data\(0));

\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\controlunit|instructionreg|ff5|q~regout\ & \controlunit|instructionreg|ff4|q~regout\ & \~GND~combout\ & \controlunit|instructionreg|ff2|q~regout\ & 
\controlunit|instructionreg|ff8|q~regout\ & \controlunit|instructionreg|ff0|q~regout\);

\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\randomaccessmemory|temp_address\(5) & \randomaccessmemory|temp_address\(4) & \~GND~combout\ & \randomaccessmemory|temp_address\(2) & \randomaccessmemory|temp_address\(1)
& \randomaccessmemory|temp_address\(0));

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

\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\operationalunit|mux|D[15]~16_combout\ & \operationalunit|mux|D[14]~15_combout\ & \operationalunit|mux|D[13]~14_combout\ & \operationalunit|mux|D[12]~13_combout\ & 
\operationalunit|mux|D[11]~12_combout\ & \operationalunit|mux|D[10]~11_combout\ & \operationalunit|mux|D[9]~10_combout\ & \operationalunit|mux|D[8]~9_combout\ & \operationalunit|mux|D[7]~8_combout\ & \operationalunit|mux|D[6]~7_combout\ & 
\operationalunit|mux|D[5]~6_combout\ & \operationalunit|mux|D[4]~5_combout\ & \operationalunit|mux|D[3]~4_combout\ & \operationalunit|mux|D[2]~3_combout\ & \operationalunit|mux|D[1]~2_combout\ & \operationalunit|mux|D[0]~1_combout\);

\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\controlunit|instructionreg|ff2|q~regout\ & \controlunit|instructionreg|ff8|q~regout\ & \controlunit|instructionreg|ff0|q~regout\);

\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \readonlymemory|data_output\(9) & \readonlymemory|data_output\(1));

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

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\controlunit|comb|RF_Rp_rd~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \controlunit|comb|RF_Rp_rd~combout\);
\controlunit|comb|ALT_INV_PC_inc~0_combout\ <= NOT \controlunit|comb|PC_inc~0_combout\;

-- Location: LCFF_X53_Y10_N31
\operationalunit|reg|reg_rtl_0_bypass[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controlunit|instructionreg|ff8|q~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(3));

-- Location: LCFF_X53_Y10_N27
\operationalunit|reg|reg_rtl_0_bypass[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(10));

-- Location: LCFF_X53_Y10_N11
\operationalunit|reg|reg_rtl_0_bypass[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(19));

-- Location: LCFF_X51_Y11_N7
\operationalunit|reg|reg_rtl_0_bypass[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(21));

-- Location: LCFF_X51_Y11_N21
\operationalunit|reg|reg_rtl_0_bypass[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(23));

-- Location: LCFF_X53_Y11_N11
\operationalunit|reg|reg_rtl_0_bypass[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(39));

-- Location: LCCOMB_X53_Y10_N26
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

-- Location: LCCOMB_X55_Y11_N0
\controlunit|programcounter|counter[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[15]~16_combout\ = \controlunit|programcounter|counter\(15) $ (VCC)
-- \controlunit|programcounter|counter[15]~17\ = CARRY(\controlunit|programcounter|counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(15),
	datad => VCC,
	combout => \controlunit|programcounter|counter[15]~16_combout\,
	cout => \controlunit|programcounter|counter[15]~17\);

-- Location: LCCOMB_X55_Y11_N2
\controlunit|programcounter|counter[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[14]~18_combout\ = (\controlunit|programcounter|counter\(14) & (!\controlunit|programcounter|counter[15]~17\)) # (!\controlunit|programcounter|counter\(14) & ((\controlunit|programcounter|counter[15]~17\) # (GND)))
-- \controlunit|programcounter|counter[14]~19\ = CARRY((!\controlunit|programcounter|counter[15]~17\) # (!\controlunit|programcounter|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(14),
	datad => VCC,
	cin => \controlunit|programcounter|counter[15]~17\,
	combout => \controlunit|programcounter|counter[14]~18_combout\,
	cout => \controlunit|programcounter|counter[14]~19\);

-- Location: LCCOMB_X56_Y11_N22
\readonlymemory|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux1~0_combout\ = (!\controlunit|programcounter|counter\(13) & (!\controlunit|programcounter|counter\(12) & ((\controlunit|programcounter|counter\(15)) # (!\controlunit|programcounter|counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(13),
	datab => \controlunit|programcounter|counter\(15),
	datac => \controlunit|programcounter|counter\(12),
	datad => \controlunit|programcounter|counter\(14),
	combout => \readonlymemory|Mux1~0_combout\);

-- Location: LCFF_X56_Y11_N23
\readonlymemory|data_output[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(12));

-- Location: LCFF_X54_Y11_N27
\controlunit|instructionreg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \readonlymemory|data_output\(12),
	sload => VCC,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff13|q~regout\);

-- Location: LCCOMB_X53_Y11_N14
\controlunit|comb|n0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n0~0_combout\ = (\controlunit|statereg|ff2|q~regout\) # ((\controlunit|statereg|ff1|q~regout\ & ((\controlunit|instructionreg|ff13|q~regout\) # (\controlunit|statereg|ff0|q~regout\))) # (!\controlunit|statereg|ff1|q~regout\ & 
-- ((!\controlunit|statereg|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff1|q~regout\,
	datab => \controlunit|instructionreg|ff13|q~regout\,
	datac => \controlunit|statereg|ff0|q~regout\,
	datad => \controlunit|statereg|ff2|q~regout\,
	combout => \controlunit|comb|n0~0_combout\);

-- Location: LCFF_X53_Y11_N15
\controlunit|statereg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|comb|n0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|statereg|ff0|q~regout\);

-- Location: LCCOMB_X54_Y11_N26
\controlunit|comb|PC_inc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|PC_inc~0_combout\ = (!\controlunit|statereg|ff1|q~regout\ & (!\controlunit|statereg|ff2|q~regout\ & \controlunit|statereg|ff0|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff1|q~regout\,
	datab => \controlunit|statereg|ff2|q~regout\,
	datad => \controlunit|statereg|ff0|q~regout\,
	combout => \controlunit|comb|PC_inc~0_combout\);

-- Location: LCFF_X55_Y11_N3
\controlunit|programcounter|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[14]~18_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(14));

-- Location: LCCOMB_X55_Y11_N4
\controlunit|programcounter|counter[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[13]~20_combout\ = (\controlunit|programcounter|counter\(13) & (\controlunit|programcounter|counter[14]~19\ $ (GND))) # (!\controlunit|programcounter|counter\(13) & (!\controlunit|programcounter|counter[14]~19\ & VCC))
-- \controlunit|programcounter|counter[13]~21\ = CARRY((\controlunit|programcounter|counter\(13) & !\controlunit|programcounter|counter[14]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(13),
	datad => VCC,
	cin => \controlunit|programcounter|counter[14]~19\,
	combout => \controlunit|programcounter|counter[13]~20_combout\,
	cout => \controlunit|programcounter|counter[13]~21\);

-- Location: LCFF_X55_Y11_N5
\controlunit|programcounter|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[13]~20_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(13));

-- Location: LCCOMB_X55_Y11_N6
\controlunit|programcounter|counter[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[12]~22_combout\ = (\controlunit|programcounter|counter\(12) & (!\controlunit|programcounter|counter[13]~21\)) # (!\controlunit|programcounter|counter\(12) & ((\controlunit|programcounter|counter[13]~21\) # (GND)))
-- \controlunit|programcounter|counter[12]~23\ = CARRY((!\controlunit|programcounter|counter[13]~21\) # (!\controlunit|programcounter|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datad => VCC,
	cin => \controlunit|programcounter|counter[13]~21\,
	combout => \controlunit|programcounter|counter[12]~22_combout\,
	cout => \controlunit|programcounter|counter[12]~23\);

-- Location: LCFF_X55_Y11_N7
\controlunit|programcounter|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[12]~22_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(12));

-- Location: LCCOMB_X56_Y11_N16
\readonlymemory|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux0~0_combout\ = (!\controlunit|programcounter|counter\(15) & (!\controlunit|programcounter|counter\(12) & (\controlunit|programcounter|counter\(13) $ (\controlunit|programcounter|counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(13),
	datab => \controlunit|programcounter|counter\(15),
	datac => \controlunit|programcounter|counter\(12),
	datad => \controlunit|programcounter|counter\(14),
	combout => \readonlymemory|Mux0~0_combout\);

-- Location: LCFF_X56_Y11_N17
\readonlymemory|data_output[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(14));

-- Location: LCFF_X54_Y11_N15
\controlunit|instructionreg|ff14|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \readonlymemory|data_output\(14),
	sload => VCC,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff14|q~regout\);

-- Location: LCCOMB_X54_Y11_N10
\controlunit|comb|n2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n2~0_combout\ = (\controlunit|statereg|ff1|q~regout\ & (\controlunit|instructionreg|ff14|q~regout\ & (!\controlunit|statereg|ff2|q~regout\ & !\controlunit|statereg|ff0|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff1|q~regout\,
	datab => \controlunit|instructionreg|ff14|q~regout\,
	datac => \controlunit|statereg|ff2|q~regout\,
	datad => \controlunit|statereg|ff0|q~regout\,
	combout => \controlunit|comb|n2~0_combout\);

-- Location: LCFF_X54_Y11_N11
\controlunit|statereg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controlunit|comb|n2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|statereg|ff2|q~regout\);

-- Location: LCCOMB_X54_Y11_N2
\controlunit|comb|n1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n1~0_combout\ = (!\controlunit|statereg|ff2|q~regout\ & ((\controlunit|statereg|ff1|q~regout\ & (\controlunit|instructionreg|ff13|q~regout\ & !\controlunit|statereg|ff0|q~regout\)) # (!\controlunit|statereg|ff1|q~regout\ & 
-- ((\controlunit|statereg|ff0|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|instructionreg|ff13|q~regout\,
	datab => \controlunit|statereg|ff2|q~regout\,
	datac => \controlunit|statereg|ff1|q~regout\,
	datad => \controlunit|statereg|ff0|q~regout\,
	combout => \controlunit|comb|n1~0_combout\);

-- Location: LCFF_X54_Y11_N3
\controlunit|statereg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controlunit|comb|n1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|statereg|ff1|q~regout\);

-- Location: LCCOMB_X54_Y11_N14
\controlunit|comb|PC_clr\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|PC_clr~combout\ = (!\controlunit|statereg|ff0|q~regout\ & (!\controlunit|statereg|ff1|q~regout\ & !\controlunit|statereg|ff2|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff0|q~regout\,
	datab => \controlunit|statereg|ff1|q~regout\,
	datad => \controlunit|statereg|ff2|q~regout\,
	combout => \controlunit|comb|PC_clr~combout\);

-- Location: LCFF_X54_Y11_N31
\controlunit|programcounter|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controlunit|programcounter|counter[15]~16_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	sload => VCC,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(15));

-- Location: LCCOMB_X55_Y11_N8
\controlunit|programcounter|counter[11]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[11]~24_combout\ = (\controlunit|programcounter|counter\(11) & (\controlunit|programcounter|counter[12]~23\ $ (GND))) # (!\controlunit|programcounter|counter\(11) & (!\controlunit|programcounter|counter[12]~23\ & VCC))
-- \controlunit|programcounter|counter[11]~25\ = CARRY((\controlunit|programcounter|counter\(11) & !\controlunit|programcounter|counter[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(11),
	datad => VCC,
	cin => \controlunit|programcounter|counter[12]~23\,
	combout => \controlunit|programcounter|counter[11]~24_combout\,
	cout => \controlunit|programcounter|counter[11]~25\);

-- Location: LCFF_X55_Y11_N9
\controlunit|programcounter|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[11]~24_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(11));

-- Location: LCCOMB_X55_Y11_N10
\controlunit|programcounter|counter[10]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[10]~26_combout\ = (\controlunit|programcounter|counter\(10) & (!\controlunit|programcounter|counter[11]~25\)) # (!\controlunit|programcounter|counter\(10) & ((\controlunit|programcounter|counter[11]~25\) # (GND)))
-- \controlunit|programcounter|counter[10]~27\ = CARRY((!\controlunit|programcounter|counter[11]~25\) # (!\controlunit|programcounter|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(10),
	datad => VCC,
	cin => \controlunit|programcounter|counter[11]~25\,
	combout => \controlunit|programcounter|counter[10]~26_combout\,
	cout => \controlunit|programcounter|counter[10]~27\);

-- Location: LCFF_X55_Y11_N11
\controlunit|programcounter|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[10]~26_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(10));

-- Location: LCCOMB_X55_Y11_N12
\controlunit|programcounter|counter[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[9]~28_combout\ = (\controlunit|programcounter|counter\(9) & (\controlunit|programcounter|counter[10]~27\ $ (GND))) # (!\controlunit|programcounter|counter\(9) & (!\controlunit|programcounter|counter[10]~27\ & VCC))
-- \controlunit|programcounter|counter[9]~29\ = CARRY((\controlunit|programcounter|counter\(9) & !\controlunit|programcounter|counter[10]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(9),
	datad => VCC,
	cin => \controlunit|programcounter|counter[10]~27\,
	combout => \controlunit|programcounter|counter[9]~28_combout\,
	cout => \controlunit|programcounter|counter[9]~29\);

-- Location: LCFF_X55_Y11_N13
\controlunit|programcounter|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[9]~28_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(9));

-- Location: LCCOMB_X55_Y11_N14
\controlunit|programcounter|counter[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[8]~30_combout\ = (\controlunit|programcounter|counter\(8) & (!\controlunit|programcounter|counter[9]~29\)) # (!\controlunit|programcounter|counter\(8) & ((\controlunit|programcounter|counter[9]~29\) # (GND)))
-- \controlunit|programcounter|counter[8]~31\ = CARRY((!\controlunit|programcounter|counter[9]~29\) # (!\controlunit|programcounter|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(8),
	datad => VCC,
	cin => \controlunit|programcounter|counter[9]~29\,
	combout => \controlunit|programcounter|counter[8]~30_combout\,
	cout => \controlunit|programcounter|counter[8]~31\);

-- Location: LCFF_X55_Y11_N15
\controlunit|programcounter|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[8]~30_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(8));

-- Location: LCCOMB_X55_Y11_N16
\controlunit|programcounter|counter[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[7]~32_combout\ = (\controlunit|programcounter|counter\(7) & (\controlunit|programcounter|counter[8]~31\ $ (GND))) # (!\controlunit|programcounter|counter\(7) & (!\controlunit|programcounter|counter[8]~31\ & VCC))
-- \controlunit|programcounter|counter[7]~33\ = CARRY((\controlunit|programcounter|counter\(7) & !\controlunit|programcounter|counter[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(7),
	datad => VCC,
	cin => \controlunit|programcounter|counter[8]~31\,
	combout => \controlunit|programcounter|counter[7]~32_combout\,
	cout => \controlunit|programcounter|counter[7]~33\);

-- Location: LCFF_X55_Y11_N17
\controlunit|programcounter|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[7]~32_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(7));

-- Location: LCCOMB_X55_Y11_N18
\controlunit|programcounter|counter[6]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[6]~34_combout\ = (\controlunit|programcounter|counter\(6) & (!\controlunit|programcounter|counter[7]~33\)) # (!\controlunit|programcounter|counter\(6) & ((\controlunit|programcounter|counter[7]~33\) # (GND)))
-- \controlunit|programcounter|counter[6]~35\ = CARRY((!\controlunit|programcounter|counter[7]~33\) # (!\controlunit|programcounter|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(6),
	datad => VCC,
	cin => \controlunit|programcounter|counter[7]~33\,
	combout => \controlunit|programcounter|counter[6]~34_combout\,
	cout => \controlunit|programcounter|counter[6]~35\);

-- Location: LCFF_X55_Y11_N19
\controlunit|programcounter|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[6]~34_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(6));

-- Location: LCCOMB_X55_Y11_N20
\controlunit|programcounter|counter[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[5]~36_combout\ = (\controlunit|programcounter|counter\(5) & (\controlunit|programcounter|counter[6]~35\ $ (GND))) # (!\controlunit|programcounter|counter\(5) & (!\controlunit|programcounter|counter[6]~35\ & VCC))
-- \controlunit|programcounter|counter[5]~37\ = CARRY((\controlunit|programcounter|counter\(5) & !\controlunit|programcounter|counter[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(5),
	datad => VCC,
	cin => \controlunit|programcounter|counter[6]~35\,
	combout => \controlunit|programcounter|counter[5]~36_combout\,
	cout => \controlunit|programcounter|counter[5]~37\);

-- Location: LCFF_X55_Y11_N21
\controlunit|programcounter|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[5]~36_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(5));

-- Location: LCCOMB_X55_Y11_N22
\controlunit|programcounter|counter[4]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[4]~38_combout\ = (\controlunit|programcounter|counter\(4) & (!\controlunit|programcounter|counter[5]~37\)) # (!\controlunit|programcounter|counter\(4) & ((\controlunit|programcounter|counter[5]~37\) # (GND)))
-- \controlunit|programcounter|counter[4]~39\ = CARRY((!\controlunit|programcounter|counter[5]~37\) # (!\controlunit|programcounter|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(4),
	datad => VCC,
	cin => \controlunit|programcounter|counter[5]~37\,
	combout => \controlunit|programcounter|counter[4]~38_combout\,
	cout => \controlunit|programcounter|counter[4]~39\);

-- Location: LCFF_X55_Y11_N23
\controlunit|programcounter|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[4]~38_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(4));

-- Location: LCCOMB_X55_Y11_N24
\controlunit|programcounter|counter[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[3]~40_combout\ = (\controlunit|programcounter|counter\(3) & (\controlunit|programcounter|counter[4]~39\ $ (GND))) # (!\controlunit|programcounter|counter\(3) & (!\controlunit|programcounter|counter[4]~39\ & VCC))
-- \controlunit|programcounter|counter[3]~41\ = CARRY((\controlunit|programcounter|counter\(3) & !\controlunit|programcounter|counter[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(3),
	datad => VCC,
	cin => \controlunit|programcounter|counter[4]~39\,
	combout => \controlunit|programcounter|counter[3]~40_combout\,
	cout => \controlunit|programcounter|counter[3]~41\);

-- Location: LCFF_X55_Y11_N25
\controlunit|programcounter|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[3]~40_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(3));

-- Location: LCCOMB_X55_Y11_N26
\controlunit|programcounter|counter[2]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[2]~42_combout\ = (\controlunit|programcounter|counter\(2) & (!\controlunit|programcounter|counter[3]~41\)) # (!\controlunit|programcounter|counter\(2) & ((\controlunit|programcounter|counter[3]~41\) # (GND)))
-- \controlunit|programcounter|counter[2]~43\ = CARRY((!\controlunit|programcounter|counter[3]~41\) # (!\controlunit|programcounter|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(2),
	datad => VCC,
	cin => \controlunit|programcounter|counter[3]~41\,
	combout => \controlunit|programcounter|counter[2]~42_combout\,
	cout => \controlunit|programcounter|counter[2]~43\);

-- Location: LCFF_X55_Y11_N27
\controlunit|programcounter|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[2]~42_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(2));

-- Location: LCCOMB_X55_Y11_N28
\controlunit|programcounter|counter[1]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[1]~44_combout\ = (\controlunit|programcounter|counter\(1) & (\controlunit|programcounter|counter[2]~43\ $ (GND))) # (!\controlunit|programcounter|counter\(1) & (!\controlunit|programcounter|counter[2]~43\ & VCC))
-- \controlunit|programcounter|counter[1]~45\ = CARRY((\controlunit|programcounter|counter\(1) & !\controlunit|programcounter|counter[2]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(1),
	datad => VCC,
	cin => \controlunit|programcounter|counter[2]~43\,
	combout => \controlunit|programcounter|counter[1]~44_combout\,
	cout => \controlunit|programcounter|counter[1]~45\);

-- Location: LCFF_X55_Y11_N29
\controlunit|programcounter|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[1]~44_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(1));

-- Location: LCCOMB_X55_Y11_N30
\controlunit|programcounter|counter[0]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[0]~46_combout\ = \controlunit|programcounter|counter[1]~45\ $ (\controlunit|programcounter|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|programcounter|counter\(0),
	cin => \controlunit|programcounter|counter[1]~45\,
	combout => \controlunit|programcounter|counter[0]~46_combout\);

-- Location: LCFF_X55_Y11_N31
\controlunit|programcounter|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[0]~46_combout\,
	aclr => \controlunit|comb|PC_clr~combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(0));

-- Location: LCCOMB_X56_Y11_N24
\readonlymemory|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux7~0_combout\ = (!\controlunit|programcounter|counter\(13) & (!\controlunit|programcounter|counter\(12) & (\controlunit|programcounter|counter\(15) $ (!\controlunit|programcounter|counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(13),
	datab => \controlunit|programcounter|counter\(15),
	datac => \controlunit|programcounter|counter\(12),
	datad => \controlunit|programcounter|counter\(14),
	combout => \readonlymemory|Mux7~0_combout\);

-- Location: LCFF_X56_Y11_N25
\readonlymemory|data_output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(0));

-- Location: LCCOMB_X54_Y10_N0
\readonlymemory|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux3~0_combout\ = (!\controlunit|programcounter|counter\(12) & ((\controlunit|programcounter|counter\(15) & (!\controlunit|programcounter|counter\(13))) # (!\controlunit|programcounter|counter\(15) & 
-- (\controlunit|programcounter|counter\(13) & !\controlunit|programcounter|counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datab => \controlunit|programcounter|counter\(15),
	datac => \controlunit|programcounter|counter\(13),
	datad => \controlunit|programcounter|counter\(14),
	combout => \readonlymemory|Mux3~0_combout\);

-- Location: LCFF_X54_Y10_N1
\readonlymemory|data_output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(1));

-- Location: LCCOMB_X54_Y10_N18
\readonlymemory|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux6~0_combout\ = (!\controlunit|programcounter|counter\(12) & (!\controlunit|programcounter|counter\(13) & !\controlunit|programcounter|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datac => \controlunit|programcounter|counter\(13),
	datad => \controlunit|programcounter|counter\(14),
	combout => \readonlymemory|Mux6~0_combout\);

-- Location: LCFF_X54_Y10_N19
\readonlymemory|data_output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(2));

-- Location: LCCOMB_X54_Y10_N12
\readonlymemory|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux5~0_combout\ = (!\controlunit|programcounter|counter\(12) & (!\controlunit|programcounter|counter\(15) & (!\controlunit|programcounter|counter\(13) & \controlunit|programcounter|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datab => \controlunit|programcounter|counter\(15),
	datac => \controlunit|programcounter|counter\(13),
	datad => \controlunit|programcounter|counter\(14),
	combout => \readonlymemory|Mux5~0_combout\);

-- Location: LCFF_X54_Y10_N13
\readonlymemory|data_output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(4));

-- Location: LCCOMB_X54_Y10_N6
\readonlymemory|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux4~0_combout\ = (!\controlunit|programcounter|counter\(12) & (!\controlunit|programcounter|counter\(15) & (\controlunit|programcounter|counter\(13) & !\controlunit|programcounter|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datab => \controlunit|programcounter|counter\(15),
	datac => \controlunit|programcounter|counter\(13),
	datad => \controlunit|programcounter|counter\(14),
	combout => \readonlymemory|Mux4~0_combout\);

-- Location: LCFF_X54_Y10_N7
\readonlymemory|data_output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(5));

-- Location: LCCOMB_X54_Y10_N4
\readonlymemory|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux2~0_combout\ = (!\controlunit|programcounter|counter\(12) & ((\controlunit|programcounter|counter\(15) & (!\controlunit|programcounter|counter\(13) & \controlunit|programcounter|counter\(14))) # 
-- (!\controlunit|programcounter|counter\(15) & (\controlunit|programcounter|counter\(13) & !\controlunit|programcounter|counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datab => \controlunit|programcounter|counter\(15),
	datac => \controlunit|programcounter|counter\(13),
	datad => \controlunit|programcounter|counter\(14),
	combout => \readonlymemory|Mux2~0_combout\);

-- Location: LCFF_X54_Y10_N5
\readonlymemory|data_output[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(9));

-- Location: LCCOMB_X54_Y11_N16
\controlunit|comb|RF_Rp_rd\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|RF_Rp_rd~combout\ = LCELL((\controlunit|statereg|ff2|q~regout\ & ((\controlunit|statereg|ff0|q~regout\) # (!\controlunit|statereg|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff2|q~regout\,
	datab => \controlunit|statereg|ff1|q~regout\,
	datad => \controlunit|statereg|ff0|q~regout\,
	combout => \controlunit|comb|RF_Rp_rd~combout\);

-- Location: CLKCTRL_G4
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

-- Location: LCFF_X56_Y11_N11
\controlunit|instructionreg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \readonlymemory|data_output\(0),
	sload => VCC,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff0|q~regout\);

-- Location: LCCOMB_X54_Y10_N26
\controlunit|instructionreg|ff8|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|instructionreg|ff8|q~feeder_combout\ = \readonlymemory|data_output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \readonlymemory|data_output\(1),
	combout => \controlunit|instructionreg|ff8|q~feeder_combout\);

-- Location: LCFF_X54_Y10_N27
\controlunit|instructionreg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|instructionreg|ff8|q~feeder_combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff8|q~regout\);

-- Location: LCCOMB_X54_Y10_N16
\controlunit|instructionreg|ff2|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|instructionreg|ff2|q~feeder_combout\ = \readonlymemory|data_output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \readonlymemory|data_output\(2),
	combout => \controlunit|instructionreg|ff2|q~feeder_combout\);

-- Location: LCFF_X54_Y10_N17
\controlunit|instructionreg|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|instructionreg|ff2|q~feeder_combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff2|q~regout\);

-- Location: LCCOMB_X51_Y11_N16
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

-- Location: LCCOMB_X54_Y10_N2
\controlunit|instructionreg|ff4|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|instructionreg|ff4|q~feeder_combout\ = \readonlymemory|data_output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \readonlymemory|data_output\(4),
	combout => \controlunit|instructionreg|ff4|q~feeder_combout\);

-- Location: LCFF_X54_Y10_N3
\controlunit|instructionreg|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|instructionreg|ff4|q~feeder_combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff4|q~regout\);

-- Location: LCCOMB_X54_Y10_N28
\controlunit|instructionreg|ff5|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|instructionreg|ff5|q~feeder_combout\ = \readonlymemory|data_output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \readonlymemory|data_output\(5),
	combout => \controlunit|instructionreg|ff5|q~feeder_combout\);

-- Location: LCFF_X54_Y10_N29
\controlunit|instructionreg|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|instructionreg|ff5|q~feeder_combout\,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff5|q~regout\);

-- Location: LCCOMB_X55_Y10_N8
\randomaccessmemory|temp_address[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \randomaccessmemory|temp_address[0]~feeder_combout\ = \controlunit|instructionreg|ff0|q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|instructionreg|ff0|q~regout\,
	combout => \randomaccessmemory|temp_address[0]~feeder_combout\);

-- Location: LCCOMB_X54_Y11_N28
\operationalunit|mux|D[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[8]~0_combout\ = (\controlunit|statereg|ff1|q~regout\ & (!\controlunit|statereg|ff2|q~regout\ & \controlunit|statereg|ff0|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|statereg|ff1|q~regout\,
	datac => \controlunit|statereg|ff2|q~regout\,
	datad => \controlunit|statereg|ff0|q~regout\,
	combout => \operationalunit|mux|D[8]~0_combout\);

-- Location: LCFF_X55_Y10_N9
\randomaccessmemory|temp_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \randomaccessmemory|temp_address[0]~feeder_combout\,
	ena => \operationalunit|mux|D[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randomaccessmemory|temp_address\(0));

-- Location: LCCOMB_X55_Y10_N6
\randomaccessmemory|temp_address[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \randomaccessmemory|temp_address[1]~feeder_combout\ = \controlunit|instructionreg|ff8|q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|instructionreg|ff8|q~regout\,
	combout => \randomaccessmemory|temp_address[1]~feeder_combout\);

-- Location: LCFF_X55_Y10_N7
\randomaccessmemory|temp_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \randomaccessmemory|temp_address[1]~feeder_combout\,
	ena => \operationalunit|mux|D[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randomaccessmemory|temp_address\(1));

-- Location: LCCOMB_X55_Y10_N12
\randomaccessmemory|temp_address[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \randomaccessmemory|temp_address[2]~feeder_combout\ = \controlunit|instructionreg|ff2|q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|instructionreg|ff2|q~regout\,
	combout => \randomaccessmemory|temp_address[2]~feeder_combout\);

-- Location: LCFF_X55_Y10_N13
\randomaccessmemory|temp_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \randomaccessmemory|temp_address[2]~feeder_combout\,
	ena => \operationalunit|mux|D[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randomaccessmemory|temp_address\(2));

-- Location: LCCOMB_X55_Y10_N10
\randomaccessmemory|temp_address[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \randomaccessmemory|temp_address[4]~feeder_combout\ = \controlunit|instructionreg|ff4|q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|instructionreg|ff4|q~regout\,
	combout => \randomaccessmemory|temp_address[4]~feeder_combout\);

-- Location: LCFF_X55_Y10_N11
\randomaccessmemory|temp_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \randomaccessmemory|temp_address[4]~feeder_combout\,
	ena => \operationalunit|mux|D[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randomaccessmemory|temp_address\(4));

-- Location: LCCOMB_X55_Y10_N4
\randomaccessmemory|temp_address[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \randomaccessmemory|temp_address[5]~feeder_combout\ = \controlunit|instructionreg|ff5|q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|instructionreg|ff5|q~regout\,
	combout => \randomaccessmemory|temp_address[5]~feeder_combout\);

-- Location: LCFF_X55_Y10_N5
\randomaccessmemory|temp_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \randomaccessmemory|temp_address[5]~feeder_combout\,
	ena => \operationalunit|mux|D[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randomaccessmemory|temp_address\(5));

-- Location: LCCOMB_X53_Y11_N16
\operationalunit|mux|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|Equal2~0_combout\ = ((\controlunit|statereg|ff0|q~regout\) # (!\controlunit|statereg|ff2|q~regout\)) # (!\controlunit|statereg|ff1|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff1|q~regout\,
	datab => \controlunit|statereg|ff2|q~regout\,
	datac => \controlunit|statereg|ff0|q~regout\,
	combout => \operationalunit|mux|Equal2~0_combout\);

-- Location: LCCOMB_X51_Y11_N4
\operationalunit|mux|D[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[1]~2_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\)) # (!\operationalunit|mux|D[8]~0_combout\ & (((!\operationalunit|mux|Equal2~0_combout\ & 
-- \operationalunit|reg|Rp_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\,
	datab => \operationalunit|mux|Equal2~0_combout\,
	datac => \operationalunit|mux|D[8]~0_combout\,
	datad => \operationalunit|reg|Rp_data\(1),
	combout => \operationalunit|mux|D[1]~2_combout\);

-- Location: LCFF_X51_Y11_N5
\operationalunit|reg|reg_rtl_0_bypass[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(11));

-- Location: LCFF_X51_Y11_N19
\operationalunit|reg|reg_rtl_0_bypass[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(13));

-- Location: LCFF_X51_Y11_N25
\operationalunit|reg|reg_rtl_0_bypass[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(15));

-- Location: LCFF_X53_Y10_N1
\operationalunit|reg|reg_rtl_0_bypass[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(17));

-- Location: LCCOMB_X53_Y11_N18
\controlunit|comb|RF_W_wr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|RF_W_wr~0_combout\ = (\controlunit|statereg|ff1|q~regout\ & ((\controlunit|statereg|ff2|q~regout\) # (\controlunit|statereg|ff0|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff1|q~regout\,
	datab => \controlunit|statereg|ff2|q~regout\,
	datac => \controlunit|statereg|ff0|q~regout\,
	combout => \controlunit|comb|RF_W_wr~0_combout\);

-- Location: LCFF_X53_Y11_N19
\operationalunit|reg|reg_rtl_0_bypass[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|comb|RF_W_wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(0));

-- Location: LCFF_X53_Y10_N25
\operationalunit|reg|reg_rtl_0_bypass[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controlunit|instructionreg|ff2|q~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(5));

-- Location: LCFF_X54_Y10_N25
\operationalunit|reg|reg_rtl_0_bypass[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \readonlymemory|data_output\(9),
	sload => VCC,
	ena => \controlunit|comb|PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(4));

-- Location: LCFF_X54_Y10_N31
\operationalunit|reg|reg_rtl_0_bypass[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controlunit|instructionreg|ff0|q~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(1));

-- Location: LCCOMB_X54_Y10_N24
\operationalunit|reg|reg~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~21_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(3) & (\operationalunit|reg|reg_rtl_0_bypass\(4) & (\controlunit|instructionreg|ff8|q~regout\ $ (!\operationalunit|reg|reg_rtl_0_bypass\(1))))) # 
-- (!\operationalunit|reg|reg_rtl_0_bypass\(3) & (!\operationalunit|reg|reg_rtl_0_bypass\(4) & (\controlunit|instructionreg|ff8|q~regout\ $ (!\operationalunit|reg|reg_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(3),
	datab => \controlunit|instructionreg|ff8|q~regout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(4),
	datad => \operationalunit|reg|reg_rtl_0_bypass\(1),
	combout => \operationalunit|reg|reg~21_combout\);

-- Location: LCCOMB_X53_Y10_N24
\operationalunit|reg|reg\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~combout\ = ((\operationalunit|reg|reg_rtl_0_bypass\(0) & (!\operationalunit|reg|reg_rtl_0_bypass\(5) & \operationalunit|reg|reg~21_combout\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(0),
	datac => \operationalunit|reg|reg_rtl_0_bypass\(5),
	datad => \operationalunit|reg|reg~21_combout\,
	combout => \operationalunit|reg|reg~combout\);

-- Location: LCFF_X53_Y10_N21
\operationalunit|reg|reg_rtl_0_bypass[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(25));

-- Location: LCFF_X53_Y11_N1
\operationalunit|reg|reg_rtl_0_bypass[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(29));

-- Location: LCFF_X53_Y11_N23
\operationalunit|reg|reg_rtl_0_bypass[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(31));

-- Location: LCFF_X53_Y11_N7
\operationalunit|reg|reg_rtl_0_bypass[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(33));

-- Location: LCFF_X53_Y11_N3
\operationalunit|reg|reg_rtl_0_bypass[35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[13]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(35));

-- Location: LCFF_X53_Y11_N31
\operationalunit|reg|reg_rtl_0_bypass[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(37));

-- Location: M4K_X52_Y11
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
	portbaddrstall => \controlunit|comb|ALT_INV_PC_inc~0_combout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y11_N24
\operationalunit|reg|reg~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~37_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(39))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(39),
	datab => \operationalunit|reg|reg~combout\,
	datac => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a15\,
	combout => \operationalunit|reg|reg~37_combout\);

-- Location: LCFF_X53_Y11_N25
\operationalunit|reg|Rp_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(15));

-- Location: M4K_X52_Y10
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300020001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processor.ram0_RAM_15119.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:randomaccessmemory|altsyncram:ram_rtl_0|altsyncram_c0l1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 16,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \randomaccessmemory|ram~25_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y11_N10
\operationalunit|mux|D[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[15]~16_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & 
-- (\operationalunit|reg|Rp_data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|Equal2~0_combout\,
	datab => \operationalunit|mux|D[8]~0_combout\,
	datac => \operationalunit|reg|Rp_data\(15),
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\,
	combout => \operationalunit|mux|D[15]~16_combout\);

-- Location: LCCOMB_X53_Y11_N20
\operationalunit|reg|reg~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~36_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(37))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(37),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a14\,
	combout => \operationalunit|reg|reg~36_combout\);

-- Location: LCFF_X53_Y11_N21
\operationalunit|reg|Rp_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(14));

-- Location: LCCOMB_X53_Y11_N30
\operationalunit|mux|D[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[14]~15_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & 
-- (\operationalunit|reg|Rp_data\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|Equal2~0_combout\,
	datab => \operationalunit|mux|D[8]~0_combout\,
	datac => \operationalunit|reg|Rp_data\(14),
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\,
	combout => \operationalunit|mux|D[14]~15_combout\);

-- Location: LCCOMB_X53_Y11_N8
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

-- Location: LCFF_X53_Y11_N9
\operationalunit|reg|Rp_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(13));

-- Location: LCCOMB_X53_Y11_N2
\operationalunit|mux|D[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[13]~14_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & 
-- (\operationalunit|reg|Rp_data\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|Equal2~0_combout\,
	datab => \operationalunit|mux|D[8]~0_combout\,
	datac => \operationalunit|reg|Rp_data\(13),
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\,
	combout => \operationalunit|mux|D[13]~14_combout\);

-- Location: LCCOMB_X53_Y11_N28
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

-- Location: LCFF_X53_Y11_N29
\operationalunit|reg|Rp_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(12));

-- Location: LCCOMB_X53_Y11_N6
\operationalunit|mux|D[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[12]~13_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & 
-- ((\operationalunit|reg|Rp_data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|Equal2~0_combout\,
	datab => \operationalunit|mux|D[8]~0_combout\,
	datac => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\,
	datad => \operationalunit|reg|Rp_data\(12),
	combout => \operationalunit|mux|D[12]~13_combout\);

-- Location: LCCOMB_X53_Y11_N26
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

-- Location: LCFF_X53_Y11_N27
\operationalunit|reg|Rp_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(11));

-- Location: LCCOMB_X53_Y11_N22
\operationalunit|mux|D[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[11]~12_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & 
-- ((\operationalunit|reg|Rp_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|Equal2~0_combout\,
	datab => \operationalunit|mux|D[8]~0_combout\,
	datac => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \operationalunit|reg|Rp_data\(11),
	combout => \operationalunit|mux|D[11]~12_combout\);

-- Location: LCCOMB_X53_Y11_N4
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

-- Location: LCFF_X53_Y11_N5
\operationalunit|reg|Rp_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(10));

-- Location: LCCOMB_X53_Y11_N0
\operationalunit|mux|D[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[10]~11_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & 
-- (\operationalunit|reg|Rp_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|Equal2~0_combout\,
	datab => \operationalunit|mux|D[8]~0_combout\,
	datac => \operationalunit|reg|Rp_data\(10),
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \operationalunit|mux|D[10]~11_combout\);

-- Location: LCFF_X51_Y11_N27
\operationalunit|reg|reg_rtl_0_bypass[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(27));

-- Location: LCCOMB_X51_Y11_N8
\operationalunit|reg|reg~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~31_combout\ = (\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(27)))) # (!\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~combout\,
	datac => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a9\,
	datad => \operationalunit|reg|reg_rtl_0_bypass\(27),
	combout => \operationalunit|reg|reg~31_combout\);

-- Location: LCFF_X51_Y11_N9
\operationalunit|reg|Rp_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(9));

-- Location: LCCOMB_X51_Y11_N26
\operationalunit|mux|D[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[9]~10_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\)) # (!\operationalunit|mux|D[8]~0_combout\ & (((\operationalunit|reg|Rp_data\(9) & 
-- !\operationalunit|mux|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|D[8]~0_combout\,
	datab => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\,
	datac => \operationalunit|reg|Rp_data\(9),
	datad => \operationalunit|mux|Equal2~0_combout\,
	combout => \operationalunit|mux|D[9]~10_combout\);

-- Location: LCCOMB_X53_Y10_N12
\operationalunit|reg|reg~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~30_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(25))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg~combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(25),
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a8\,
	combout => \operationalunit|reg|reg~30_combout\);

-- Location: LCFF_X53_Y10_N13
\operationalunit|reg|Rp_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(8));

-- Location: LCCOMB_X53_Y10_N20
\operationalunit|mux|D[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[8]~9_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & 
-- ((\operationalunit|reg|Rp_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|Equal2~0_combout\,
	datab => \operationalunit|mux|D[8]~0_combout\,
	datac => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\,
	datad => \operationalunit|reg|Rp_data\(8),
	combout => \operationalunit|mux|D[8]~9_combout\);

-- Location: LCCOMB_X51_Y11_N22
\operationalunit|reg|reg~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~29_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(23))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(23),
	datac => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a7\,
	datad => \operationalunit|reg|reg~combout\,
	combout => \operationalunit|reg|reg~29_combout\);

-- Location: LCFF_X51_Y11_N23
\operationalunit|reg|Rp_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(7));

-- Location: LCCOMB_X51_Y11_N20
\operationalunit|mux|D[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[7]~8_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (\operationalunit|reg|Rp_data\(7) & 
-- ((!\operationalunit|mux|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|D[8]~0_combout\,
	datab => \operationalunit|reg|Rp_data\(7),
	datac => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \operationalunit|mux|Equal2~0_combout\,
	combout => \operationalunit|mux|D[7]~8_combout\);

-- Location: LCCOMB_X51_Y11_N12
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

-- Location: LCFF_X51_Y11_N13
\operationalunit|reg|Rp_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(6));

-- Location: LCCOMB_X51_Y11_N6
\operationalunit|mux|D[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[6]~7_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (\operationalunit|reg|Rp_data\(6) & 
-- ((!\operationalunit|mux|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(6),
	datab => \operationalunit|mux|D[8]~0_combout\,
	datac => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\,
	datad => \operationalunit|mux|Equal2~0_combout\,
	combout => \operationalunit|mux|D[6]~7_combout\);

-- Location: LCCOMB_X53_Y10_N22
\operationalunit|reg|reg~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~27_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(19))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(19),
	datab => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a5\,
	combout => \operationalunit|reg|reg~27_combout\);

-- Location: LCFF_X53_Y10_N23
\operationalunit|reg|Rp_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(5));

-- Location: LCCOMB_X53_Y10_N10
\operationalunit|mux|D[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[5]~6_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & 
-- ((\operationalunit|reg|Rp_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|Equal2~0_combout\,
	datab => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\,
	datac => \operationalunit|mux|D[8]~0_combout\,
	datad => \operationalunit|reg|Rp_data\(5),
	combout => \operationalunit|mux|D[5]~6_combout\);

-- Location: LCCOMB_X53_Y10_N28
\operationalunit|reg|reg~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~26_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(17))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(17),
	datac => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a4\,
	datad => \operationalunit|reg|reg~combout\,
	combout => \operationalunit|reg|reg~26_combout\);

-- Location: LCFF_X53_Y10_N29
\operationalunit|reg|Rp_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(4));

-- Location: LCCOMB_X53_Y10_N0
\operationalunit|mux|D[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[4]~5_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (!\operationalunit|mux|Equal2~0_combout\ & 
-- (\operationalunit|reg|Rp_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|Equal2~0_combout\,
	datab => \operationalunit|reg|Rp_data\(4),
	datac => \operationalunit|mux|D[8]~0_combout\,
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \operationalunit|mux|D[4]~5_combout\);

-- Location: LCCOMB_X51_Y11_N10
\operationalunit|reg|reg~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~25_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(15))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(15),
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a3\,
	combout => \operationalunit|reg|reg~25_combout\);

-- Location: LCFF_X51_Y11_N11
\operationalunit|reg|Rp_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(3));

-- Location: LCCOMB_X51_Y11_N24
\operationalunit|mux|D[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[3]~4_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (\operationalunit|reg|Rp_data\(3) & 
-- ((!\operationalunit|mux|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(3),
	datab => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\,
	datac => \operationalunit|mux|D[8]~0_combout\,
	datad => \operationalunit|mux|Equal2~0_combout\,
	combout => \operationalunit|mux|D[3]~4_combout\);

-- Location: LCCOMB_X51_Y11_N28
\operationalunit|reg|reg~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~24_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(13))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(13),
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a2\,
	combout => \operationalunit|reg|reg~24_combout\);

-- Location: LCFF_X51_Y11_N29
\operationalunit|reg|Rp_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(2));

-- Location: LCCOMB_X51_Y11_N18
\operationalunit|mux|D[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[2]~3_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (\operationalunit|reg|Rp_data\(2) & 
-- ((!\operationalunit|mux|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|D[8]~0_combout\,
	datab => \operationalunit|reg|Rp_data\(2),
	datac => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \operationalunit|mux|Equal2~0_combout\,
	combout => \operationalunit|mux|D[2]~3_combout\);

-- Location: LCCOMB_X51_Y11_N30
\operationalunit|reg|reg~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~23_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(11))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(11),
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a1\,
	combout => \operationalunit|reg|reg~23_combout\);

-- Location: LCFF_X51_Y11_N31
\operationalunit|reg|Rp_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(1));

-- Location: LCCOMB_X51_Y11_N14
\operationalunit|mux|D[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|mux|D[0]~1_combout\ = (\operationalunit|mux|D[8]~0_combout\ & (((\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (!\operationalunit|mux|D[8]~0_combout\ & (\operationalunit|reg|Rp_data\(0) & 
-- ((!\operationalunit|mux|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|mux|D[8]~0_combout\,
	datab => \operationalunit|reg|Rp_data\(0),
	datac => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \operationalunit|mux|Equal2~0_combout\,
	combout => \operationalunit|mux|D[0]~1_combout\);

-- Location: LCFF_X51_Y11_N15
\operationalunit|reg|reg_rtl_0_bypass[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|mux|D[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(9));

-- Location: LCCOMB_X51_Y11_N0
\operationalunit|reg|reg~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~22_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(9))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(9),
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \operationalunit|reg|reg~22_combout\);

-- Location: LCFF_X51_Y11_N1
\operationalunit|reg|Rp_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rp_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(0));

-- Location: LCCOMB_X53_Y11_N12
\randomaccessmemory|ram~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \randomaccessmemory|ram~25_combout\ = (!\controlunit|statereg|ff1|q~regout\ & (\controlunit|statereg|ff2|q~regout\ & !\controlunit|statereg|ff0|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff1|q~regout\,
	datab => \controlunit|statereg|ff2|q~regout\,
	datac => \controlunit|statereg|ff0|q~regout\,
	combout => \randomaccessmemory|ram~25_combout\);

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \readonlymemory|data_output\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(2));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \readonlymemory|data_output\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(5));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \readonlymemory|data_output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(8));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(10));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \readonlymemory|data_output\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(12));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \readonlymemory|data_output\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(13));

-- Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \readonlymemory|data_output\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(14));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
END structure;



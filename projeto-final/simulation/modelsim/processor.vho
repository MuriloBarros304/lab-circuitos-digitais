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

-- DATE "08/12/2024 12:05:46"

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
-- PC_addr[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[1]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[2]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[4]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[5]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[6]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[7]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[8]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[9]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[10]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[11]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[12]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[13]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[14]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_addr[15]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[1]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[2]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[3]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[4]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[5]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[6]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[7]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[8]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[9]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[10]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[11]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[12]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[13]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[14]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_data[15]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[0]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[2]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[4]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[5]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[6]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[7]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[8]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[9]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[10]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[11]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[12]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[13]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[14]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_W_data[15]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[2]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[4]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[5]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[6]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[7]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[8]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[9]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[10]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[11]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[12]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[13]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[14]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D_R_data[15]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controlunit|comb|RF_Rq_rd~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controlunit|comb|n3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \controlunit|add|Add0~1_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff12|q~regout\ : std_logic;
SIGNAL \controlunit|add|Add0~3_combout\ : std_logic;
SIGNAL \controlunit|comb|n1~0_combout\ : std_logic;
SIGNAL \operationalunit|comp1|Equal0~1_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~41_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~44_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~46_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~48_combout\ : std_logic;
SIGNAL \controlunit|comb|RF_Rq_rd~combout\ : std_logic;
SIGNAL \controlunit|comb|RF_Rq_rd~clkctrl_outclk\ : std_logic;
SIGNAL \controlunit|comb|n3~clkctrl_outclk\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \controlunit|programcounter|counter[15]~17\ : std_logic;
SIGNAL \controlunit|programcounter|counter[14]~19_combout\ : std_logic;
SIGNAL \randomaccessmemory|temp_address[0]~feeder_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[14]~20\ : std_logic;
SIGNAL \controlunit|programcounter|counter[13]~21_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[13]~22\ : std_logic;
SIGNAL \controlunit|programcounter|counter[12]~23_combout\ : std_logic;
SIGNAL \controlunit|comb|PC_inc~0_combout\ : std_logic;
SIGNAL \controlunit|comb|PC_inc~0_wirecell_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \readonlymemory|Mux1~0_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \operationalunit|reg|reg~37_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~38_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \operationalunit|reg|reg~39_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \operationalunit|reg|reg~40_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[35]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \operationalunit|reg|reg~35_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \operationalunit|reg|reg~42_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[31]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \operationalunit|reg|reg~43_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \operationalunit|reg|reg~32_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \operationalunit|reg|reg~45_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \operationalunit|reg|reg~30_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \operationalunit|reg|reg~47_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \operationalunit|reg|reg~28_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \operationalunit|reg|reg~49_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \operationalunit|reg|reg~50_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \operationalunit|reg|reg~51_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \operationalunit|reg|reg~52_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \operationalunit|reg|reg~53_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[9]~feeder_combout\ : std_logic;
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
SIGNAL \controlunit|comb|n3~combout\ : std_logic;
SIGNAL \controlunit|comb|n3~3_combout\ : std_logic;
SIGNAL \controlunit|statereg|ff3|q~regout\ : std_logic;
SIGNAL \controlunit|comb|PC_clr~0_combout\ : std_logic;
SIGNAL \controlunit|comb|M_s~combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[1]~18_combout\ : std_logic;
SIGNAL \readonlymemory|Mux2~0_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff8|q~feeder_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff8|q~regout\ : std_logic;
SIGNAL \operationalunit|reg|reg~21_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg~combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \operationalunit|reg|reg~24_combout\ : std_logic;
SIGNAL \readonlymemory|Mux0~0_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff13|q~regout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \operationalunit|reg|reg~25_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \operationalunit|reg|reg~22_combout\ : std_logic;
SIGNAL \operationalunit|comp1|Equal0~3_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \operationalunit|reg|reg~26_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \operationalunit|reg|reg~29_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \operationalunit|reg|reg~27_combout\ : std_logic;
SIGNAL \operationalunit|comp1|Equal0~2_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \operationalunit|reg|reg~34_combout\ : std_logic;
SIGNAL \operationalunit|comp1|Equal0~0_combout\ : std_logic;
SIGNAL \operationalunit|comp1|Equal0~4_combout\ : std_logic;
SIGNAL \controlunit|comb|n0~1_combout\ : std_logic;
SIGNAL \controlunit|comb|n1~1_combout\ : std_logic;
SIGNAL \controlunit|statereg|ff1|q~regout\ : std_logic;
SIGNAL \controlunit|comb|n0~0_combout\ : std_logic;
SIGNAL \controlunit|comb|n0~3_combout\ : std_logic;
SIGNAL \controlunit|comb|n0~2_combout\ : std_logic;
SIGNAL \controlunit|comb|n0~4_combout\ : std_logic;
SIGNAL \controlunit|statereg|ff0|q~regout\ : std_logic;
SIGNAL \controlunit|comb|RF_W_wr~0_combout\ : std_logic;
SIGNAL \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \operationalunit|reg|reg~23_combout\ : std_logic;
SIGNAL \readonlymemory|Mux3~0_combout\ : std_logic;
SIGNAL \controlunit|instructionreg|ff0|q~regout\ : std_logic;
SIGNAL \controlunit|add|Add0~0_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[15]~16_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[12]~24\ : std_logic;
SIGNAL \controlunit|programcounter|counter[11]~25_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[11]~26\ : std_logic;
SIGNAL \controlunit|programcounter|counter[10]~27_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[10]~28\ : std_logic;
SIGNAL \controlunit|programcounter|counter[9]~29_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[9]~30\ : std_logic;
SIGNAL \controlunit|programcounter|counter[8]~31_combout\ : std_logic;
SIGNAL \controlunit|add|Add0~2_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[8]~32\ : std_logic;
SIGNAL \controlunit|programcounter|counter[7]~33_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[7]~34\ : std_logic;
SIGNAL \controlunit|programcounter|counter[6]~35_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \operationalunit|reg|reg~31_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[6]~36\ : std_logic;
SIGNAL \controlunit|programcounter|counter[5]~37_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[5]~38\ : std_logic;
SIGNAL \controlunit|programcounter|counter[4]~39_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \operationalunit|reg|reg~33_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[4]~40\ : std_logic;
SIGNAL \controlunit|programcounter|counter[3]~41_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[3]~42\ : std_logic;
SIGNAL \controlunit|programcounter|counter[2]~43_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[2]~44\ : std_logic;
SIGNAL \controlunit|programcounter|counter[1]~45_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \operationalunit|reg|reg~36_combout\ : std_logic;
SIGNAL \controlunit|programcounter|counter[1]~46\ : std_logic;
SIGNAL \controlunit|programcounter|counter[0]~47_combout\ : std_logic;
SIGNAL \operationalunit|reg|reg_rtl_0_bypass\ : std_logic_vector(0 TO 40);
SIGNAL \readonlymemory|data_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \randomaccessmemory|temp_address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operationalunit|reg|Rq_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operationalunit|reg|Rp_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \controlunit|programcounter|counter\ : std_logic_vector(0 TO 15);
SIGNAL \controlunit|comb|ALT_INV_PC_inc~0_wirecell_combout\ : std_logic;
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

\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\randomaccessmemory|temp_address\(1) & \~GND~combout\ & \~GND~combout\ & \randomaccessmemory|temp_address\(1) & \randomaccessmemory|temp_address\(0));

\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\ <= \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\ & 
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\ & 
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\ & 
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\ & 
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portadataout\);

\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\controlunit|instructionreg|ff13|q~regout\ & \controlunit|instructionreg|ff0|q~regout\);

\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\readonlymemory|data_output\(9) & \readonlymemory|data_output\(8));

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

\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\ & 
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\ & 
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\ & 
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\ & 
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\ & \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portadataout\);

\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\controlunit|instructionreg|ff13|q~regout\ & \controlunit|instructionreg|ff0|q~regout\);

\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \readonlymemory|data_output\(1));

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

\controlunit|comb|n3~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \controlunit|comb|n3~combout\);
\controlunit|comb|ALT_INV_PC_inc~0_wirecell_combout\ <= NOT \controlunit|comb|PC_inc~0_wirecell_combout\;
\controlunit|comb|ALT_INV_PC_inc~0_combout\ <= NOT \controlunit|comb|PC_inc~0_combout\;

-- Location: M4K_X26_Y34
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

-- Location: LCCOMB_X24_Y31_N4
\controlunit|add|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~1_combout\ = (\controlunit|statereg|ff3|q~regout\ & (\controlunit|instructionreg|ff13|q~regout\ & \controlunit|statereg|ff1|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|statereg|ff3|q~regout\,
	datac => \controlunit|instructionreg|ff13|q~regout\,
	datad => \controlunit|statereg|ff1|q~regout\,
	combout => \controlunit|add|Add0~1_combout\);

-- Location: LCFF_X23_Y32_N7
\controlunit|instructionreg|ff12|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \readonlymemory|data_output\(9),
	sload => VCC,
	ena => \controlunit|comb|ALT_INV_PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff12|q~regout\);

-- Location: LCCOMB_X24_Y31_N6
\controlunit|add|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~3_combout\ = (\controlunit|instructionreg|ff12|q~regout\ & (\controlunit|statereg|ff3|q~regout\ & \controlunit|statereg|ff1|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|instructionreg|ff12|q~regout\,
	datac => \controlunit|statereg|ff3|q~regout\,
	datad => \controlunit|statereg|ff1|q~regout\,
	combout => \controlunit|add|Add0~3_combout\);

-- Location: LCFF_X25_Y33_N23
\operationalunit|reg|reg_rtl_0_bypass[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a10\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(29));

-- Location: LCFF_X27_Y33_N3
\operationalunit|reg|reg_rtl_0_bypass[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a15\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(39));

-- Location: LCCOMB_X23_Y32_N10
\controlunit|comb|n1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n1~0_combout\ = (!\controlunit|statereg|ff3|q~regout\ & ((\controlunit|comb|n0~0_combout\) # ((!\controlunit|statereg|ff1|q~regout\ & \controlunit|statereg|ff0|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff3|q~regout\,
	datab => \controlunit|statereg|ff1|q~regout\,
	datac => \controlunit|statereg|ff0|q~regout\,
	datad => \controlunit|comb|n0~0_combout\,
	combout => \controlunit|comb|n1~0_combout\);

-- Location: LCFF_X25_Y34_N3
\operationalunit|reg|Rq_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(13));

-- Location: LCFF_X25_Y32_N27
\operationalunit|reg|Rq_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(10));

-- Location: LCFF_X25_Y32_N7
\operationalunit|reg|Rq_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(8));

-- Location: LCFF_X25_Y32_N5
\operationalunit|reg|Rq_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(6));

-- Location: LCCOMB_X25_Y32_N22
\operationalunit|comp1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp1|Equal0~1_combout\ = (!\operationalunit|reg|Rp_data\(9) & (!\operationalunit|reg|Rp_data\(11) & (!\operationalunit|reg|Rp_data\(8) & !\operationalunit|reg|Rp_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(9),
	datab => \operationalunit|reg|Rp_data\(11),
	datac => \operationalunit|reg|Rp_data\(8),
	datad => \operationalunit|reg|Rp_data\(10),
	combout => \operationalunit|comp1|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y34_N2
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

-- Location: LCCOMB_X25_Y32_N26
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

-- Location: LCCOMB_X25_Y32_N6
\operationalunit|reg|reg~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~46_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(25))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a8\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(25),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a8\,
	combout => \operationalunit|reg|reg~46_combout\);

-- Location: LCCOMB_X25_Y32_N4
\operationalunit|reg|reg~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~48_combout\ = (\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(21))) # (!\operationalunit|reg|reg~38_combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(10) & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a6\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~38_combout\,
	datab => \operationalunit|reg|reg_rtl_0_bypass\(21),
	datac => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a6\,
	combout => \operationalunit|reg|reg~48_combout\);

-- Location: LCCOMB_X24_Y31_N16
\controlunit|comb|RF_Rq_rd\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|RF_Rq_rd~combout\ = LCELL((\controlunit|comb|n3~combout\ & \controlunit|statereg|ff0|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlunit|comb|n3~combout\,
	datad => \controlunit|statereg|ff0|q~regout\,
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

-- Location: CLKCTRL_G10
\controlunit|comb|n3~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \controlunit|comb|n3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \controlunit|comb|n3~clkctrl_outclk\);

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

-- Location: LCCOMB_X23_Y31_N0
\controlunit|programcounter|counter[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[15]~16_combout\ = (\controlunit|programcounter|counter\(15) & (\controlunit|add|Add0~0_combout\ $ (VCC))) # (!\controlunit|programcounter|counter\(15) & (\controlunit|add|Add0~0_combout\ & VCC))
-- \controlunit|programcounter|counter[15]~17\ = CARRY((\controlunit|programcounter|counter\(15) & \controlunit|add|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(15),
	datab => \controlunit|add|Add0~0_combout\,
	datad => VCC,
	combout => \controlunit|programcounter|counter[15]~16_combout\,
	cout => \controlunit|programcounter|counter[15]~17\);

-- Location: LCCOMB_X23_Y31_N2
\controlunit|programcounter|counter[14]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[14]~19_combout\ = (\controlunit|add|Add0~1_combout\ & ((\controlunit|programcounter|counter\(14) & (\controlunit|programcounter|counter[15]~17\ & VCC)) # (!\controlunit|programcounter|counter\(14) & 
-- (!\controlunit|programcounter|counter[15]~17\)))) # (!\controlunit|add|Add0~1_combout\ & ((\controlunit|programcounter|counter\(14) & (!\controlunit|programcounter|counter[15]~17\)) # (!\controlunit|programcounter|counter\(14) & 
-- ((\controlunit|programcounter|counter[15]~17\) # (GND)))))
-- \controlunit|programcounter|counter[14]~20\ = CARRY((\controlunit|add|Add0~1_combout\ & (!\controlunit|programcounter|counter\(14) & !\controlunit|programcounter|counter[15]~17\)) # (!\controlunit|add|Add0~1_combout\ & 
-- ((!\controlunit|programcounter|counter[15]~17\) # (!\controlunit|programcounter|counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|add|Add0~1_combout\,
	datab => \controlunit|programcounter|counter\(14),
	datad => VCC,
	cin => \controlunit|programcounter|counter[15]~17\,
	combout => \controlunit|programcounter|counter[14]~19_combout\,
	cout => \controlunit|programcounter|counter[14]~20\);

-- Location: LCCOMB_X25_Y33_N6
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

-- Location: LCCOMB_X23_Y31_N4
\controlunit|programcounter|counter[13]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[13]~21_combout\ = (\controlunit|programcounter|counter\(13) & (\controlunit|programcounter|counter[14]~20\ $ (GND))) # (!\controlunit|programcounter|counter\(13) & (!\controlunit|programcounter|counter[14]~20\ & VCC))
-- \controlunit|programcounter|counter[13]~22\ = CARRY((\controlunit|programcounter|counter\(13) & !\controlunit|programcounter|counter[14]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(13),
	datad => VCC,
	cin => \controlunit|programcounter|counter[14]~20\,
	combout => \controlunit|programcounter|counter[13]~21_combout\,
	cout => \controlunit|programcounter|counter[13]~22\);

-- Location: LCCOMB_X27_Y33_N28
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

-- Location: M4K_X26_Y33
\randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300020001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processor.ram0_RAM_15119.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:randomaccessmemory|altsyncram:ram_rtl_0|altsyncram_4c61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
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
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y33_N16
\operationalunit|reg|reg_rtl_0_bypass[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[13]~feeder_combout\ = \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[13]~feeder_combout\);

-- Location: LCFF_X27_Y33_N17
\operationalunit|reg|reg_rtl_0_bypass[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(13));

-- Location: LCCOMB_X23_Y32_N30
\operationalunit|reg|reg_rtl_0_bypass[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[3]~feeder_combout\ = \controlunit|instructionreg|ff13|q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|instructionreg|ff13|q~regout\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[3]~feeder_combout\);

-- Location: LCFF_X23_Y32_N31
\operationalunit|reg|reg_rtl_0_bypass[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(3));

-- Location: LCCOMB_X23_Y32_N14
\operationalunit|reg|reg_rtl_0_bypass[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[1]~feeder_combout\ = \controlunit|instructionreg|ff0|q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|instructionreg|ff0|q~regout\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[1]~feeder_combout\);

-- Location: LCFF_X23_Y32_N15
\operationalunit|reg|reg_rtl_0_bypass[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(1));

-- Location: LCCOMB_X23_Y31_N6
\controlunit|programcounter|counter[12]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[12]~23_combout\ = (\controlunit|programcounter|counter\(12) & (!\controlunit|programcounter|counter[13]~22\)) # (!\controlunit|programcounter|counter\(12) & ((\controlunit|programcounter|counter[13]~22\) # (GND)))
-- \controlunit|programcounter|counter[12]~24\ = CARRY((!\controlunit|programcounter|counter[13]~22\) # (!\controlunit|programcounter|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datad => VCC,
	cin => \controlunit|programcounter|counter[13]~22\,
	combout => \controlunit|programcounter|counter[12]~23_combout\,
	cout => \controlunit|programcounter|counter[12]~24\);

-- Location: LCCOMB_X24_Y31_N14
\controlunit|comb|PC_inc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|PC_inc~0_combout\ = ((\controlunit|statereg|ff3|q~regout\) # (\controlunit|statereg|ff1|q~regout\)) # (!\controlunit|statereg|ff0|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|statereg|ff0|q~regout\,
	datac => \controlunit|statereg|ff3|q~regout\,
	datad => \controlunit|statereg|ff1|q~regout\,
	combout => \controlunit|comb|PC_inc~0_combout\);

-- Location: LCCOMB_X25_Y31_N0
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

-- Location: LCCOMB_X23_Y32_N4
\readonlymemory|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux1~0_combout\ = (!\controlunit|programcounter|counter\(12) & (\controlunit|programcounter|counter\(15) & (\controlunit|programcounter|counter\(14) & !\controlunit|programcounter|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datab => \controlunit|programcounter|counter\(15),
	datac => \controlunit|programcounter|counter\(14),
	datad => \controlunit|programcounter|counter\(13),
	combout => \readonlymemory|Mux1~0_combout\);

-- Location: LCFF_X23_Y32_N5
\readonlymemory|data_output[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(9));

-- Location: M4K_X26_Y32
\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processor.ram0_regfile_4c9f4da2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "operational:operationalunit|regfile:reg|altsyncram:reg_rtl_0|altsyncram_5ki1:auto_generated|ALTSYNCRAM",
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
	portadatain => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X27_Y32_N22
\operationalunit|reg|reg~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~37_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(39))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(39),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a15\,
	combout => \operationalunit|reg|reg~37_combout\);

-- Location: LCFF_X27_Y32_N23
\operationalunit|reg|Rp_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(15));

-- Location: LCCOMB_X23_Y32_N16
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

-- Location: LCFF_X23_Y32_N17
\operationalunit|reg|reg_rtl_0_bypass[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(10));

-- Location: LCCOMB_X23_Y32_N20
\operationalunit|reg|reg~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~38_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(0) & (!\operationalunit|reg|reg_rtl_0_bypass\(3) & (\operationalunit|reg|reg_rtl_0_bypass\(1) $ (!\controlunit|instructionreg|ff13|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(0),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(3),
	datac => \operationalunit|reg|reg_rtl_0_bypass\(1),
	datad => \controlunit|instructionreg|ff13|q~regout\,
	combout => \operationalunit|reg|reg~38_combout\);

-- Location: LCCOMB_X25_Y34_N28
\operationalunit|reg|reg~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~39_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(39))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a15\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(39),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a15\,
	combout => \operationalunit|reg|reg~39_combout\);

-- Location: LCFF_X25_Y34_N29
\operationalunit|reg|Rq_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(15));

-- Location: LCFF_X27_Y33_N9
\operationalunit|reg|reg_rtl_0_bypass[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a14\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(37));

-- Location: LCCOMB_X25_Y32_N12
\operationalunit|reg|reg~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~40_combout\ = (\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(37))) # (!\operationalunit|reg|reg~38_combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(10) & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a14\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~38_combout\,
	datab => \operationalunit|reg|reg_rtl_0_bypass\(37),
	datac => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a14\,
	combout => \operationalunit|reg|reg~40_combout\);

-- Location: LCFF_X25_Y32_N13
\operationalunit|reg|Rq_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(14));

-- Location: LCCOMB_X27_Y33_N22
\operationalunit|reg|reg_rtl_0_bypass[35]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[35]~feeder_combout\ = \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a13\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[35]~feeder_combout\);

-- Location: LCFF_X27_Y33_N23
\operationalunit|reg|reg_rtl_0_bypass[35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(35));

-- Location: LCCOMB_X27_Y32_N2
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

-- Location: LCFF_X27_Y32_N3
\operationalunit|reg|Rp_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(13));

-- Location: LCFF_X27_Y33_N29
\operationalunit|reg|reg_rtl_0_bypass[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a12\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(33));

-- Location: LCCOMB_X25_Y32_N30
\operationalunit|reg|reg~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~42_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(33))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a12\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(33),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a12\,
	combout => \operationalunit|reg|reg~42_combout\);

-- Location: LCFF_X25_Y32_N31
\operationalunit|reg|Rq_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(12));

-- Location: LCCOMB_X25_Y33_N4
\operationalunit|reg|reg_rtl_0_bypass[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[31]~feeder_combout\ = \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a11\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[31]~feeder_combout\);

-- Location: LCFF_X25_Y33_N5
\operationalunit|reg|reg_rtl_0_bypass[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(31));

-- Location: LCCOMB_X25_Y32_N28
\operationalunit|reg|reg~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~43_combout\ = (\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(31))) # (!\operationalunit|reg|reg~38_combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(10) & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a11\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~38_combout\,
	datab => \operationalunit|reg|reg_rtl_0_bypass\(31),
	datac => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a11\,
	datad => \operationalunit|reg|reg_rtl_0_bypass\(10),
	combout => \operationalunit|reg|reg~43_combout\);

-- Location: LCFF_X25_Y32_N29
\operationalunit|reg|Rq_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(11));

-- Location: LCCOMB_X25_Y32_N0
\operationalunit|reg|reg~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~32_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(29))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(29),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a10\,
	combout => \operationalunit|reg|reg~32_combout\);

-- Location: LCFF_X25_Y32_N1
\operationalunit|reg|Rp_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(10));

-- Location: LCFF_X25_Y33_N17
\operationalunit|reg|reg_rtl_0_bypass[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a9\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(27));

-- Location: LCCOMB_X25_Y32_N16
\operationalunit|reg|reg~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~45_combout\ = (\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(27))) # (!\operationalunit|reg|reg~38_combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(10) & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a9\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~38_combout\,
	datab => \operationalunit|reg|reg_rtl_0_bypass\(27),
	datac => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a9\,
	combout => \operationalunit|reg|reg~45_combout\);

-- Location: LCFF_X25_Y32_N17
\operationalunit|reg|Rq_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(9));

-- Location: LCFF_X25_Y33_N19
\operationalunit|reg|reg_rtl_0_bypass[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a8\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(25));

-- Location: LCCOMB_X25_Y32_N8
\operationalunit|reg|reg~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~30_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(25))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(25),
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a8\,
	combout => \operationalunit|reg|reg~30_combout\);

-- Location: LCFF_X25_Y32_N9
\operationalunit|reg|Rp_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(8));

-- Location: LCCOMB_X25_Y34_N24
\operationalunit|reg|reg~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~47_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(23))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a7\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(23),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a7\,
	combout => \operationalunit|reg|reg~47_combout\);

-- Location: LCFF_X25_Y34_N25
\operationalunit|reg|Rq_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(7));

-- Location: LCCOMB_X27_Y33_N12
\operationalunit|reg|reg_rtl_0_bypass[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[21]~feeder_combout\ = \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[21]~feeder_combout\);

-- Location: LCFF_X27_Y33_N13
\operationalunit|reg|reg_rtl_0_bypass[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(21));

-- Location: LCCOMB_X27_Y32_N20
\operationalunit|reg|reg~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~28_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(21))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(21),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a6\,
	combout => \operationalunit|reg|reg~28_combout\);

-- Location: LCFF_X27_Y32_N21
\operationalunit|reg|Rp_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(6));

-- Location: LCCOMB_X27_Y33_N6
\operationalunit|reg|reg_rtl_0_bypass[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[19]~feeder_combout\ = \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[19]~feeder_combout\);

-- Location: LCFF_X27_Y33_N7
\operationalunit|reg|reg_rtl_0_bypass[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(19));

-- Location: LCCOMB_X25_Y32_N18
\operationalunit|reg|reg~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~49_combout\ = (\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(19))) # (!\operationalunit|reg|reg~38_combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(10) & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a5\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~38_combout\,
	datab => \operationalunit|reg|reg_rtl_0_bypass\(19),
	datac => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a5\,
	datad => \operationalunit|reg|reg_rtl_0_bypass\(10),
	combout => \operationalunit|reg|reg~49_combout\);

-- Location: LCFF_X25_Y32_N19
\operationalunit|reg|Rq_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(5));

-- Location: LCCOMB_X27_Y33_N24
\operationalunit|reg|reg_rtl_0_bypass[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[17]~feeder_combout\ = \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[17]~feeder_combout\);

-- Location: LCFF_X27_Y33_N25
\operationalunit|reg|reg_rtl_0_bypass[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(17));

-- Location: LCCOMB_X25_Y32_N24
\operationalunit|reg|reg~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~50_combout\ = (\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(17))) # (!\operationalunit|reg|reg~38_combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(10) & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a4\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~38_combout\,
	datab => \operationalunit|reg|reg_rtl_0_bypass\(17),
	datac => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a4\,
	combout => \operationalunit|reg|reg~50_combout\);

-- Location: LCFF_X25_Y32_N25
\operationalunit|reg|Rq_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(4));

-- Location: LCCOMB_X25_Y32_N10
\operationalunit|reg|reg~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~51_combout\ = (\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(15))) # (!\operationalunit|reg|reg~38_combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(10) & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a3\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~38_combout\,
	datab => \operationalunit|reg|reg_rtl_0_bypass\(15),
	datac => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a3\,
	combout => \operationalunit|reg|reg~51_combout\);

-- Location: LCFF_X25_Y32_N11
\operationalunit|reg|Rq_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(3));

-- Location: LCCOMB_X25_Y34_N6
\operationalunit|reg|reg~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~52_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(13))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a2\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(13),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a2\,
	combout => \operationalunit|reg|reg~52_combout\);

-- Location: LCFF_X25_Y34_N7
\operationalunit|reg|Rq_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(2));

-- Location: LCCOMB_X25_Y34_N8
\operationalunit|reg|reg~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~53_combout\ = (\operationalunit|reg|reg~38_combout\ & (((\operationalunit|reg|reg_rtl_0_bypass\(11))))) # (!\operationalunit|reg|reg~38_combout\ & ((\operationalunit|reg|reg_rtl_0_bypass\(10) & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a1\))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~38_combout\,
	datab => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datac => \operationalunit|reg|reg_rtl_0_bypass\(11),
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a1\,
	combout => \operationalunit|reg|reg~53_combout\);

-- Location: LCFF_X25_Y34_N9
\operationalunit|reg|Rq_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(1));

-- Location: LCCOMB_X27_Y33_N20
\operationalunit|reg|reg_rtl_0_bypass[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[9]~feeder_combout\ = \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portadataout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[9]~feeder_combout\);

-- Location: LCFF_X27_Y33_N21
\operationalunit|reg|reg_rtl_0_bypass[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(9));

-- Location: LCCOMB_X25_Y32_N20
\operationalunit|reg|reg~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~54_combout\ = (\operationalunit|reg|reg_rtl_0_bypass\(10) & ((\operationalunit|reg|reg~38_combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(9))) # (!\operationalunit|reg|reg~38_combout\ & 
-- ((\operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0~portbdataout\))))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10) & (\operationalunit|reg|reg_rtl_0_bypass\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datab => \operationalunit|reg|reg_rtl_0_bypass\(9),
	datac => \operationalunit|reg|reg~38_combout\,
	datad => \operationalunit|reg|reg_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \operationalunit|reg|reg~54_combout\);

-- Location: LCFF_X25_Y32_N21
\operationalunit|reg|Rq_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|RF_Rq_rd~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rq_data\(0));

-- Location: LCCOMB_X24_Y32_N0
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

-- Location: LCCOMB_X24_Y32_N2
\operationalunit|comp0|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~3_cout\ = CARRY((\operationalunit|reg|Rp_data\(1) & (\operationalunit|reg|Rq_data\(1) & !\operationalunit|comp0|LessThan0~1_cout\)) # (!\operationalunit|reg|Rp_data\(1) & ((\operationalunit|reg|Rq_data\(1)) # 
-- (!\operationalunit|comp0|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(1),
	datab => \operationalunit|reg|Rq_data\(1),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~1_cout\,
	cout => \operationalunit|comp0|LessThan0~3_cout\);

-- Location: LCCOMB_X24_Y32_N4
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

-- Location: LCCOMB_X24_Y32_N6
\operationalunit|comp0|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~7_cout\ = CARRY((\operationalunit|reg|Rp_data\(3) & (\operationalunit|reg|Rq_data\(3) & !\operationalunit|comp0|LessThan0~5_cout\)) # (!\operationalunit|reg|Rp_data\(3) & ((\operationalunit|reg|Rq_data\(3)) # 
-- (!\operationalunit|comp0|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(3),
	datab => \operationalunit|reg|Rq_data\(3),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~5_cout\,
	cout => \operationalunit|comp0|LessThan0~7_cout\);

-- Location: LCCOMB_X24_Y32_N8
\operationalunit|comp0|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~9_cout\ = CARRY((\operationalunit|reg|Rp_data\(4) & ((!\operationalunit|comp0|LessThan0~7_cout\) # (!\operationalunit|reg|Rq_data\(4)))) # (!\operationalunit|reg|Rp_data\(4) & (!\operationalunit|reg|Rq_data\(4) & 
-- !\operationalunit|comp0|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(4),
	datab => \operationalunit|reg|Rq_data\(4),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~7_cout\,
	cout => \operationalunit|comp0|LessThan0~9_cout\);

-- Location: LCCOMB_X24_Y32_N10
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

-- Location: LCCOMB_X24_Y32_N12
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

-- Location: LCCOMB_X24_Y32_N14
\operationalunit|comp0|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~15_cout\ = CARRY((\operationalunit|reg|Rp_data\(7) & (\operationalunit|reg|Rq_data\(7) & !\operationalunit|comp0|LessThan0~13_cout\)) # (!\operationalunit|reg|Rp_data\(7) & ((\operationalunit|reg|Rq_data\(7)) # 
-- (!\operationalunit|comp0|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(7),
	datab => \operationalunit|reg|Rq_data\(7),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~13_cout\,
	cout => \operationalunit|comp0|LessThan0~15_cout\);

-- Location: LCCOMB_X24_Y32_N16
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

-- Location: LCCOMB_X24_Y32_N18
\operationalunit|comp0|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~19_cout\ = CARRY((\operationalunit|reg|Rp_data\(9) & (\operationalunit|reg|Rq_data\(9) & !\operationalunit|comp0|LessThan0~17_cout\)) # (!\operationalunit|reg|Rp_data\(9) & ((\operationalunit|reg|Rq_data\(9)) # 
-- (!\operationalunit|comp0|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(9),
	datab => \operationalunit|reg|Rq_data\(9),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~17_cout\,
	cout => \operationalunit|comp0|LessThan0~19_cout\);

-- Location: LCCOMB_X24_Y32_N20
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

-- Location: LCCOMB_X24_Y32_N22
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

-- Location: LCCOMB_X24_Y32_N24
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

-- Location: LCCOMB_X24_Y32_N26
\operationalunit|comp0|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~27_cout\ = CARRY((\operationalunit|reg|Rq_data\(13) & ((!\operationalunit|comp0|LessThan0~25_cout\) # (!\operationalunit|reg|Rp_data\(13)))) # (!\operationalunit|reg|Rq_data\(13) & (!\operationalunit|reg|Rp_data\(13) & 
-- !\operationalunit|comp0|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rq_data\(13),
	datab => \operationalunit|reg|Rp_data\(13),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~25_cout\,
	cout => \operationalunit|comp0|LessThan0~27_cout\);

-- Location: LCCOMB_X24_Y32_N28
\operationalunit|comp0|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~29_cout\ = CARRY((\operationalunit|reg|Rp_data\(14) & ((!\operationalunit|comp0|LessThan0~27_cout\) # (!\operationalunit|reg|Rq_data\(14)))) # (!\operationalunit|reg|Rp_data\(14) & (!\operationalunit|reg|Rq_data\(14) & 
-- !\operationalunit|comp0|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(14),
	datab => \operationalunit|reg|Rq_data\(14),
	datad => VCC,
	cin => \operationalunit|comp0|LessThan0~27_cout\,
	cout => \operationalunit|comp0|LessThan0~29_cout\);

-- Location: LCCOMB_X24_Y32_N30
\operationalunit|comp0|LessThan0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp0|LessThan0~30_combout\ = (\operationalunit|reg|Rp_data\(15) & ((\operationalunit|comp0|LessThan0~29_cout\) # (!\operationalunit|reg|Rq_data\(15)))) # (!\operationalunit|reg|Rp_data\(15) & (\operationalunit|comp0|LessThan0~29_cout\ & 
-- !\operationalunit|reg|Rq_data\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|Rp_data\(15),
	datad => \operationalunit|reg|Rq_data\(15),
	cin => \operationalunit|comp0|LessThan0~29_cout\,
	combout => \operationalunit|comp0|LessThan0~30_combout\);

-- Location: LCCOMB_X24_Y31_N20
\controlunit|comb|n3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n3~combout\ = LCELL((\controlunit|statereg|ff3|q~regout\ & !\controlunit|statereg|ff1|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlunit|statereg|ff3|q~regout\,
	datad => \controlunit|statereg|ff1|q~regout\,
	combout => \controlunit|comb|n3~combout\);

-- Location: LCCOMB_X24_Y31_N8
\controlunit|comb|n3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n3~3_combout\ = (!\controlunit|statereg|ff0|q~regout\ & (\controlunit|comb|n3~combout\ & ((\operationalunit|comp1|Equal0~4_combout\) # (\operationalunit|comp0|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|comp1|Equal0~4_combout\,
	datab => \controlunit|statereg|ff0|q~regout\,
	datac => \operationalunit|comp0|LessThan0~30_combout\,
	datad => \controlunit|comb|n3~combout\,
	combout => \controlunit|comb|n3~3_combout\);

-- Location: LCFF_X24_Y31_N9
\controlunit|statereg|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controlunit|comb|n3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|statereg|ff3|q~regout\);

-- Location: LCCOMB_X24_Y31_N30
\controlunit|comb|PC_clr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|PC_clr~0_combout\ = (!\controlunit|statereg|ff1|q~regout\ & (!\controlunit|statereg|ff3|q~regout\ & !\controlunit|statereg|ff0|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|statereg|ff1|q~regout\,
	datac => \controlunit|statereg|ff3|q~regout\,
	datad => \controlunit|statereg|ff0|q~regout\,
	combout => \controlunit|comb|PC_clr~0_combout\);

-- Location: LCCOMB_X24_Y31_N26
\controlunit|comb|M_s\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|M_s~combout\ = (\controlunit|statereg|ff0|q~regout\ & (\controlunit|statereg|ff1|q~regout\ & \controlunit|statereg|ff3|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff0|q~regout\,
	datab => \controlunit|statereg|ff1|q~regout\,
	datad => \controlunit|statereg|ff3|q~regout\,
	combout => \controlunit|comb|M_s~combout\);

-- Location: LCCOMB_X24_Y31_N24
\controlunit|programcounter|counter[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[1]~18_combout\ = (\controlunit|statereg|ff1|q~regout\ & ((\controlunit|statereg|ff3|q~regout\))) # (!\controlunit|statereg|ff1|q~regout\ & (\controlunit|statereg|ff0|q~regout\ & !\controlunit|statereg|ff3|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff0|q~regout\,
	datab => \controlunit|statereg|ff1|q~regout\,
	datad => \controlunit|statereg|ff3|q~regout\,
	combout => \controlunit|programcounter|counter[1]~18_combout\);

-- Location: LCFF_X23_Y31_N7
\controlunit|programcounter|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[12]~23_combout\,
	sdata => \operationalunit|reg|Rp_data\(3),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(12));

-- Location: LCCOMB_X23_Y32_N8
\readonlymemory|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux2~0_combout\ = (!\controlunit|programcounter|counter\(13) & (\controlunit|programcounter|counter\(15) & !\controlunit|programcounter|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(13),
	datab => \controlunit|programcounter|counter\(15),
	datad => \controlunit|programcounter|counter\(12),
	combout => \readonlymemory|Mux2~0_combout\);

-- Location: LCFF_X23_Y32_N9
\readonlymemory|data_output[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(8));

-- Location: LCCOMB_X24_Y31_N0
\controlunit|instructionreg|ff8|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|instructionreg|ff8|q~feeder_combout\ = \readonlymemory|data_output\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \readonlymemory|data_output\(8),
	combout => \controlunit|instructionreg|ff8|q~feeder_combout\);

-- Location: LCFF_X24_Y31_N1
\controlunit|instructionreg|ff8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|instructionreg|ff8|q~feeder_combout\,
	ena => \controlunit|comb|ALT_INV_PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff8|q~regout\);

-- Location: LCCOMB_X23_Y32_N22
\operationalunit|reg|reg~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~21_combout\ = (\controlunit|instructionreg|ff12|q~regout\ & (\operationalunit|reg|reg_rtl_0_bypass\(3) & (\operationalunit|reg|reg_rtl_0_bypass\(1) $ (!\controlunit|instructionreg|ff8|q~regout\)))) # 
-- (!\controlunit|instructionreg|ff12|q~regout\ & (!\operationalunit|reg|reg_rtl_0_bypass\(3) & (\operationalunit|reg|reg_rtl_0_bypass\(1) $ (!\controlunit|instructionreg|ff8|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|instructionreg|ff12|q~regout\,
	datab => \operationalunit|reg|reg_rtl_0_bypass\(3),
	datac => \operationalunit|reg|reg_rtl_0_bypass\(1),
	datad => \controlunit|instructionreg|ff8|q~regout\,
	combout => \operationalunit|reg|reg~21_combout\);

-- Location: LCCOMB_X25_Y33_N12
\operationalunit|reg|reg_rtl_0_bypass[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[0]~feeder_combout\ = \controlunit|comb|RF_W_wr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|comb|RF_W_wr~0_combout\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[0]~feeder_combout\);

-- Location: LCFF_X25_Y33_N13
\operationalunit|reg|reg_rtl_0_bypass[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(0));

-- Location: LCCOMB_X23_Y32_N24
\operationalunit|reg|reg\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~combout\ = ((\operationalunit|reg|reg~21_combout\ & \operationalunit|reg|reg_rtl_0_bypass\(0))) # (!\operationalunit|reg|reg_rtl_0_bypass\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(10),
	datab => \operationalunit|reg|reg~21_combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(0),
	combout => \operationalunit|reg|reg~combout\);

-- Location: LCCOMB_X27_Y32_N28
\operationalunit|reg|reg~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~24_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(13))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(13),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a2\,
	combout => \operationalunit|reg|reg~24_combout\);

-- Location: LCFF_X27_Y32_N29
\operationalunit|reg|Rp_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(2));

-- Location: LCFF_X23_Y31_N5
\controlunit|programcounter|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[13]~21_combout\,
	sdata => \operationalunit|reg|Rp_data\(2),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(13));

-- Location: LCCOMB_X23_Y32_N12
\readonlymemory|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux0~0_combout\ = (!\controlunit|programcounter|counter\(12) & (!\controlunit|programcounter|counter\(15) & (\controlunit|programcounter|counter\(14) & !\controlunit|programcounter|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datab => \controlunit|programcounter|counter\(15),
	datac => \controlunit|programcounter|counter\(14),
	datad => \controlunit|programcounter|counter\(13),
	combout => \readonlymemory|Mux0~0_combout\);

-- Location: LCFF_X23_Y32_N13
\readonlymemory|data_output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(1));

-- Location: LCFF_X24_Y31_N25
\controlunit|instructionreg|ff13|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \readonlymemory|data_output\(1),
	sload => VCC,
	ena => \controlunit|comb|ALT_INV_PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff13|q~regout\);

-- Location: LCFF_X25_Y33_N1
\randomaccessmemory|temp_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controlunit|instructionreg|ff13|q~regout\,
	sload => VCC,
	ena => \controlunit|comb|RF_W_wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randomaccessmemory|temp_address\(1));

-- Location: LCCOMB_X27_Y33_N10
\operationalunit|reg|reg_rtl_0_bypass[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[15]~feeder_combout\ = \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[15]~feeder_combout\);

-- Location: LCFF_X27_Y33_N11
\operationalunit|reg|reg_rtl_0_bypass[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(15));

-- Location: LCCOMB_X27_Y32_N26
\operationalunit|reg|reg~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~25_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(15))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(15),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a3\,
	combout => \operationalunit|reg|reg~25_combout\);

-- Location: LCFF_X27_Y32_N27
\operationalunit|reg|Rp_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(3));

-- Location: LCCOMB_X27_Y32_N24
\operationalunit|reg|reg~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~22_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(9))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(9),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \operationalunit|reg|reg~22_combout\);

-- Location: LCFF_X27_Y32_N25
\operationalunit|reg|Rp_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(0));

-- Location: LCCOMB_X27_Y32_N4
\operationalunit|comp1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp1|Equal0~3_combout\ = (!\operationalunit|reg|Rp_data\(1) & (!\operationalunit|reg|Rp_data\(3) & (!\operationalunit|reg|Rp_data\(0) & !\operationalunit|reg|Rp_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(1),
	datab => \operationalunit|reg|Rp_data\(3),
	datac => \operationalunit|reg|Rp_data\(0),
	datad => \operationalunit|reg|Rp_data\(2),
	combout => \operationalunit|comp1|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y32_N0
\operationalunit|reg|reg~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~26_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(17))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(17),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a4\,
	combout => \operationalunit|reg|reg~26_combout\);

-- Location: LCFF_X27_Y32_N1
\operationalunit|reg|Rp_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(4));

-- Location: LCCOMB_X27_Y33_N18
\operationalunit|reg|reg_rtl_0_bypass[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[23]~feeder_combout\ = \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[23]~feeder_combout\);

-- Location: LCFF_X27_Y33_N19
\operationalunit|reg|reg_rtl_0_bypass[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(23));

-- Location: LCCOMB_X27_Y32_N14
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

-- Location: LCFF_X27_Y32_N15
\operationalunit|reg|Rp_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(7));

-- Location: LCCOMB_X27_Y32_N18
\operationalunit|reg|reg~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~27_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(19))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(19),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a5\,
	combout => \operationalunit|reg|reg~27_combout\);

-- Location: LCFF_X27_Y32_N19
\operationalunit|reg|Rp_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(5));

-- Location: LCCOMB_X27_Y32_N10
\operationalunit|comp1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp1|Equal0~2_combout\ = (!\operationalunit|reg|Rp_data\(6) & (!\operationalunit|reg|Rp_data\(4) & (!\operationalunit|reg|Rp_data\(7) & !\operationalunit|reg|Rp_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(6),
	datab => \operationalunit|reg|Rp_data\(4),
	datac => \operationalunit|reg|Rp_data\(7),
	datad => \operationalunit|reg|Rp_data\(5),
	combout => \operationalunit|comp1|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y32_N16
\operationalunit|reg|reg~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~34_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(33))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(33),
	datac => \operationalunit|reg|reg~combout\,
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a12\,
	combout => \operationalunit|reg|reg~34_combout\);

-- Location: LCFF_X27_Y32_N17
\operationalunit|reg|Rp_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(12));

-- Location: LCCOMB_X27_Y32_N8
\operationalunit|comp1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp1|Equal0~0_combout\ = (!\operationalunit|reg|Rp_data\(14) & (!\operationalunit|reg|Rp_data\(13) & (!\operationalunit|reg|Rp_data\(12) & !\operationalunit|reg|Rp_data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|Rp_data\(14),
	datab => \operationalunit|reg|Rp_data\(13),
	datac => \operationalunit|reg|Rp_data\(12),
	datad => \operationalunit|reg|Rp_data\(15),
	combout => \operationalunit|comp1|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y32_N28
\operationalunit|comp1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|comp1|Equal0~4_combout\ = (\operationalunit|comp1|Equal0~1_combout\ & (\operationalunit|comp1|Equal0~3_combout\ & (\operationalunit|comp1|Equal0~2_combout\ & \operationalunit|comp1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|comp1|Equal0~1_combout\,
	datab => \operationalunit|comp1|Equal0~3_combout\,
	datac => \operationalunit|comp1|Equal0~2_combout\,
	datad => \operationalunit|comp1|Equal0~0_combout\,
	combout => \operationalunit|comp1|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y31_N12
\controlunit|comb|n0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n0~1_combout\ = (\controlunit|comb|n3~combout\ & !\controlunit|statereg|ff0|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|n3~combout\,
	datad => \controlunit|statereg|ff0|q~regout\,
	combout => \controlunit|comb|n0~1_combout\);

-- Location: LCCOMB_X23_Y32_N2
\controlunit|comb|n1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n1~1_combout\ = (\controlunit|comb|n1~0_combout\) # ((\controlunit|comb|n0~1_combout\ & ((\operationalunit|comp1|Equal0~4_combout\) # (\operationalunit|comp0|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|n1~0_combout\,
	datab => \operationalunit|comp1|Equal0~4_combout\,
	datac => \controlunit|comb|n0~1_combout\,
	datad => \operationalunit|comp0|LessThan0~30_combout\,
	combout => \controlunit|comb|n1~1_combout\);

-- Location: LCFF_X23_Y32_N3
\controlunit|statereg|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|comb|n1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|statereg|ff1|q~regout\);

-- Location: LCCOMB_X23_Y32_N18
\controlunit|comb|n0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n0~0_combout\ = (\controlunit|instructionreg|ff12|q~regout\ & (\controlunit|instructionreg|ff13|q~regout\ & (!\controlunit|statereg|ff0|q~regout\ & \controlunit|statereg|ff1|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|instructionreg|ff12|q~regout\,
	datab => \controlunit|instructionreg|ff13|q~regout\,
	datac => \controlunit|statereg|ff0|q~regout\,
	datad => \controlunit|statereg|ff1|q~regout\,
	combout => \controlunit|comb|n0~0_combout\);

-- Location: LCCOMB_X24_Y31_N22
\controlunit|comb|n0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n0~3_combout\ = (!\controlunit|statereg|ff3|q~regout\ & ((\controlunit|comb|n0~0_combout\) # (\controlunit|statereg|ff0|q~regout\ $ (!\controlunit|statereg|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff0|q~regout\,
	datab => \controlunit|statereg|ff1|q~regout\,
	datac => \controlunit|statereg|ff3|q~regout\,
	datad => \controlunit|comb|n0~0_combout\,
	combout => \controlunit|comb|n0~3_combout\);

-- Location: LCCOMB_X24_Y31_N10
\controlunit|comb|n0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n0~2_combout\ = (\controlunit|statereg|ff0|q~regout\ & ((\controlunit|comb|n3~combout\) # ((\controlunit|statereg|ff3|q~regout\ & \controlunit|statereg|ff1|q~regout\)))) # (!\controlunit|statereg|ff0|q~regout\ & 
-- (((\controlunit|statereg|ff3|q~regout\ & \controlunit|statereg|ff1|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff0|q~regout\,
	datab => \controlunit|comb|n3~combout\,
	datac => \controlunit|statereg|ff3|q~regout\,
	datad => \controlunit|statereg|ff1|q~regout\,
	combout => \controlunit|comb|n0~2_combout\);

-- Location: LCCOMB_X24_Y31_N2
\controlunit|comb|n0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|n0~4_combout\ = (\controlunit|comb|n0~3_combout\) # ((\controlunit|comb|n0~2_combout\) # ((\controlunit|comb|n0~1_combout\ & \operationalunit|comp1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|comb|n0~1_combout\,
	datab => \controlunit|comb|n0~3_combout\,
	datac => \operationalunit|comp1|Equal0~4_combout\,
	datad => \controlunit|comb|n0~2_combout\,
	combout => \controlunit|comb|n0~4_combout\);

-- Location: LCFF_X24_Y31_N3
\controlunit|statereg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \controlunit|comb|n0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|statereg|ff0|q~regout\);

-- Location: LCCOMB_X25_Y33_N0
\controlunit|comb|RF_W_wr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|comb|RF_W_wr~0_combout\ = (!\controlunit|statereg|ff3|q~regout\ & (\controlunit|statereg|ff0|q~regout\ & \controlunit|statereg|ff1|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|statereg|ff3|q~regout\,
	datab => \controlunit|statereg|ff0|q~regout\,
	datad => \controlunit|statereg|ff1|q~regout\,
	combout => \controlunit|comb|RF_W_wr~0_combout\);

-- Location: LCFF_X25_Y33_N7
\randomaccessmemory|temp_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \randomaccessmemory|temp_address[0]~feeder_combout\,
	ena => \controlunit|comb|RF_W_wr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \randomaccessmemory|temp_address\(0));

-- Location: LCCOMB_X27_Y33_N26
\operationalunit|reg|reg_rtl_0_bypass[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg_rtl_0_bypass[11]~feeder_combout\ = \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \operationalunit|reg|reg_rtl_0_bypass[11]~feeder_combout\);

-- Location: LCFF_X27_Y33_N27
\operationalunit|reg|reg_rtl_0_bypass[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \operationalunit|reg|reg_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|reg_rtl_0_bypass\(11));

-- Location: LCCOMB_X27_Y32_N6
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

-- Location: LCFF_X27_Y32_N7
\operationalunit|reg|Rp_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(1));

-- Location: LCFF_X23_Y31_N3
\controlunit|programcounter|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[14]~19_combout\,
	sdata => \operationalunit|reg|Rp_data\(1),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(14));

-- Location: LCCOMB_X23_Y32_N26
\readonlymemory|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readonlymemory|Mux3~0_combout\ = (!\controlunit|programcounter|counter\(12) & (!\controlunit|programcounter|counter\(13) & (\controlunit|programcounter|counter\(15) $ (\controlunit|programcounter|counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(12),
	datab => \controlunit|programcounter|counter\(15),
	datac => \controlunit|programcounter|counter\(14),
	datad => \controlunit|programcounter|counter\(13),
	combout => \readonlymemory|Mux3~0_combout\);

-- Location: LCFF_X23_Y32_N27
\readonlymemory|data_output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \readonlymemory|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \readonlymemory|data_output\(0));

-- Location: LCFF_X24_Y31_N27
\controlunit|instructionreg|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \readonlymemory|data_output\(0),
	sload => VCC,
	ena => \controlunit|comb|ALT_INV_PC_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|instructionreg|ff0|q~regout\);

-- Location: LCCOMB_X24_Y31_N28
\controlunit|add|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~0_combout\ = (\controlunit|instructionreg|ff0|q~regout\) # ((!\controlunit|statereg|ff1|q~regout\) # (!\controlunit|statereg|ff3|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|instructionreg|ff0|q~regout\,
	datac => \controlunit|statereg|ff3|q~regout\,
	datad => \controlunit|statereg|ff1|q~regout\,
	combout => \controlunit|add|Add0~0_combout\);

-- Location: LCFF_X23_Y31_N1
\controlunit|programcounter|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[15]~16_combout\,
	sdata => \operationalunit|reg|Rp_data\(0),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(15));

-- Location: LCCOMB_X23_Y31_N8
\controlunit|programcounter|counter[11]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[11]~25_combout\ = ((\controlunit|add|Add0~1_combout\ $ (\controlunit|programcounter|counter\(11) $ (!\controlunit|programcounter|counter[12]~24\)))) # (GND)
-- \controlunit|programcounter|counter[11]~26\ = CARRY((\controlunit|add|Add0~1_combout\ & ((\controlunit|programcounter|counter\(11)) # (!\controlunit|programcounter|counter[12]~24\))) # (!\controlunit|add|Add0~1_combout\ & 
-- (\controlunit|programcounter|counter\(11) & !\controlunit|programcounter|counter[12]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|add|Add0~1_combout\,
	datab => \controlunit|programcounter|counter\(11),
	datad => VCC,
	cin => \controlunit|programcounter|counter[12]~24\,
	combout => \controlunit|programcounter|counter[11]~25_combout\,
	cout => \controlunit|programcounter|counter[11]~26\);

-- Location: LCFF_X23_Y31_N9
\controlunit|programcounter|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[11]~25_combout\,
	sdata => \operationalunit|reg|Rp_data\(4),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(11));

-- Location: LCCOMB_X23_Y31_N10
\controlunit|programcounter|counter[10]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[10]~27_combout\ = (\controlunit|programcounter|counter\(10) & (!\controlunit|programcounter|counter[11]~26\)) # (!\controlunit|programcounter|counter\(10) & ((\controlunit|programcounter|counter[11]~26\) # (GND)))
-- \controlunit|programcounter|counter[10]~28\ = CARRY((!\controlunit|programcounter|counter[11]~26\) # (!\controlunit|programcounter|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(10),
	datad => VCC,
	cin => \controlunit|programcounter|counter[11]~26\,
	combout => \controlunit|programcounter|counter[10]~27_combout\,
	cout => \controlunit|programcounter|counter[10]~28\);

-- Location: LCFF_X23_Y31_N11
\controlunit|programcounter|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[10]~27_combout\,
	sdata => \operationalunit|reg|Rp_data\(5),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(10));

-- Location: LCCOMB_X23_Y31_N12
\controlunit|programcounter|counter[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[9]~29_combout\ = (\controlunit|programcounter|counter\(9) & (\controlunit|programcounter|counter[10]~28\ $ (GND))) # (!\controlunit|programcounter|counter\(9) & (!\controlunit|programcounter|counter[10]~28\ & VCC))
-- \controlunit|programcounter|counter[9]~30\ = CARRY((\controlunit|programcounter|counter\(9) & !\controlunit|programcounter|counter[10]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(9),
	datad => VCC,
	cin => \controlunit|programcounter|counter[10]~28\,
	combout => \controlunit|programcounter|counter[9]~29_combout\,
	cout => \controlunit|programcounter|counter[9]~30\);

-- Location: LCFF_X23_Y31_N13
\controlunit|programcounter|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[9]~29_combout\,
	sdata => \operationalunit|reg|Rp_data\(6),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(9));

-- Location: LCCOMB_X23_Y31_N14
\controlunit|programcounter|counter[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[8]~31_combout\ = (\controlunit|programcounter|counter\(8) & (!\controlunit|programcounter|counter[9]~30\)) # (!\controlunit|programcounter|counter\(8) & ((\controlunit|programcounter|counter[9]~30\) # (GND)))
-- \controlunit|programcounter|counter[8]~32\ = CARRY((!\controlunit|programcounter|counter[9]~30\) # (!\controlunit|programcounter|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(8),
	datad => VCC,
	cin => \controlunit|programcounter|counter[9]~30\,
	combout => \controlunit|programcounter|counter[8]~31_combout\,
	cout => \controlunit|programcounter|counter[8]~32\);

-- Location: LCFF_X23_Y31_N15
\controlunit|programcounter|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[8]~31_combout\,
	sdata => \operationalunit|reg|Rp_data\(7),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(8));

-- Location: LCCOMB_X24_Y31_N18
\controlunit|add|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|add|Add0~2_combout\ = (\controlunit|instructionreg|ff8|q~regout\ & (\controlunit|statereg|ff3|q~regout\ & \controlunit|statereg|ff1|q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|instructionreg|ff8|q~regout\,
	datac => \controlunit|statereg|ff3|q~regout\,
	datad => \controlunit|statereg|ff1|q~regout\,
	combout => \controlunit|add|Add0~2_combout\);

-- Location: LCCOMB_X23_Y31_N16
\controlunit|programcounter|counter[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[7]~33_combout\ = ((\controlunit|programcounter|counter\(7) $ (\controlunit|add|Add0~2_combout\ $ (!\controlunit|programcounter|counter[8]~32\)))) # (GND)
-- \controlunit|programcounter|counter[7]~34\ = CARRY((\controlunit|programcounter|counter\(7) & ((\controlunit|add|Add0~2_combout\) # (!\controlunit|programcounter|counter[8]~32\))) # (!\controlunit|programcounter|counter\(7) & 
-- (\controlunit|add|Add0~2_combout\ & !\controlunit|programcounter|counter[8]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(7),
	datab => \controlunit|add|Add0~2_combout\,
	datad => VCC,
	cin => \controlunit|programcounter|counter[8]~32\,
	combout => \controlunit|programcounter|counter[7]~33_combout\,
	cout => \controlunit|programcounter|counter[7]~34\);

-- Location: LCFF_X23_Y31_N17
\controlunit|programcounter|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[7]~33_combout\,
	sdata => \operationalunit|reg|Rp_data\(8),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(7));

-- Location: LCCOMB_X23_Y31_N18
\controlunit|programcounter|counter[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[6]~35_combout\ = (\controlunit|add|Add0~3_combout\ & ((\controlunit|programcounter|counter\(6) & (\controlunit|programcounter|counter[7]~34\ & VCC)) # (!\controlunit|programcounter|counter\(6) & 
-- (!\controlunit|programcounter|counter[7]~34\)))) # (!\controlunit|add|Add0~3_combout\ & ((\controlunit|programcounter|counter\(6) & (!\controlunit|programcounter|counter[7]~34\)) # (!\controlunit|programcounter|counter\(6) & 
-- ((\controlunit|programcounter|counter[7]~34\) # (GND)))))
-- \controlunit|programcounter|counter[6]~36\ = CARRY((\controlunit|add|Add0~3_combout\ & (!\controlunit|programcounter|counter\(6) & !\controlunit|programcounter|counter[7]~34\)) # (!\controlunit|add|Add0~3_combout\ & 
-- ((!\controlunit|programcounter|counter[7]~34\) # (!\controlunit|programcounter|counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|add|Add0~3_combout\,
	datab => \controlunit|programcounter|counter\(6),
	datad => VCC,
	cin => \controlunit|programcounter|counter[7]~34\,
	combout => \controlunit|programcounter|counter[6]~35_combout\,
	cout => \controlunit|programcounter|counter[6]~36\);

-- Location: LCCOMB_X25_Y32_N14
\operationalunit|reg|reg~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~31_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(27))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg_rtl_0_bypass\(27),
	datac => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a9\,
	datad => \operationalunit|reg|reg~combout\,
	combout => \operationalunit|reg|reg~31_combout\);

-- Location: LCFF_X25_Y32_N15
\operationalunit|reg|Rp_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(9));

-- Location: LCFF_X23_Y31_N19
\controlunit|programcounter|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[6]~35_combout\,
	sdata => \operationalunit|reg|Rp_data\(9),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(6));

-- Location: LCCOMB_X23_Y31_N20
\controlunit|programcounter|counter[5]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[5]~37_combout\ = (\controlunit|programcounter|counter\(5) & (\controlunit|programcounter|counter[6]~36\ $ (GND))) # (!\controlunit|programcounter|counter\(5) & (!\controlunit|programcounter|counter[6]~36\ & VCC))
-- \controlunit|programcounter|counter[5]~38\ = CARRY((\controlunit|programcounter|counter\(5) & !\controlunit|programcounter|counter[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|programcounter|counter\(5),
	datad => VCC,
	cin => \controlunit|programcounter|counter[6]~36\,
	combout => \controlunit|programcounter|counter[5]~37_combout\,
	cout => \controlunit|programcounter|counter[5]~38\);

-- Location: LCFF_X23_Y31_N21
\controlunit|programcounter|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[5]~37_combout\,
	sdata => \operationalunit|reg|Rp_data\(10),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(5));

-- Location: LCCOMB_X23_Y31_N22
\controlunit|programcounter|counter[4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[4]~39_combout\ = (\controlunit|programcounter|counter\(4) & (!\controlunit|programcounter|counter[5]~38\)) # (!\controlunit|programcounter|counter\(4) & ((\controlunit|programcounter|counter[5]~38\) # (GND)))
-- \controlunit|programcounter|counter[4]~40\ = CARRY((!\controlunit|programcounter|counter[5]~38\) # (!\controlunit|programcounter|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(4),
	datad => VCC,
	cin => \controlunit|programcounter|counter[5]~38\,
	combout => \controlunit|programcounter|counter[4]~39_combout\,
	cout => \controlunit|programcounter|counter[4]~40\);

-- Location: LCCOMB_X25_Y32_N2
\operationalunit|reg|reg~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~33_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(31))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operationalunit|reg|reg~combout\,
	datac => \operationalunit|reg|reg_rtl_0_bypass\(31),
	datad => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a11\,
	combout => \operationalunit|reg|reg~33_combout\);

-- Location: LCFF_X25_Y32_N3
\operationalunit|reg|Rp_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(11));

-- Location: LCFF_X23_Y31_N23
\controlunit|programcounter|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[4]~39_combout\,
	sdata => \operationalunit|reg|Rp_data\(11),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(4));

-- Location: LCCOMB_X23_Y31_N24
\controlunit|programcounter|counter[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[3]~41_combout\ = ((\controlunit|add|Add0~3_combout\ $ (\controlunit|programcounter|counter\(3) $ (!\controlunit|programcounter|counter[4]~40\)))) # (GND)
-- \controlunit|programcounter|counter[3]~42\ = CARRY((\controlunit|add|Add0~3_combout\ & ((\controlunit|programcounter|counter\(3)) # (!\controlunit|programcounter|counter[4]~40\))) # (!\controlunit|add|Add0~3_combout\ & 
-- (\controlunit|programcounter|counter\(3) & !\controlunit|programcounter|counter[4]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|add|Add0~3_combout\,
	datab => \controlunit|programcounter|counter\(3),
	datad => VCC,
	cin => \controlunit|programcounter|counter[4]~40\,
	combout => \controlunit|programcounter|counter[3]~41_combout\,
	cout => \controlunit|programcounter|counter[3]~42\);

-- Location: LCFF_X23_Y31_N25
\controlunit|programcounter|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[3]~41_combout\,
	sdata => \operationalunit|reg|Rp_data\(12),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(3));

-- Location: LCCOMB_X23_Y31_N26
\controlunit|programcounter|counter[2]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[2]~43_combout\ = (\controlunit|add|Add0~1_combout\ & ((\controlunit|programcounter|counter\(2) & (\controlunit|programcounter|counter[3]~42\ & VCC)) # (!\controlunit|programcounter|counter\(2) & 
-- (!\controlunit|programcounter|counter[3]~42\)))) # (!\controlunit|add|Add0~1_combout\ & ((\controlunit|programcounter|counter\(2) & (!\controlunit|programcounter|counter[3]~42\)) # (!\controlunit|programcounter|counter\(2) & 
-- ((\controlunit|programcounter|counter[3]~42\) # (GND)))))
-- \controlunit|programcounter|counter[2]~44\ = CARRY((\controlunit|add|Add0~1_combout\ & (!\controlunit|programcounter|counter\(2) & !\controlunit|programcounter|counter[3]~42\)) # (!\controlunit|add|Add0~1_combout\ & 
-- ((!\controlunit|programcounter|counter[3]~42\) # (!\controlunit|programcounter|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlunit|add|Add0~1_combout\,
	datab => \controlunit|programcounter|counter\(2),
	datad => VCC,
	cin => \controlunit|programcounter|counter[3]~42\,
	combout => \controlunit|programcounter|counter[2]~43_combout\,
	cout => \controlunit|programcounter|counter[2]~44\);

-- Location: LCFF_X23_Y31_N27
\controlunit|programcounter|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[2]~43_combout\,
	sdata => \operationalunit|reg|Rp_data\(13),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(2));

-- Location: LCCOMB_X23_Y31_N28
\controlunit|programcounter|counter[1]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[1]~45_combout\ = (\controlunit|programcounter|counter\(1) & (\controlunit|programcounter|counter[2]~44\ $ (GND))) # (!\controlunit|programcounter|counter\(1) & (!\controlunit|programcounter|counter[2]~44\ & VCC))
-- \controlunit|programcounter|counter[1]~46\ = CARRY((\controlunit|programcounter|counter\(1) & !\controlunit|programcounter|counter[2]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlunit|programcounter|counter\(1),
	datad => VCC,
	cin => \controlunit|programcounter|counter[2]~44\,
	combout => \controlunit|programcounter|counter[1]~45_combout\,
	cout => \controlunit|programcounter|counter[1]~46\);

-- Location: LCCOMB_X27_Y32_N12
\operationalunit|reg|reg~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \operationalunit|reg|reg~36_combout\ = (\operationalunit|reg|reg~combout\ & (\operationalunit|reg|reg_rtl_0_bypass\(37))) # (!\operationalunit|reg|reg~combout\ & ((\operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operationalunit|reg|reg_rtl_0_bypass\(37),
	datac => \operationalunit|reg|reg_rtl_0|auto_generated|ram_block1a14\,
	datad => \operationalunit|reg|reg~combout\,
	combout => \operationalunit|reg|reg~36_combout\);

-- Location: LCFF_X27_Y32_N13
\operationalunit|reg|Rp_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controlunit|comb|n3~clkctrl_outclk\,
	datain => \operationalunit|reg|reg~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \operationalunit|reg|Rp_data\(14));

-- Location: LCFF_X23_Y31_N29
\controlunit|programcounter|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[1]~45_combout\,
	sdata => \operationalunit|reg|Rp_data\(14),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(1));

-- Location: LCCOMB_X23_Y31_N30
\controlunit|programcounter|counter[0]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \controlunit|programcounter|counter[0]~47_combout\ = \controlunit|programcounter|counter[1]~46\ $ (\controlunit|programcounter|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controlunit|programcounter|counter\(0),
	cin => \controlunit|programcounter|counter[1]~46\,
	combout => \controlunit|programcounter|counter[0]~47_combout\);

-- Location: LCFF_X23_Y31_N31
\controlunit|programcounter|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controlunit|programcounter|counter[0]~47_combout\,
	sdata => \operationalunit|reg|Rp_data\(15),
	aclr => \controlunit|comb|PC_clr~0_combout\,
	sload => \controlunit|comb|M_s~combout\,
	ena => \controlunit|programcounter|counter[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlunit|programcounter|counter\(0));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \readonlymemory|data_output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(4));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \readonlymemory|data_output\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(8));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \readonlymemory|data_output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_data(13));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \randomaccessmemory|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D_R_data(0));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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



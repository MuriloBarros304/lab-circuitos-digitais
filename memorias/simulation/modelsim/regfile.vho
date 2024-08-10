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

-- DATE "08/10/2024 13:39:08"

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

ENTITY 	regfile IS
    PORT (
	clk : IN std_logic;
	W_data : IN std_logic_vector(7 DOWNTO 0);
	W_addr : IN std_logic_vector(1 DOWNTO 0);
	W_en : IN std_logic;
	R_addr : IN std_logic_vector(1 DOWNTO 0);
	R_en : IN std_logic;
	R_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END regfile;

-- Design Ports Information
-- R_en	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R_data[0]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[1]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[2]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[3]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[4]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[5]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[6]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[7]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_addr[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R_addr[0]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[0]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_addr[0]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_en	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_addr[1]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[1]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[2]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[3]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[4]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[5]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[6]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[7]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF regfile IS
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
SIGNAL ww_W_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_W_addr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_W_en : std_logic;
SIGNAL ww_R_addr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_R_en : std_logic;
SIGNAL ww_R_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \W_en~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \reg0|ff0|q~regout\ : std_logic;
SIGNAL \deco0|D~0_combout\ : std_logic;
SIGNAL \reg1|ff0|q~regout\ : std_logic;
SIGNAL \deco0|D~1_combout\ : std_logic;
SIGNAL \reg2|ff0|q~regout\ : std_logic;
SIGNAL \reg3|ff0|q~feeder_combout\ : std_logic;
SIGNAL \deco0|D~2_combout\ : std_logic;
SIGNAL \reg3|ff0|q~regout\ : std_logic;
SIGNAL \mux0|Mux7~0_combout\ : std_logic;
SIGNAL \mux0|Mux7~1_combout\ : std_logic;
SIGNAL \reg0|ff1|q~feeder_combout\ : std_logic;
SIGNAL \reg0|ff1|q~regout\ : std_logic;
SIGNAL \reg2|ff1|q~regout\ : std_logic;
SIGNAL \reg3|ff1|q~regout\ : std_logic;
SIGNAL \reg1|ff1|q~regout\ : std_logic;
SIGNAL \mux0|Mux6~0_combout\ : std_logic;
SIGNAL \mux0|Mux6~1_combout\ : std_logic;
SIGNAL \reg2|ff2|q~regout\ : std_logic;
SIGNAL \reg3|ff2|q~regout\ : std_logic;
SIGNAL \mux0|Mux5~0_combout\ : std_logic;
SIGNAL \reg1|ff2|q~regout\ : std_logic;
SIGNAL \reg0|ff2|q~feeder_combout\ : std_logic;
SIGNAL \reg0|ff2|q~regout\ : std_logic;
SIGNAL \mux0|Mux5~1_combout\ : std_logic;
SIGNAL \reg0|ff3|q~feeder_combout\ : std_logic;
SIGNAL \reg0|ff3|q~regout\ : std_logic;
SIGNAL \reg2|ff3|q~regout\ : std_logic;
SIGNAL \reg3|ff3|q~regout\ : std_logic;
SIGNAL \reg1|ff3|q~regout\ : std_logic;
SIGNAL \mux0|Mux4~0_combout\ : std_logic;
SIGNAL \mux0|Mux4~1_combout\ : std_logic;
SIGNAL \reg2|ff4|q~regout\ : std_logic;
SIGNAL \reg3|ff4|q~feeder_combout\ : std_logic;
SIGNAL \reg3|ff4|q~regout\ : std_logic;
SIGNAL \mux0|Mux3~0_combout\ : std_logic;
SIGNAL \reg1|ff4|q~regout\ : std_logic;
SIGNAL \reg0|ff4|q~regout\ : std_logic;
SIGNAL \mux0|Mux3~1_combout\ : std_logic;
SIGNAL \reg0|ff5|q~regout\ : std_logic;
SIGNAL \reg2|ff5|q~regout\ : std_logic;
SIGNAL \reg3|ff5|q~regout\ : std_logic;
SIGNAL \reg1|ff5|q~regout\ : std_logic;
SIGNAL \mux0|Mux2~0_combout\ : std_logic;
SIGNAL \mux0|Mux2~1_combout\ : std_logic;
SIGNAL \reg0|ff6|q~regout\ : std_logic;
SIGNAL \reg1|ff6|q~regout\ : std_logic;
SIGNAL \reg2|ff6|q~regout\ : std_logic;
SIGNAL \reg3|ff6|q~feeder_combout\ : std_logic;
SIGNAL \reg3|ff6|q~regout\ : std_logic;
SIGNAL \mux0|Mux1~0_combout\ : std_logic;
SIGNAL \mux0|Mux1~1_combout\ : std_logic;
SIGNAL \reg3|ff7|q~regout\ : std_logic;
SIGNAL \reg1|ff7|q~regout\ : std_logic;
SIGNAL \mux0|Mux0~0_combout\ : std_logic;
SIGNAL \reg2|ff7|q~regout\ : std_logic;
SIGNAL \reg0|ff7|q~regout\ : std_logic;
SIGNAL \mux0|Mux0~1_combout\ : std_logic;
SIGNAL \deco0|D\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \W_data~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R_addr~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \W_addr~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_W_data <= W_data;
ww_W_addr <= W_addr;
ww_W_en <= W_en;
ww_R_addr <= R_addr;
ww_R_en <= R_en;
R_data <= ww_R_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

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

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\W_en~I\ : cycloneii_io
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
	padio => ww_W_en,
	combout => \W_en~combout\);

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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R_addr[1]~I\ : cycloneii_io
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
	padio => ww_R_addr(1),
	combout => \R_addr~combout\(1));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\W_data[0]~I\ : cycloneii_io
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
	padio => ww_W_data(0),
	combout => \W_data~combout\(0));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\W_addr[0]~I\ : cycloneii_io
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
	padio => ww_W_addr(0),
	combout => \W_addr~combout\(0));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\W_addr[1]~I\ : cycloneii_io
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
	padio => ww_W_addr(1),
	combout => \W_addr~combout\(1));

-- Location: LCCOMB_X64_Y24_N6
\deco0|D[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco0|D\(0) = (\W_en~combout\ & (!\W_addr~combout\(0) & !\W_addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_en~combout\,
	datac => \W_addr~combout\(0),
	datad => \W_addr~combout\(1),
	combout => \deco0|D\(0));

-- Location: LCFF_X64_Y27_N3
\reg0|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(0),
	sload => VCC,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff0|q~regout\);

-- Location: LCCOMB_X64_Y24_N0
\deco0|D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco0|D~0_combout\ = (\W_en~combout\ & (\W_addr~combout\(0) & !\W_addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_en~combout\,
	datac => \W_addr~combout\(0),
	datad => \W_addr~combout\(1),
	combout => \deco0|D~0_combout\);

-- Location: LCFF_X64_Y27_N1
\reg1|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(0),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff0|q~regout\);

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R_addr[0]~I\ : cycloneii_io
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
	padio => ww_R_addr(0),
	combout => \R_addr~combout\(0));

-- Location: LCCOMB_X64_Y24_N2
\deco0|D~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco0|D~1_combout\ = (\W_en~combout\ & (!\W_addr~combout\(0) & \W_addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_en~combout\,
	datac => \W_addr~combout\(0),
	datad => \W_addr~combout\(1),
	combout => \deco0|D~1_combout\);

-- Location: LCFF_X64_Y26_N9
\reg2|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(0),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff0|q~regout\);

-- Location: LCCOMB_X64_Y26_N26
\reg3|ff0|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg3|ff0|q~feeder_combout\ = \W_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \W_data~combout\(0),
	combout => \reg3|ff0|q~feeder_combout\);

-- Location: LCCOMB_X64_Y24_N4
\deco0|D~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco0|D~2_combout\ = (\W_en~combout\ & (\W_addr~combout\(0) & \W_addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_en~combout\,
	datac => \W_addr~combout\(0),
	datad => \W_addr~combout\(1),
	combout => \deco0|D~2_combout\);

-- Location: LCFF_X64_Y26_N27
\reg3|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg3|ff0|q~feeder_combout\,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff0|q~regout\);

-- Location: LCCOMB_X64_Y26_N8
\mux0|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux7~0_combout\ = (\R_addr~combout\(1) & (\R_addr~combout\(0))) # (!\R_addr~combout\(1) & ((\R_addr~combout\(0) & (\reg2|ff0|q~regout\)) # (!\R_addr~combout\(0) & ((\reg3|ff0|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \R_addr~combout\(0),
	datac => \reg2|ff0|q~regout\,
	datad => \reg3|ff0|q~regout\,
	combout => \mux0|Mux7~0_combout\);

-- Location: LCCOMB_X64_Y27_N0
\mux0|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux7~1_combout\ = (\R_addr~combout\(1) & ((\mux0|Mux7~0_combout\ & (\reg0|ff0|q~regout\)) # (!\mux0|Mux7~0_combout\ & ((\reg1|ff0|q~regout\))))) # (!\R_addr~combout\(1) & (((\mux0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \reg0|ff0|q~regout\,
	datac => \reg1|ff0|q~regout\,
	datad => \mux0|Mux7~0_combout\,
	combout => \mux0|Mux7~1_combout\);

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\W_data[1]~I\ : cycloneii_io
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
	padio => ww_W_data(1),
	combout => \W_data~combout\(1));

-- Location: LCCOMB_X64_Y27_N14
\reg0|ff1|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg0|ff1|q~feeder_combout\ = \W_data~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \W_data~combout\(1),
	combout => \reg0|ff1|q~feeder_combout\);

-- Location: LCFF_X64_Y27_N15
\reg0|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg0|ff1|q~feeder_combout\,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff1|q~regout\);

-- Location: LCFF_X64_Y26_N21
\reg2|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(1),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff1|q~regout\);

-- Location: LCFF_X64_Y26_N7
\reg3|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(1),
	sload => VCC,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff1|q~regout\);

-- Location: LCFF_X64_Y27_N13
\reg1|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(1),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff1|q~regout\);

-- Location: LCCOMB_X64_Y27_N12
\mux0|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux6~0_combout\ = (\R_addr~combout\(1) & (((\reg1|ff1|q~regout\) # (\R_addr~combout\(0))))) # (!\R_addr~combout\(1) & (\reg3|ff1|q~regout\ & ((!\R_addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \reg3|ff1|q~regout\,
	datac => \reg1|ff1|q~regout\,
	datad => \R_addr~combout\(0),
	combout => \mux0|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y26_N20
\mux0|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux6~1_combout\ = (\R_addr~combout\(0) & ((\mux0|Mux6~0_combout\ & (\reg0|ff1|q~regout\)) # (!\mux0|Mux6~0_combout\ & ((\reg2|ff1|q~regout\))))) # (!\R_addr~combout\(0) & (((\mux0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|ff1|q~regout\,
	datab => \R_addr~combout\(0),
	datac => \reg2|ff1|q~regout\,
	datad => \mux0|Mux6~0_combout\,
	combout => \mux0|Mux6~1_combout\);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\W_data[2]~I\ : cycloneii_io
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
	padio => ww_W_data(2),
	combout => \W_data~combout\(2));

-- Location: LCFF_X64_Y26_N1
\reg2|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(2),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff2|q~regout\);

-- Location: LCFF_X64_Y26_N19
\reg3|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(2),
	sload => VCC,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff2|q~regout\);

-- Location: LCCOMB_X64_Y26_N0
\mux0|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux5~0_combout\ = (\R_addr~combout\(1) & (\R_addr~combout\(0))) # (!\R_addr~combout\(1) & ((\R_addr~combout\(0) & (\reg2|ff2|q~regout\)) # (!\R_addr~combout\(0) & ((\reg3|ff2|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \R_addr~combout\(0),
	datac => \reg2|ff2|q~regout\,
	datad => \reg3|ff2|q~regout\,
	combout => \mux0|Mux5~0_combout\);

-- Location: LCFF_X64_Y27_N25
\reg1|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(2),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff2|q~regout\);

-- Location: LCCOMB_X64_Y27_N18
\reg0|ff2|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg0|ff2|q~feeder_combout\ = \W_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \W_data~combout\(2),
	combout => \reg0|ff2|q~feeder_combout\);

-- Location: LCFF_X64_Y27_N19
\reg0|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg0|ff2|q~feeder_combout\,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff2|q~regout\);

-- Location: LCCOMB_X64_Y27_N24
\mux0|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux5~1_combout\ = (\R_addr~combout\(1) & ((\mux0|Mux5~0_combout\ & ((\reg0|ff2|q~regout\))) # (!\mux0|Mux5~0_combout\ & (\reg1|ff2|q~regout\)))) # (!\R_addr~combout\(1) & (\mux0|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \mux0|Mux5~0_combout\,
	datac => \reg1|ff2|q~regout\,
	datad => \reg0|ff2|q~regout\,
	combout => \mux0|Mux5~1_combout\);

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\W_data[3]~I\ : cycloneii_io
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
	padio => ww_W_data(3),
	combout => \W_data~combout\(3));

-- Location: LCCOMB_X64_Y27_N6
\reg0|ff3|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg0|ff3|q~feeder_combout\ = \W_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \W_data~combout\(3),
	combout => \reg0|ff3|q~feeder_combout\);

-- Location: LCFF_X64_Y27_N7
\reg0|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg0|ff3|q~feeder_combout\,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff3|q~regout\);

-- Location: LCFF_X64_Y26_N5
\reg2|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(3),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff3|q~regout\);

-- Location: LCFF_X64_Y26_N23
\reg3|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(3),
	sload => VCC,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff3|q~regout\);

-- Location: LCFF_X64_Y27_N5
\reg1|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(3),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff3|q~regout\);

-- Location: LCCOMB_X64_Y27_N4
\mux0|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux4~0_combout\ = (\R_addr~combout\(1) & (((\reg1|ff3|q~regout\) # (\R_addr~combout\(0))))) # (!\R_addr~combout\(1) & (\reg3|ff3|q~regout\ & ((!\R_addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \reg3|ff3|q~regout\,
	datac => \reg1|ff3|q~regout\,
	datad => \R_addr~combout\(0),
	combout => \mux0|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y26_N4
\mux0|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux4~1_combout\ = (\R_addr~combout\(0) & ((\mux0|Mux4~0_combout\ & (\reg0|ff3|q~regout\)) # (!\mux0|Mux4~0_combout\ & ((\reg2|ff3|q~regout\))))) # (!\R_addr~combout\(0) & (((\mux0|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|ff3|q~regout\,
	datab => \R_addr~combout\(0),
	datac => \reg2|ff3|q~regout\,
	datad => \mux0|Mux4~0_combout\,
	combout => \mux0|Mux4~1_combout\);

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\W_data[4]~I\ : cycloneii_io
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
	padio => ww_W_data(4),
	combout => \W_data~combout\(4));

-- Location: LCFF_X64_Y26_N25
\reg2|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(4),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff4|q~regout\);

-- Location: LCCOMB_X64_Y26_N2
\reg3|ff4|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg3|ff4|q~feeder_combout\ = \W_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \W_data~combout\(4),
	combout => \reg3|ff4|q~feeder_combout\);

-- Location: LCFF_X64_Y26_N3
\reg3|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg3|ff4|q~feeder_combout\,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff4|q~regout\);

-- Location: LCCOMB_X64_Y26_N24
\mux0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux3~0_combout\ = (\R_addr~combout\(1) & (\R_addr~combout\(0))) # (!\R_addr~combout\(1) & ((\R_addr~combout\(0) & (\reg2|ff4|q~regout\)) # (!\R_addr~combout\(0) & ((\reg3|ff4|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \R_addr~combout\(0),
	datac => \reg2|ff4|q~regout\,
	datad => \reg3|ff4|q~regout\,
	combout => \mux0|Mux3~0_combout\);

-- Location: LCFF_X64_Y27_N17
\reg1|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(4),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff4|q~regout\);

-- Location: LCFF_X64_Y27_N11
\reg0|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(4),
	sload => VCC,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff4|q~regout\);

-- Location: LCCOMB_X64_Y27_N16
\mux0|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux3~1_combout\ = (\R_addr~combout\(1) & ((\mux0|Mux3~0_combout\ & ((\reg0|ff4|q~regout\))) # (!\mux0|Mux3~0_combout\ & (\reg1|ff4|q~regout\)))) # (!\R_addr~combout\(1) & (\mux0|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \mux0|Mux3~0_combout\,
	datac => \reg1|ff4|q~regout\,
	datad => \reg0|ff4|q~regout\,
	combout => \mux0|Mux3~1_combout\);

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\W_data[5]~I\ : cycloneii_io
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
	padio => ww_W_data(5),
	combout => \W_data~combout\(5));

-- Location: LCFF_X64_Y27_N31
\reg0|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(5),
	sload => VCC,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff5|q~regout\);

-- Location: LCFF_X64_Y26_N13
\reg2|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(5),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff5|q~regout\);

-- Location: LCFF_X64_Y26_N15
\reg3|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(5),
	sload => VCC,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff5|q~regout\);

-- Location: LCFF_X64_Y27_N29
\reg1|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(5),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff5|q~regout\);

-- Location: LCCOMB_X64_Y27_N28
\mux0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux2~0_combout\ = (\R_addr~combout\(1) & (((\reg1|ff5|q~regout\) # (\R_addr~combout\(0))))) # (!\R_addr~combout\(1) & (\reg3|ff5|q~regout\ & ((!\R_addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \reg3|ff5|q~regout\,
	datac => \reg1|ff5|q~regout\,
	datad => \R_addr~combout\(0),
	combout => \mux0|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y26_N12
\mux0|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux2~1_combout\ = (\R_addr~combout\(0) & ((\mux0|Mux2~0_combout\ & (\reg0|ff5|q~regout\)) # (!\mux0|Mux2~0_combout\ & ((\reg2|ff5|q~regout\))))) # (!\R_addr~combout\(0) & (((\mux0|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|ff5|q~regout\,
	datab => \R_addr~combout\(0),
	datac => \reg2|ff5|q~regout\,
	datad => \mux0|Mux2~0_combout\,
	combout => \mux0|Mux2~1_combout\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\W_data[6]~I\ : cycloneii_io
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
	padio => ww_W_data(6),
	combout => \W_data~combout\(6));

-- Location: LCFF_X64_Y27_N27
\reg0|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(6),
	sload => VCC,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff6|q~regout\);

-- Location: LCFF_X64_Y27_N9
\reg1|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(6),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff6|q~regout\);

-- Location: LCFF_X64_Y26_N17
\reg2|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(6),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff6|q~regout\);

-- Location: LCCOMB_X64_Y26_N10
\reg3|ff6|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg3|ff6|q~feeder_combout\ = \W_data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \W_data~combout\(6),
	combout => \reg3|ff6|q~feeder_combout\);

-- Location: LCFF_X64_Y26_N11
\reg3|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg3|ff6|q~feeder_combout\,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff6|q~regout\);

-- Location: LCCOMB_X64_Y26_N16
\mux0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux1~0_combout\ = (\R_addr~combout\(1) & (\R_addr~combout\(0))) # (!\R_addr~combout\(1) & ((\R_addr~combout\(0) & (\reg2|ff6|q~regout\)) # (!\R_addr~combout\(0) & ((\reg3|ff6|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \R_addr~combout\(0),
	datac => \reg2|ff6|q~regout\,
	datad => \reg3|ff6|q~regout\,
	combout => \mux0|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y27_N8
\mux0|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux1~1_combout\ = (\R_addr~combout\(1) & ((\mux0|Mux1~0_combout\ & (\reg0|ff6|q~regout\)) # (!\mux0|Mux1~0_combout\ & ((\reg1|ff6|q~regout\))))) # (!\R_addr~combout\(1) & (((\mux0|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \reg0|ff6|q~regout\,
	datac => \reg1|ff6|q~regout\,
	datad => \mux0|Mux1~0_combout\,
	combout => \mux0|Mux1~1_combout\);

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\W_data[7]~I\ : cycloneii_io
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
	padio => ww_W_data(7),
	combout => \W_data~combout\(7));

-- Location: LCFF_X64_Y26_N31
\reg3|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(7),
	sload => VCC,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff7|q~regout\);

-- Location: LCFF_X64_Y27_N21
\reg1|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(7),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff7|q~regout\);

-- Location: LCCOMB_X64_Y27_N20
\mux0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux0~0_combout\ = (\R_addr~combout\(1) & (((\reg1|ff7|q~regout\) # (\R_addr~combout\(0))))) # (!\R_addr~combout\(1) & (\reg3|ff7|q~regout\ & ((!\R_addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \reg3|ff7|q~regout\,
	datac => \reg1|ff7|q~regout\,
	datad => \R_addr~combout\(0),
	combout => \mux0|Mux0~0_combout\);

-- Location: LCFF_X64_Y26_N29
\reg2|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(7),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff7|q~regout\);

-- Location: LCFF_X64_Y27_N23
\reg0|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(7),
	sload => VCC,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff7|q~regout\);

-- Location: LCCOMB_X64_Y26_N28
\mux0|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Mux0~1_combout\ = (\mux0|Mux0~0_combout\ & (((\reg0|ff7|q~regout\)) # (!\R_addr~combout\(0)))) # (!\mux0|Mux0~0_combout\ & (\R_addr~combout\(0) & (\reg2|ff7|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|Mux0~0_combout\,
	datab => \R_addr~combout\(0),
	datac => \reg2|ff7|q~regout\,
	datad => \reg0|ff7|q~regout\,
	combout => \mux0|Mux0~1_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R_en~I\ : cycloneii_io
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
	padio => ww_R_en);

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_data[0]~I\ : cycloneii_io
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
	datain => \mux0|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(0));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_data[1]~I\ : cycloneii_io
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
	datain => \mux0|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(1));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_data[2]~I\ : cycloneii_io
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
	datain => \mux0|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(2));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_data[3]~I\ : cycloneii_io
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
	datain => \mux0|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(3));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_data[4]~I\ : cycloneii_io
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
	datain => \mux0|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(4));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_data[5]~I\ : cycloneii_io
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
	datain => \mux0|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(5));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_data[6]~I\ : cycloneii_io
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
	datain => \mux0|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(6));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_data[7]~I\ : cycloneii_io
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
	datain => \mux0|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(7));
END structure;



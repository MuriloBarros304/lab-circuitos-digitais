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

-- DATE "08/15/2024 16:00:29"

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
-- R_data[0]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[1]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[2]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[3]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[4]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[5]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[6]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_data[7]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_en	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R_addr[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R_addr[0]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[0]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_addr[1]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_en	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_addr[0]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[1]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[2]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[4]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[5]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[6]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W_data[7]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \reg1|ff0|q~regout\ : std_logic;
SIGNAL \reg0|ff0|q~regout\ : std_logic;
SIGNAL \mux0|Z[0]~0_combout\ : std_logic;
SIGNAL \reg3|ff1|q~regout\ : std_logic;
SIGNAL \reg3|ff2|q~regout\ : std_logic;
SIGNAL \reg2|ff3|q~regout\ : std_logic;
SIGNAL \reg0|ff3|q~regout\ : std_logic;
SIGNAL \mux0|Z[3]~9_combout\ : std_logic;
SIGNAL \reg2|ff5|q~regout\ : std_logic;
SIGNAL \reg0|ff5|q~regout\ : std_logic;
SIGNAL \mux0|Z[5]~15_combout\ : std_logic;
SIGNAL \reg1|ff6|q~regout\ : std_logic;
SIGNAL \reg0|ff6|q~regout\ : std_logic;
SIGNAL \mux0|Z[6]~18_combout\ : std_logic;
SIGNAL \reg2|ff7|q~regout\ : std_logic;
SIGNAL \reg0|ff7|q~regout\ : std_logic;
SIGNAL \mux0|Z[7]~21_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \reg0|ff0|q~feeder_combout\ : std_logic;
SIGNAL \reg0|ff5|q~feeder_combout\ : std_logic;
SIGNAL \reg0|ff7|q~feeder_combout\ : std_logic;
SIGNAL \W_en~combout\ : std_logic;
SIGNAL \deco0|D~0_combout\ : std_logic;
SIGNAL \reg2|ff0|q~regout\ : std_logic;
SIGNAL \deco0|D~2_combout\ : std_logic;
SIGNAL \reg3|ff0|q~regout\ : std_logic;
SIGNAL \mux0|Z[0]~1_combout\ : std_logic;
SIGNAL \R_en~combout\ : std_logic;
SIGNAL \mux0|Z[0]~2_combout\ : std_logic;
SIGNAL \deco0|D~1_combout\ : std_logic;
SIGNAL \reg1|ff1|q~regout\ : std_logic;
SIGNAL \reg0|ff1|q~regout\ : std_logic;
SIGNAL \reg2|ff1|q~regout\ : std_logic;
SIGNAL \mux0|Z[1]~3_combout\ : std_logic;
SIGNAL \mux0|Z[1]~4_combout\ : std_logic;
SIGNAL \mux0|Z[1]~5_combout\ : std_logic;
SIGNAL \reg2|ff2|q~regout\ : std_logic;
SIGNAL \reg1|ff2|q~regout\ : std_logic;
SIGNAL \reg0|ff2|q~feeder_combout\ : std_logic;
SIGNAL \reg0|ff2|q~regout\ : std_logic;
SIGNAL \mux0|Z[2]~6_combout\ : std_logic;
SIGNAL \mux0|Z[2]~7_combout\ : std_logic;
SIGNAL \mux0|Z[2]~8_combout\ : std_logic;
SIGNAL \reg1|ff3|q~regout\ : std_logic;
SIGNAL \reg3|ff3|q~regout\ : std_logic;
SIGNAL \mux0|Z[3]~10_combout\ : std_logic;
SIGNAL \mux0|Z[3]~11_combout\ : std_logic;
SIGNAL \reg1|ff4|q~regout\ : std_logic;
SIGNAL \reg0|ff4|q~regout\ : std_logic;
SIGNAL \mux0|Z[4]~12_combout\ : std_logic;
SIGNAL \reg2|ff4|q~regout\ : std_logic;
SIGNAL \reg3|ff4|q~feeder_combout\ : std_logic;
SIGNAL \reg3|ff4|q~regout\ : std_logic;
SIGNAL \mux0|Z[4]~13_combout\ : std_logic;
SIGNAL \mux0|Z[4]~14_combout\ : std_logic;
SIGNAL \reg1|ff5|q~regout\ : std_logic;
SIGNAL \reg3|ff5|q~regout\ : std_logic;
SIGNAL \mux0|Z[5]~16_combout\ : std_logic;
SIGNAL \mux0|Z[5]~17_combout\ : std_logic;
SIGNAL \reg2|ff6|q~regout\ : std_logic;
SIGNAL \reg3|ff6|q~feeder_combout\ : std_logic;
SIGNAL \reg3|ff6|q~regout\ : std_logic;
SIGNAL \mux0|Z[6]~19_combout\ : std_logic;
SIGNAL \mux0|Z[6]~20_combout\ : std_logic;
SIGNAL \reg1|ff7|q~regout\ : std_logic;
SIGNAL \reg3|ff7|q~regout\ : std_logic;
SIGNAL \mux0|Z[7]~22_combout\ : std_logic;
SIGNAL \mux0|Z[7]~23_combout\ : std_logic;
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

-- Location: LCFF_X64_Y28_N9
\reg1|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(0),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff0|q~regout\);

-- Location: LCFF_X64_Y28_N11
\reg0|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg0|ff0|q~feeder_combout\,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff0|q~regout\);

-- Location: LCCOMB_X64_Y28_N8
\mux0|Z[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[0]~0_combout\ = (\R_addr~combout\(1) & (\R_addr~combout\(0))) # (!\R_addr~combout\(1) & ((\R_addr~combout\(0) & (\reg1|ff0|q~regout\)) # (!\R_addr~combout\(0) & ((\reg0|ff0|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \R_addr~combout\(0),
	datac => \reg1|ff0|q~regout\,
	datad => \reg0|ff0|q~regout\,
	combout => \mux0|Z[0]~0_combout\);

-- Location: LCFF_X63_Y28_N3
\reg3|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(1),
	sload => VCC,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff1|q~regout\);

-- Location: LCFF_X64_Y31_N11
\reg3|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(2),
	sload => VCC,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff2|q~regout\);

-- Location: LCFF_X63_Y28_N13
\reg2|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(3),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff3|q~regout\);

-- Location: LCFF_X64_Y28_N23
\reg0|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(3),
	sload => VCC,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff3|q~regout\);

-- Location: LCCOMB_X63_Y28_N12
\mux0|Z[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[3]~9_combout\ = (\R_addr~combout\(1) & (((\reg2|ff3|q~regout\) # (\R_addr~combout\(0))))) # (!\R_addr~combout\(1) & (\reg0|ff3|q~regout\ & ((!\R_addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \reg0|ff3|q~regout\,
	datac => \reg2|ff3|q~regout\,
	datad => \R_addr~combout\(0),
	combout => \mux0|Z[3]~9_combout\);

-- Location: LCFF_X63_Y28_N25
\reg2|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(5),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff5|q~regout\);

-- Location: LCFF_X64_Y28_N7
\reg0|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg0|ff5|q~feeder_combout\,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff5|q~regout\);

-- Location: LCCOMB_X63_Y28_N24
\mux0|Z[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[5]~15_combout\ = (\R_addr~combout\(1) & (((\reg2|ff5|q~regout\) # (\R_addr~combout\(0))))) # (!\R_addr~combout\(1) & (\reg0|ff5|q~regout\ & ((!\R_addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \reg0|ff5|q~regout\,
	datac => \reg2|ff5|q~regout\,
	datad => \R_addr~combout\(0),
	combout => \mux0|Z[5]~15_combout\);

-- Location: LCFF_X64_Y28_N1
\reg1|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(6),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff6|q~regout\);

-- Location: LCFF_X64_Y28_N19
\reg0|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(6),
	sload => VCC,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff6|q~regout\);

-- Location: LCCOMB_X64_Y28_N0
\mux0|Z[6]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[6]~18_combout\ = (\R_addr~combout\(1) & (\R_addr~combout\(0))) # (!\R_addr~combout\(1) & ((\R_addr~combout\(0) & (\reg1|ff6|q~regout\)) # (!\R_addr~combout\(0) & ((\reg0|ff6|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \R_addr~combout\(0),
	datac => \reg1|ff6|q~regout\,
	datad => \reg0|ff6|q~regout\,
	combout => \mux0|Z[6]~18_combout\);

-- Location: LCFF_X63_Y28_N21
\reg2|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(7),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff7|q~regout\);

-- Location: LCFF_X64_Y28_N15
\reg0|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg0|ff7|q~feeder_combout\,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff7|q~regout\);

-- Location: LCCOMB_X63_Y28_N20
\mux0|Z[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[7]~21_combout\ = (\R_addr~combout\(1) & (((\reg2|ff7|q~regout\) # (\R_addr~combout\(0))))) # (!\R_addr~combout\(1) & (\reg0|ff7|q~regout\ & ((!\R_addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \reg0|ff7|q~regout\,
	datac => \reg2|ff7|q~regout\,
	datad => \R_addr~combout\(0),
	combout => \mux0|Z[7]~21_combout\);

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

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y28_N10
\reg0|ff0|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg0|ff0|q~feeder_combout\ = \W_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \W_data~combout\(0),
	combout => \reg0|ff0|q~feeder_combout\);

-- Location: LCCOMB_X64_Y28_N6
\reg0|ff5|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg0|ff5|q~feeder_combout\ = \W_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \W_data~combout\(5),
	combout => \reg0|ff5|q~feeder_combout\);

-- Location: LCCOMB_X64_Y28_N14
\reg0|ff7|q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg0|ff7|q~feeder_combout\ = \W_data~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \W_data~combout\(7),
	combout => \reg0|ff7|q~feeder_combout\);

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

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X63_Y28_N0
\deco0|D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco0|D~0_combout\ = (\W_addr~combout\(1) & (\W_en~combout\ & !\W_addr~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_addr~combout\(1),
	datac => \W_en~combout\,
	datad => \W_addr~combout\(0),
	combout => \deco0|D~0_combout\);

-- Location: LCFF_X64_Y31_N17
\reg2|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(0),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff0|q~regout\);

-- Location: LCCOMB_X63_Y28_N22
\deco0|D~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco0|D~2_combout\ = (\W_addr~combout\(1) & (\W_en~combout\ & \W_addr~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_addr~combout\(1),
	datac => \W_en~combout\,
	datad => \W_addr~combout\(0),
	combout => \deco0|D~2_combout\);

-- Location: LCFF_X64_Y31_N19
\reg3|ff0|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(0),
	sload => VCC,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff0|q~regout\);

-- Location: LCCOMB_X64_Y31_N16
\mux0|Z[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[0]~1_combout\ = (\mux0|Z[0]~0_combout\ & (((\reg3|ff0|q~regout\)) # (!\R_addr~combout\(1)))) # (!\mux0|Z[0]~0_combout\ & (\R_addr~combout\(1) & (\reg2|ff0|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|Z[0]~0_combout\,
	datab => \R_addr~combout\(1),
	datac => \reg2|ff0|q~regout\,
	datad => \reg3|ff0|q~regout\,
	combout => \mux0|Z[0]~1_combout\);

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
	padio => ww_R_en,
	combout => \R_en~combout\);

-- Location: LCCOMB_X64_Y31_N28
\mux0|Z[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[0]~2_combout\ = (\mux0|Z[0]~1_combout\ & \R_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|Z[0]~1_combout\,
	datac => \R_en~combout\,
	combout => \mux0|Z[0]~2_combout\);

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X63_Y28_N10
\deco0|D~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco0|D~1_combout\ = (!\W_addr~combout\(1) & (\W_en~combout\ & \W_addr~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_addr~combout\(1),
	datac => \W_en~combout\,
	datad => \W_addr~combout\(0),
	combout => \deco0|D~1_combout\);

-- Location: LCFF_X64_Y28_N29
\reg1|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(1),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff1|q~regout\);

-- Location: LCCOMB_X63_Y28_N28
\deco0|D[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \deco0|D\(0) = (!\W_addr~combout\(1) & (\W_en~combout\ & !\W_addr~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W_addr~combout\(1),
	datac => \W_en~combout\,
	datad => \W_addr~combout\(0),
	combout => \deco0|D\(0));

-- Location: LCFF_X64_Y28_N31
\reg0|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(1),
	sload => VCC,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff1|q~regout\);

-- Location: LCFF_X63_Y28_N17
\reg2|ff1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(1),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff1|q~regout\);

-- Location: LCCOMB_X63_Y28_N16
\mux0|Z[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[1]~3_combout\ = (\R_addr~combout\(1) & (((\reg2|ff1|q~regout\) # (\R_addr~combout\(0))))) # (!\R_addr~combout\(1) & (\reg0|ff1|q~regout\ & ((!\R_addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \reg0|ff1|q~regout\,
	datac => \reg2|ff1|q~regout\,
	datad => \R_addr~combout\(0),
	combout => \mux0|Z[1]~3_combout\);

-- Location: LCCOMB_X64_Y28_N28
\mux0|Z[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[1]~4_combout\ = (\R_addr~combout\(0) & ((\mux0|Z[1]~3_combout\ & (\reg3|ff1|q~regout\)) # (!\mux0|Z[1]~3_combout\ & ((\reg1|ff1|q~regout\))))) # (!\R_addr~combout\(0) & (((\mux0|Z[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ff1|q~regout\,
	datab => \R_addr~combout\(0),
	datac => \reg1|ff1|q~regout\,
	datad => \mux0|Z[1]~3_combout\,
	combout => \mux0|Z[1]~4_combout\);

-- Location: LCCOMB_X64_Y31_N6
\mux0|Z[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[1]~5_combout\ = (\R_en~combout\ & \mux0|Z[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_en~combout\,
	datad => \mux0|Z[1]~4_combout\,
	combout => \mux0|Z[1]~5_combout\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y31_N9
\reg2|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(2),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff2|q~regout\);

-- Location: LCFF_X64_Y28_N17
\reg1|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(2),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff2|q~regout\);

-- Location: LCCOMB_X64_Y28_N26
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

-- Location: LCFF_X64_Y28_N27
\reg0|ff2|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg0|ff2|q~feeder_combout\,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff2|q~regout\);

-- Location: LCCOMB_X64_Y28_N16
\mux0|Z[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[2]~6_combout\ = (\R_addr~combout\(1) & (\R_addr~combout\(0))) # (!\R_addr~combout\(1) & ((\R_addr~combout\(0) & (\reg1|ff2|q~regout\)) # (!\R_addr~combout\(0) & ((\reg0|ff2|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \R_addr~combout\(0),
	datac => \reg1|ff2|q~regout\,
	datad => \reg0|ff2|q~regout\,
	combout => \mux0|Z[2]~6_combout\);

-- Location: LCCOMB_X64_Y31_N8
\mux0|Z[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[2]~7_combout\ = (\R_addr~combout\(1) & ((\mux0|Z[2]~6_combout\ & (\reg3|ff2|q~regout\)) # (!\mux0|Z[2]~6_combout\ & ((\reg2|ff2|q~regout\))))) # (!\R_addr~combout\(1) & (((\mux0|Z[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|ff2|q~regout\,
	datab => \R_addr~combout\(1),
	datac => \reg2|ff2|q~regout\,
	datad => \mux0|Z[2]~6_combout\,
	combout => \mux0|Z[2]~7_combout\);

-- Location: LCCOMB_X64_Y31_N4
\mux0|Z[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[2]~8_combout\ = (\mux0|Z[2]~7_combout\ & \R_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux0|Z[2]~7_combout\,
	datac => \R_en~combout\,
	combout => \mux0|Z[2]~8_combout\);

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y28_N21
\reg1|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(3),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff3|q~regout\);

-- Location: LCFF_X63_Y28_N15
\reg3|ff3|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(3),
	sload => VCC,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff3|q~regout\);

-- Location: LCCOMB_X64_Y28_N20
\mux0|Z[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[3]~10_combout\ = (\mux0|Z[3]~9_combout\ & (((\reg3|ff3|q~regout\)) # (!\R_addr~combout\(0)))) # (!\mux0|Z[3]~9_combout\ & (\R_addr~combout\(0) & (\reg1|ff3|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|Z[3]~9_combout\,
	datab => \R_addr~combout\(0),
	datac => \reg1|ff3|q~regout\,
	datad => \reg3|ff3|q~regout\,
	combout => \mux0|Z[3]~10_combout\);

-- Location: LCCOMB_X64_Y31_N22
\mux0|Z[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[3]~11_combout\ = (\mux0|Z[3]~10_combout\ & \R_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|Z[3]~10_combout\,
	datac => \R_en~combout\,
	combout => \mux0|Z[3]~11_combout\);

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y28_N25
\reg1|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(4),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff4|q~regout\);

-- Location: LCFF_X64_Y28_N3
\reg0|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(4),
	sload => VCC,
	ena => \deco0|D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg0|ff4|q~regout\);

-- Location: LCCOMB_X64_Y28_N24
\mux0|Z[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[4]~12_combout\ = (\R_addr~combout\(1) & (\R_addr~combout\(0))) # (!\R_addr~combout\(1) & ((\R_addr~combout\(0) & (\reg1|ff4|q~regout\)) # (!\R_addr~combout\(0) & ((\reg0|ff4|q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \R_addr~combout\(0),
	datac => \reg1|ff4|q~regout\,
	datad => \reg0|ff4|q~regout\,
	combout => \mux0|Z[4]~12_combout\);

-- Location: LCFF_X64_Y31_N25
\reg2|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(4),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff4|q~regout\);

-- Location: LCCOMB_X64_Y31_N26
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

-- Location: LCFF_X64_Y31_N27
\reg3|ff4|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg3|ff4|q~feeder_combout\,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff4|q~regout\);

-- Location: LCCOMB_X64_Y31_N24
\mux0|Z[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[4]~13_combout\ = (\R_addr~combout\(1) & ((\mux0|Z[4]~12_combout\ & ((\reg3|ff4|q~regout\))) # (!\mux0|Z[4]~12_combout\ & (\reg2|ff4|q~regout\)))) # (!\R_addr~combout\(1) & (\mux0|Z[4]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_addr~combout\(1),
	datab => \mux0|Z[4]~12_combout\,
	datac => \reg2|ff4|q~regout\,
	datad => \reg3|ff4|q~regout\,
	combout => \mux0|Z[4]~13_combout\);

-- Location: LCCOMB_X64_Y31_N12
\mux0|Z[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[4]~14_combout\ = (\mux0|Z[4]~13_combout\ & \R_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|Z[4]~13_combout\,
	datac => \R_en~combout\,
	combout => \mux0|Z[4]~14_combout\);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y28_N5
\reg1|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(5),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff5|q~regout\);

-- Location: LCFF_X63_Y28_N19
\reg3|ff5|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(5),
	sload => VCC,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff5|q~regout\);

-- Location: LCCOMB_X64_Y28_N4
\mux0|Z[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[5]~16_combout\ = (\mux0|Z[5]~15_combout\ & (((\reg3|ff5|q~regout\)) # (!\R_addr~combout\(0)))) # (!\mux0|Z[5]~15_combout\ & (\R_addr~combout\(0) & (\reg1|ff5|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|Z[5]~15_combout\,
	datab => \R_addr~combout\(0),
	datac => \reg1|ff5|q~regout\,
	datad => \reg3|ff5|q~regout\,
	combout => \mux0|Z[5]~16_combout\);

-- Location: LCCOMB_X64_Y31_N30
\mux0|Z[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[5]~17_combout\ = (\R_en~combout\ & \mux0|Z[5]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_en~combout\,
	datad => \mux0|Z[5]~16_combout\,
	combout => \mux0|Z[5]~17_combout\);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y31_N1
\reg2|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(6),
	sload => VCC,
	ena => \deco0|D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg2|ff6|q~regout\);

-- Location: LCCOMB_X64_Y31_N2
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

-- Location: LCFF_X64_Y31_N3
\reg3|ff6|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reg3|ff6|q~feeder_combout\,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff6|q~regout\);

-- Location: LCCOMB_X64_Y31_N0
\mux0|Z[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[6]~19_combout\ = (\mux0|Z[6]~18_combout\ & (((\reg3|ff6|q~regout\)) # (!\R_addr~combout\(1)))) # (!\mux0|Z[6]~18_combout\ & (\R_addr~combout\(1) & (\reg2|ff6|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|Z[6]~18_combout\,
	datab => \R_addr~combout\(1),
	datac => \reg2|ff6|q~regout\,
	datad => \reg3|ff6|q~regout\,
	combout => \mux0|Z[6]~19_combout\);

-- Location: LCCOMB_X64_Y31_N20
\mux0|Z[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[6]~20_combout\ = (\R_en~combout\ & \mux0|Z[6]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_en~combout\,
	datad => \mux0|Z[6]~19_combout\,
	combout => \mux0|Z[6]~20_combout\);

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X64_Y28_N13
\reg1|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(7),
	sload => VCC,
	ena => \deco0|D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg1|ff7|q~regout\);

-- Location: LCFF_X63_Y28_N31
\reg3|ff7|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \W_data~combout\(7),
	sload => VCC,
	ena => \deco0|D~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg3|ff7|q~regout\);

-- Location: LCCOMB_X64_Y28_N12
\mux0|Z[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[7]~22_combout\ = (\mux0|Z[7]~21_combout\ & (((\reg3|ff7|q~regout\)) # (!\R_addr~combout\(0)))) # (!\mux0|Z[7]~21_combout\ & (\R_addr~combout\(0) & (\reg1|ff7|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|Z[7]~21_combout\,
	datab => \R_addr~combout\(0),
	datac => \reg1|ff7|q~regout\,
	datad => \reg3|ff7|q~regout\,
	combout => \mux0|Z[7]~22_combout\);

-- Location: LCCOMB_X64_Y31_N14
\mux0|Z[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|Z[7]~23_combout\ = (\R_en~combout\ & \mux0|Z[7]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_en~combout\,
	datad => \mux0|Z[7]~22_combout\,
	combout => \mux0|Z[7]~23_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \mux0|Z[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(0));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \mux0|Z[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(1));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \mux0|Z[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(2));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \mux0|Z[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(3));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \mux0|Z[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(4));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \mux0|Z[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(5));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \mux0|Z[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(6));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \mux0|Z[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_data(7));
END structure;



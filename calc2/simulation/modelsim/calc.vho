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

-- DATE "07/16/2024 20:54:32"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	calc IS
    PORT (
	a5 : IN std_logic;
	a4 : IN std_logic;
	a3 : IN std_logic;
	a2 : IN std_logic;
	a1 : IN std_logic;
	a0 : IN std_logic;
	b5 : IN std_logic;
	b4 : IN std_logic;
	b3 : IN std_logic;
	b2 : IN std_logic;
	b1 : IN std_logic;
	b0 : IN std_logic;
	clk : IN std_logic;
	sub : IN std_logic;
	load : IN std_logic;
	s5 : OUT STD.STANDARD.bit;
	s4 : OUT STD.STANDARD.bit;
	s3 : OUT STD.STANDARD.bit;
	s2 : OUT STD.STANDARD.bit;
	s1 : OUT STD.STANDARD.bit;
	s0 : OUT STD.STANDARD.bit
	);
END calc;

-- Design Ports Information
-- s5	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s4	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s3	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s0	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b0	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sub	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b4	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a4	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b3	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a3	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b2	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a2	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a0	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a1	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b1	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b5	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a5	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- load	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF calc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a5 : std_logic;
SIGNAL ww_a4 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_b5 : std_logic;
SIGNAL ww_b4 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sub : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_s5 : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|cout~0_combout\ : std_logic;
SIGNAL \a1~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \b4~combout\ : std_logic;
SIGNAL \m4|d~1_combout\ : std_logic;
SIGNAL \b0~combout\ : std_logic;
SIGNAL \sub~combout\ : std_logic;
SIGNAL \m4|d~0_combout\ : std_logic;
SIGNAL \a4~combout\ : std_logic;
SIGNAL \u4|cout~0_combout\ : std_logic;
SIGNAL \b5~combout\ : std_logic;
SIGNAL \a5~combout\ : std_logic;
SIGNAL \u5|sum~0_combout\ : std_logic;
SIGNAL \u5|sum~combout\ : std_logic;
SIGNAL \load~combout\ : std_logic;
SIGNAL \r0|q5~regout\ : std_logic;
SIGNAL \u4|sum~combout\ : std_logic;
SIGNAL \r0|q4~regout\ : std_logic;
SIGNAL \b3~combout\ : std_logic;
SIGNAL \a3~combout\ : std_logic;
SIGNAL \a2~combout\ : std_logic;
SIGNAL \b1~combout\ : std_logic;
SIGNAL \m1|d[1]~0_combout\ : std_logic;
SIGNAL \a0~combout\ : std_logic;
SIGNAL \u0|cout~0_combout\ : std_logic;
SIGNAL \u0|cout~1_combout\ : std_logic;
SIGNAL \u1|cout~0_combout\ : std_logic;
SIGNAL \b2~combout\ : std_logic;
SIGNAL \u2|cout~0_combout\ : std_logic;
SIGNAL \u3|sum~0_combout\ : std_logic;
SIGNAL \r0|q3~regout\ : std_logic;
SIGNAL \u2|sum~0_combout\ : std_logic;
SIGNAL \r0|q2~regout\ : std_logic;
SIGNAL \u1|sum~combout\ : std_logic;
SIGNAL \r0|q1~regout\ : std_logic;
SIGNAL \u0|sum~0_combout\ : std_logic;
SIGNAL \r0|q0~regout\ : std_logic;

BEGIN

ww_a5 <= a5;
ww_a4 <= a4;
ww_a3 <= a3;
ww_a2 <= a2;
ww_a1 <= a1;
ww_a0 <= a0;
ww_b5 <= b5;
ww_b4 <= b4;
ww_b3 <= b3;
ww_b2 <= b2;
ww_b1 <= b1;
ww_b0 <= b0;
ww_clk <= clk;
ww_sub <= sub;
ww_load <= load;
s5 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_s5);
s4 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_s4);
s3 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_s3);
s2 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_s2);
s1 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_s1);
s0 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_s0);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X64_Y18_N10
\u3|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|cout~0_combout\ = (\a3~combout\ & ((\u2|cout~0_combout\) # (\sub~combout\ $ (\b3~combout\)))) # (!\a3~combout\ & (\u2|cout~0_combout\ & (\sub~combout\ $ (\b3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~combout\,
	datab => \b3~combout\,
	datac => \a3~combout\,
	datad => \u2|cout~0_combout\,
	combout => \u3|cout~0_combout\);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a1~I\ : cycloneii_io
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
	padio => ww_a1,
	combout => \a1~combout\);

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

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b4~I\ : cycloneii_io
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
	padio => ww_b4,
	combout => \b4~combout\);

-- Location: LCCOMB_X64_Y18_N6
\m4|d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|d~1_combout\ = (\sub~combout\ & !\b4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~combout\,
	datac => \b4~combout\,
	combout => \m4|d~1_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b0~I\ : cycloneii_io
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
	padio => ww_b0,
	combout => \b0~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sub~I\ : cycloneii_io
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
	padio => ww_sub,
	combout => \sub~combout\);

-- Location: LCCOMB_X64_Y18_N20
\m4|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m4|d~0_combout\ = (\b0~combout\ & !\sub~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b0~combout\,
	datad => \sub~combout\,
	combout => \m4|d~0_combout\);

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a4~I\ : cycloneii_io
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
	padio => ww_a4,
	combout => \a4~combout\);

-- Location: LCCOMB_X64_Y18_N4
\u4|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|cout~0_combout\ = (\u3|cout~0_combout\ & ((\m4|d~1_combout\) # ((\m4|d~0_combout\) # (\a4~combout\)))) # (!\u3|cout~0_combout\ & (\a4~combout\ & ((\m4|d~1_combout\) # (\m4|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|cout~0_combout\,
	datab => \m4|d~1_combout\,
	datac => \m4|d~0_combout\,
	datad => \a4~combout\,
	combout => \u4|cout~0_combout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b5~I\ : cycloneii_io
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
	padio => ww_b5,
	combout => \b5~combout\);

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a5~I\ : cycloneii_io
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
	padio => ww_a5,
	combout => \a5~combout\);

-- Location: LCCOMB_X64_Y18_N30
\u5|sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|sum~0_combout\ = \a5~combout\ $ (((\sub~combout\ & (!\b5~combout\)) # (!\sub~combout\ & ((\b0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~combout\,
	datab => \b5~combout\,
	datac => \b0~combout\,
	datad => \a5~combout\,
	combout => \u5|sum~0_combout\);

-- Location: LCCOMB_X64_Y18_N0
\u5|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|sum~combout\ = \u4|cout~0_combout\ $ (\u5|sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|cout~0_combout\,
	datad => \u5|sum~0_combout\,
	combout => \u5|sum~combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\load~I\ : cycloneii_io
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
	padio => ww_load,
	combout => \load~combout\);

-- Location: LCFF_X64_Y18_N1
\r0|q5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u5|sum~combout\,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|q5~regout\);

-- Location: LCCOMB_X64_Y18_N2
\u4|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|sum~combout\ = \u3|cout~0_combout\ $ (\a4~combout\ $ (((\m4|d~1_combout\) # (\m4|d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|cout~0_combout\,
	datab => \m4|d~1_combout\,
	datac => \m4|d~0_combout\,
	datad => \a4~combout\,
	combout => \u4|sum~combout\);

-- Location: LCFF_X64_Y18_N3
\r0|q4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u4|sum~combout\,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|q4~regout\);

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b3~I\ : cycloneii_io
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
	padio => ww_b3,
	combout => \b3~combout\);

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a3~I\ : cycloneii_io
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
	padio => ww_a3,
	combout => \a3~combout\);

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a2~I\ : cycloneii_io
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
	padio => ww_a2,
	combout => \a2~combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b1~I\ : cycloneii_io
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
	padio => ww_b1,
	combout => \b1~combout\);

-- Location: LCCOMB_X64_Y18_N28
\m1|d[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m1|d[1]~0_combout\ = \sub~combout\ $ (\b1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~combout\,
	datac => \b1~combout\,
	combout => \m1|d[1]~0_combout\);

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a0~I\ : cycloneii_io
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
	padio => ww_a0,
	combout => \a0~combout\);

-- Location: LCCOMB_X64_Y18_N24
\u0|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|cout~0_combout\ = (\sub~combout\ & (\b0~combout\ $ (!\a0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~combout\,
	datac => \b0~combout\,
	datad => \a0~combout\,
	combout => \u0|cout~0_combout\);

-- Location: LCCOMB_X64_Y18_N26
\u0|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|cout~1_combout\ = (\a0~combout\ & (\sub~combout\ $ (\b0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~combout\,
	datac => \b0~combout\,
	datad => \a0~combout\,
	combout => \u0|cout~1_combout\);

-- Location: LCCOMB_X64_Y18_N14
\u1|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|cout~0_combout\ = (\a1~combout\ & ((\m1|d[1]~0_combout\) # ((\u0|cout~0_combout\) # (\u0|cout~1_combout\)))) # (!\a1~combout\ & (\m1|d[1]~0_combout\ & ((\u0|cout~0_combout\) # (\u0|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1~combout\,
	datab => \m1|d[1]~0_combout\,
	datac => \u0|cout~0_combout\,
	datad => \u0|cout~1_combout\,
	combout => \u1|cout~0_combout\);

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b2~I\ : cycloneii_io
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
	padio => ww_b2,
	combout => \b2~combout\);

-- Location: LCCOMB_X64_Y18_N8
\u2|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|cout~0_combout\ = (\a2~combout\ & ((\u1|cout~0_combout\) # (\sub~combout\ $ (\b2~combout\)))) # (!\a2~combout\ & (\u1|cout~0_combout\ & (\sub~combout\ $ (\b2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~combout\,
	datab => \a2~combout\,
	datac => \u1|cout~0_combout\,
	datad => \b2~combout\,
	combout => \u2|cout~0_combout\);

-- Location: LCCOMB_X64_Y18_N12
\u3|sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|sum~0_combout\ = \sub~combout\ $ (\b3~combout\ $ (\a3~combout\ $ (\u2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~combout\,
	datab => \b3~combout\,
	datac => \a3~combout\,
	datad => \u2|cout~0_combout\,
	combout => \u3|sum~0_combout\);

-- Location: LCFF_X64_Y18_N13
\r0|q3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u3|sum~0_combout\,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|q3~regout\);

-- Location: LCCOMB_X64_Y18_N22
\u2|sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|sum~0_combout\ = \sub~combout\ $ (\a2~combout\ $ (\u1|cout~0_combout\ $ (\b2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~combout\,
	datab => \a2~combout\,
	datac => \u1|cout~0_combout\,
	datad => \b2~combout\,
	combout => \u2|sum~0_combout\);

-- Location: LCFF_X64_Y18_N23
\r0|q2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u2|sum~0_combout\,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|q2~regout\);

-- Location: LCCOMB_X64_Y18_N16
\u1|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|sum~combout\ = \a1~combout\ $ (\m1|d[1]~0_combout\ $ (((\u0|cout~0_combout\) # (\u0|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1~combout\,
	datab => \m1|d[1]~0_combout\,
	datac => \u0|cout~0_combout\,
	datad => \u0|cout~1_combout\,
	combout => \u1|sum~combout\);

-- Location: LCFF_X64_Y18_N17
\r0|q1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|sum~combout\,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|q1~regout\);

-- Location: LCCOMB_X64_Y18_N18
\u0|sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|sum~0_combout\ = \b0~combout\ $ (\a0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b0~combout\,
	datad => \a0~combout\,
	combout => \u0|sum~0_combout\);

-- Location: LCFF_X64_Y18_N19
\r0|q0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u0|sum~0_combout\,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|q0~regout\);

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s5~I\ : cycloneii_io
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
	datain => \r0|q5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s5);

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s4~I\ : cycloneii_io
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
	datain => \r0|q4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s4);

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s3~I\ : cycloneii_io
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
	datain => \r0|q3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s3);

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2~I\ : cycloneii_io
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
	datain => \r0|q2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1~I\ : cycloneii_io
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
	datain => \r0|q1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1);

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s0~I\ : cycloneii_io
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
	datain => \r0|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s0);
END structure;



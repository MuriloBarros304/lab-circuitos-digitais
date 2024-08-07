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

-- DATE "07/31/2024 13:28:10"

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

ENTITY 	ula IS
    PORT (
	x : IN std_logic;
	y : IN std_logic;
	z : IN std_logic;
	a : IN std_logic_vector(5 DOWNTO 0);
	b : IN std_logic_vector(5 DOWNTO 0);
	ld : IN std_logic;
	clk : IN std_logic;
	s : OUT std_logic_vector(5 DOWNTO 0)
	);
END ula;

-- Design Ports Information
-- s[0]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[1]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[2]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[3]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[4]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[5]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- x	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- z	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_a : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ld : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_s : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a1|ia~1_combout\ : std_logic;
SIGNAL \a1|ia~2_combout\ : std_logic;
SIGNAL \som1|cout~0_combout\ : std_logic;
SIGNAL \a3|ia~0_combout\ : std_logic;
SIGNAL \a4|ia~1_combout\ : std_logic;
SIGNAL \a4|ia~2_combout\ : std_logic;
SIGNAL \som4|cout~0_combout\ : std_logic;
SIGNAL \som0|sum~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \z~combout\ : std_logic;
SIGNAL \x~combout\ : std_logic;
SIGNAL \y~combout\ : std_logic;
SIGNAL \som0|sum~3_combout\ : std_logic;
SIGNAL \som0|sum~combout\ : std_logic;
SIGNAL \ld~combout\ : std_logic;
SIGNAL \r|q0~regout\ : std_logic;
SIGNAL \a1|ib~0_combout\ : std_logic;
SIGNAL \a1|ia~0_combout\ : std_logic;
SIGNAL \som0|cout~2_combout\ : std_logic;
SIGNAL \som0|cout~3_combout\ : std_logic;
SIGNAL \som1|sum~combout\ : std_logic;
SIGNAL \r|q1~regout\ : std_logic;
SIGNAL \a2|ia~1_combout\ : std_logic;
SIGNAL \a2|ia~2_combout\ : std_logic;
SIGNAL \a2|ib~0_combout\ : std_logic;
SIGNAL \a2|ia~0_combout\ : std_logic;
SIGNAL \som2|sum~combout\ : std_logic;
SIGNAL \r|q2~regout\ : std_logic;
SIGNAL \a3|ib~0_combout\ : std_logic;
SIGNAL \a3|ia~1_combout\ : std_logic;
SIGNAL \a3|ia~2_combout\ : std_logic;
SIGNAL \som2|cout~0_combout\ : std_logic;
SIGNAL \som3|sum~combout\ : std_logic;
SIGNAL \r|q3~regout\ : std_logic;
SIGNAL \som3|cout~0_combout\ : std_logic;
SIGNAL \a4|ia~0_combout\ : std_logic;
SIGNAL \a4|ib~0_combout\ : std_logic;
SIGNAL \som4|sum~combout\ : std_logic;
SIGNAL \r|q4~regout\ : std_logic;
SIGNAL \som5|sum~1_combout\ : std_logic;
SIGNAL \som5|sum~0_combout\ : std_logic;
SIGNAL \som5|sum~2_combout\ : std_logic;
SIGNAL \r|q5~regout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_x <= x;
ww_y <= y;
ww_z <= z;
ww_a <= a;
ww_b <= b;
ww_ld <= ld;
ww_clk <= clk;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X42_Y32_N26
\a1|ia~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a1|ia~1_combout\ = (\a~combout\(1) & (\y~combout\ $ (((\z~combout\) # (\b~combout\(1)))))) # (!\a~combout\(1) & ((\y~combout\ & ((\z~combout\) # (\b~combout\(1)))) # (!\y~combout\ & (\z~combout\ & \b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \y~combout\,
	datac => \z~combout\,
	datad => \b~combout\(1),
	combout => \a1|ia~1_combout\);

-- Location: LCCOMB_X42_Y32_N20
\a1|ia~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a1|ia~2_combout\ = (\x~combout\ & \a1|ia~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~combout\,
	datad => \a1|ia~1_combout\,
	combout => \a1|ia~2_combout\);

-- Location: LCCOMB_X42_Y32_N6
\som1|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \som1|cout~0_combout\ = (\a1|ib~0_combout\ & ((\a1|ia~2_combout\) # ((\a1|ia~0_combout\) # (\som0|cout~3_combout\)))) # (!\a1|ib~0_combout\ & (\som0|cout~3_combout\ & ((\a1|ia~2_combout\) # (\a1|ia~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|ia~2_combout\,
	datab => \a1|ib~0_combout\,
	datac => \a1|ia~0_combout\,
	datad => \som0|cout~3_combout\,
	combout => \som1|cout~0_combout\);

-- Location: LCCOMB_X41_Y32_N24
\a3|ia~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a3|ia~0_combout\ = (!\x~combout\ & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\,
	datac => \a~combout\(3),
	combout => \a3|ia~0_combout\);

-- Location: LCCOMB_X41_Y32_N28
\a4|ia~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a4|ia~1_combout\ = (\a~combout\(4) & (\y~combout\ $ (((\z~combout\) # (\b~combout\(4)))))) # (!\a~combout\(4) & ((\z~combout\ & ((\b~combout\(4)) # (\y~combout\))) # (!\z~combout\ & (\b~combout\(4) & \y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \z~combout\,
	datac => \b~combout\(4),
	datad => \y~combout\,
	combout => \a4|ia~1_combout\);

-- Location: LCCOMB_X41_Y32_N6
\a4|ia~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a4|ia~2_combout\ = (\x~combout\ & \a4|ia~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\,
	datad => \a4|ia~1_combout\,
	combout => \a4|ia~2_combout\);

-- Location: LCCOMB_X41_Y32_N16
\som4|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \som4|cout~0_combout\ = (\som3|cout~0_combout\ & ((\a4|ia~2_combout\) # ((\a4|ia~0_combout\) # (\a4|ib~0_combout\)))) # (!\som3|cout~0_combout\ & (\a4|ib~0_combout\ & ((\a4|ia~2_combout\) # (\a4|ia~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4|ia~2_combout\,
	datab => \som3|cout~0_combout\,
	datac => \a4|ia~0_combout\,
	datad => \a4|ib~0_combout\,
	combout => \som4|cout~0_combout\);

-- Location: LCCOMB_X42_Y32_N12
\som0|sum~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \som0|sum~2_combout\ = (\y~combout\ & ((\z~combout\ & ((!\x~combout\))) # (!\z~combout\ & (!\b~combout\(0) & \x~combout\)))) # (!\y~combout\ & (((!\z~combout\ & \x~combout\)) # (!\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \z~combout\,
	datac => \x~combout\,
	datad => \y~combout\,
	combout => \som0|sum~2_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_b(5),
	combout => \b~combout\(5));

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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\z~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_z,
	combout => \z~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_x,
	combout => \x~combout\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_y,
	combout => \y~combout\);

-- Location: LCCOMB_X42_Y32_N14
\som0|sum~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \som0|sum~3_combout\ = (\x~combout\ & (\y~combout\ $ (((!\b~combout\(0) & !\z~combout\))))) # (!\x~combout\ & ((\y~combout\ & ((!\z~combout\))) # (!\y~combout\ & (\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \z~combout\,
	datac => \x~combout\,
	datad => \y~combout\,
	combout => \som0|sum~3_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X42_Y32_N0
\som0|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \som0|sum~combout\ = (\a~combout\(0) & ((!\som0|sum~3_combout\))) # (!\a~combout\(0) & (!\som0|sum~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \som0|sum~2_combout\,
	datac => \som0|sum~3_combout\,
	datad => \a~combout\(0),
	combout => \som0|sum~combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ld,
	combout => \ld~combout\);

-- Location: LCFF_X42_Y32_N1
\r|q0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \som0|sum~combout\,
	ena => \ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|q0~regout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X42_Y32_N22
\a1|ib~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a1|ib~0_combout\ = (!\y~combout\ & (!\x~combout\ & (\z~combout\ $ (\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~combout\,
	datab => \y~combout\,
	datac => \x~combout\,
	datad => \b~combout\(1),
	combout => \a1|ib~0_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X42_Y32_N8
\a1|ia~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a1|ia~0_combout\ = (!\x~combout\ & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~combout\,
	datad => \a~combout\(1),
	combout => \a1|ia~0_combout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCCOMB_X42_Y32_N18
\som0|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \som0|cout~2_combout\ = (\y~combout\ & (\a~combout\(0) & (!\z~combout\))) # (!\y~combout\ & ((\b~combout\(0) & (\a~combout\(0))) # (!\b~combout\(0) & ((\z~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \z~combout\,
	datac => \b~combout\(0),
	datad => \y~combout\,
	combout => \som0|cout~2_combout\);

-- Location: LCCOMB_X41_Y32_N14
\som0|cout~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \som0|cout~3_combout\ = (!\x~combout\ & \som0|cout~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\,
	datad => \som0|cout~2_combout\,
	combout => \som0|cout~3_combout\);

-- Location: LCCOMB_X42_Y32_N2
\som1|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \som1|sum~combout\ = \a1|ib~0_combout\ $ (\som0|cout~3_combout\ $ (((\a1|ia~2_combout\) # (\a1|ia~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|ia~2_combout\,
	datab => \a1|ib~0_combout\,
	datac => \a1|ia~0_combout\,
	datad => \som0|cout~3_combout\,
	combout => \som1|sum~combout\);

-- Location: LCFF_X42_Y32_N3
\r|q1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \som1|sum~combout\,
	ena => \ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|q1~regout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X42_Y32_N28
\a2|ia~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|ia~1_combout\ = (\a~combout\(2) & (\y~combout\ $ (((\b~combout\(2)) # (\z~combout\))))) # (!\a~combout\(2) & ((\b~combout\(2) & ((\z~combout\) # (\y~combout\))) # (!\b~combout\(2) & (\z~combout\ & \y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \z~combout\,
	datac => \a~combout\(2),
	datad => \y~combout\,
	combout => \a2|ia~1_combout\);

-- Location: LCCOMB_X42_Y32_N30
\a2|ia~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|ia~2_combout\ = (\x~combout\ & \a2|ia~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~combout\,
	datad => \a2|ia~1_combout\,
	combout => \a2|ia~2_combout\);

-- Location: LCCOMB_X42_Y32_N16
\a2|ib~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|ib~0_combout\ = (!\x~combout\ & (!\y~combout\ & (\b~combout\(2) $ (\z~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \z~combout\,
	datac => \x~combout\,
	datad => \y~combout\,
	combout => \a2|ib~0_combout\);

-- Location: LCCOMB_X42_Y32_N10
\a2|ia~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|ia~0_combout\ = (\a~combout\(2) & !\x~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(2),
	datac => \x~combout\,
	combout => \a2|ia~0_combout\);

-- Location: LCCOMB_X42_Y32_N4
\som2|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \som2|sum~combout\ = \som1|cout~0_combout\ $ (\a2|ib~0_combout\ $ (((\a2|ia~2_combout\) # (\a2|ia~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \som1|cout~0_combout\,
	datab => \a2|ia~2_combout\,
	datac => \a2|ib~0_combout\,
	datad => \a2|ia~0_combout\,
	combout => \som2|sum~combout\);

-- Location: LCFF_X42_Y32_N5
\r|q2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \som2|sum~combout\,
	ena => \ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|q2~regout\);

-- Location: LCCOMB_X41_Y32_N30
\a3|ib~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a3|ib~0_combout\ = (!\x~combout\ & (!\y~combout\ & (\b~combout\(3) $ (\z~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \z~combout\,
	datac => \x~combout\,
	datad => \y~combout\,
	combout => \a3|ib~0_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X41_Y32_N2
\a3|ia~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a3|ia~1_combout\ = (\a~combout\(3) & (\y~combout\ $ (((\b~combout\(3)) # (\z~combout\))))) # (!\a~combout\(3) & ((\b~combout\(3) & ((\z~combout\) # (\y~combout\))) # (!\b~combout\(3) & (\z~combout\ & \y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \z~combout\,
	datac => \a~combout\(3),
	datad => \y~combout\,
	combout => \a3|ia~1_combout\);

-- Location: LCCOMB_X41_Y32_N4
\a3|ia~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a3|ia~2_combout\ = (\x~combout\ & \a3|ia~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\,
	datad => \a3|ia~1_combout\,
	combout => \a3|ia~2_combout\);

-- Location: LCCOMB_X42_Y32_N24
\som2|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \som2|cout~0_combout\ = (\som1|cout~0_combout\ & ((\a2|ia~2_combout\) # ((\a2|ib~0_combout\) # (\a2|ia~0_combout\)))) # (!\som1|cout~0_combout\ & (\a2|ib~0_combout\ & ((\a2|ia~2_combout\) # (\a2|ia~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \som1|cout~0_combout\,
	datab => \a2|ia~2_combout\,
	datac => \a2|ib~0_combout\,
	datad => \a2|ia~0_combout\,
	combout => \som2|cout~0_combout\);

-- Location: LCCOMB_X41_Y32_N8
\som3|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \som3|sum~combout\ = \a3|ib~0_combout\ $ (\som2|cout~0_combout\ $ (((\a3|ia~0_combout\) # (\a3|ia~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ia~0_combout\,
	datab => \a3|ib~0_combout\,
	datac => \a3|ia~2_combout\,
	datad => \som2|cout~0_combout\,
	combout => \som3|sum~combout\);

-- Location: LCFF_X41_Y32_N9
\r|q3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \som3|sum~combout\,
	ena => \ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|q3~regout\);

-- Location: LCCOMB_X41_Y32_N22
\som3|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \som3|cout~0_combout\ = (\a3|ib~0_combout\ & ((\a3|ia~0_combout\) # ((\a3|ia~2_combout\) # (\som2|cout~0_combout\)))) # (!\a3|ib~0_combout\ & (\som2|cout~0_combout\ & ((\a3|ia~0_combout\) # (\a3|ia~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ia~0_combout\,
	datab => \a3|ib~0_combout\,
	datac => \a3|ia~2_combout\,
	datad => \som2|cout~0_combout\,
	combout => \som3|cout~0_combout\);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X41_Y32_N26
\a4|ia~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a4|ia~0_combout\ = (!\x~combout\ & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\,
	datad => \a~combout\(4),
	combout => \a4|ia~0_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCCOMB_X41_Y32_N0
\a4|ib~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a4|ib~0_combout\ = (!\x~combout\ & (!\y~combout\ & (\z~combout\ $ (\b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\,
	datab => \z~combout\,
	datac => \b~combout\(4),
	datad => \y~combout\,
	combout => \a4|ib~0_combout\);

-- Location: LCCOMB_X41_Y32_N18
\som4|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \som4|sum~combout\ = \som3|cout~0_combout\ $ (\a4|ib~0_combout\ $ (((\a4|ia~2_combout\) # (\a4|ia~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4|ia~2_combout\,
	datab => \som3|cout~0_combout\,
	datac => \a4|ia~0_combout\,
	datad => \a4|ib~0_combout\,
	combout => \som4|sum~combout\);

-- Location: LCFF_X41_Y32_N19
\r|q4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \som4|sum~combout\,
	ena => \ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|q4~regout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LCCOMB_X41_Y32_N20
\som5|sum~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \som5|sum~1_combout\ = (\x~combout\ & (\b~combout\(5) $ (((!\a~combout\(5) & !\y~combout\))))) # (!\x~combout\ & (((\y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datab => \x~combout\,
	datac => \a~combout\(5),
	datad => \y~combout\,
	combout => \som5|sum~1_combout\);

-- Location: LCCOMB_X41_Y32_N10
\som5|sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \som5|sum~0_combout\ = (\b~combout\(5) & (\x~combout\ $ (\a~combout\(5) $ (!\y~combout\)))) # (!\b~combout\(5) & (\a~combout\(5) & ((\y~combout\) # (!\x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datab => \x~combout\,
	datac => \a~combout\(5),
	datad => \y~combout\,
	combout => \som5|sum~0_combout\);

-- Location: LCCOMB_X41_Y32_N12
\som5|sum~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \som5|sum~2_combout\ = \som4|cout~0_combout\ $ (\som5|sum~0_combout\ $ (((\z~combout\ & !\som5|sum~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \som4|cout~0_combout\,
	datab => \z~combout\,
	datac => \som5|sum~1_combout\,
	datad => \som5|sum~0_combout\,
	combout => \som5|sum~2_combout\);

-- Location: LCFF_X41_Y32_N13
\r|q5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \som5|sum~2_combout\,
	ena => \ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r|q5~regout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \r|q0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(0));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \r|q1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \r|q2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \r|q3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(3));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \r|q4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(4));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \r|q5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(5));
END structure;



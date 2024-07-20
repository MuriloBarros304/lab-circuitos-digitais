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

-- DATE "07/20/2024 14:08:16"

-- 
-- Device: Altera EP2C70F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vend IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	d : OUT std_logic_vector(3 DOWNTO 0);
	out_eq : OUT std_logic;
	out_gt : OUT std_logic
	);
END vend;

-- Design Ports Information
-- d[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d[2]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d[3]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_eq	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_gt	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF vend IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_eq : std_logic;
SIGNAL ww_out_gt : std_logic;
SIGNAL \u0|s0|d~0_combout\ : std_logic;
SIGNAL \u0|s1|d~combout\ : std_logic;
SIGNAL \u0|s1|bout~0_combout\ : std_logic;
SIGNAL \u0|s2|d~combout\ : std_logic;
SIGNAL \u1|c3|out_eq~0_combout\ : std_logic;
SIGNAL \u0|s3|d~combout\ : std_logic;
SIGNAL \u1|c0|out_gt~0_combout\ : std_logic;
SIGNAL \u1|c0|out_eq~combout\ : std_logic;
SIGNAL \u1|c0|out_gt~2_combout\ : std_logic;
SIGNAL \u1|c0|out_gt~1_combout\ : std_logic;
SIGNAL \u1|c0|out_gt~3_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|c0|ALT_INV_out_eq~combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
d <= ww_d;
out_eq <= ww_out_eq;
out_gt <= ww_out_gt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u1|c0|ALT_INV_out_eq~combout\ <= NOT \u1|c0|out_eq~combout\;

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X67_Y50_N0
\u0|s0|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|s0|d~0_combout\ = \a~combout\(0) $ (\b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datad => \b~combout\(0),
	combout => \u0|s0|d~0_combout\);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X67_Y50_N18
\u0|s1|d\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|s1|d~combout\ = \b~combout\(1) $ (\a~combout\(1) $ (((!\a~combout\(0) & \b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \u0|s1|d~combout\);

-- Location: LCCOMB_X67_Y50_N12
\u0|s1|bout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|s1|bout~0_combout\ = (\b~combout\(1) & (((!\a~combout\(0) & \b~combout\(0))) # (!\a~combout\(1)))) # (!\b~combout\(1) & (!\a~combout\(0) & (\b~combout\(0) & !\a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \u0|s1|bout~0_combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X67_Y50_N22
\u0|s2|d\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|s2|d~combout\ = \u0|s1|bout~0_combout\ $ (\b~combout\(2) $ (\a~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s1|bout~0_combout\,
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	combout => \u0|s2|d~combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X67_Y50_N24
\u1|c3|out_eq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|c3|out_eq~0_combout\ = \b~combout\(3) $ (\a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \u1|c3|out_eq~0_combout\);

-- Location: LCCOMB_X67_Y50_N2
\u0|s3|d\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|s3|d~combout\ = \u1|c3|out_eq~0_combout\ $ (((\a~combout\(2) & (\b~combout\(2) & \u0|s1|bout~0_combout\)) # (!\a~combout\(2) & ((\b~combout\(2)) # (\u0|s1|bout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|c3|out_eq~0_combout\,
	datab => \a~combout\(2),
	datac => \b~combout\(2),
	datad => \u0|s1|bout~0_combout\,
	combout => \u0|s3|d~combout\);

-- Location: LCCOMB_X67_Y50_N28
\u1|c0|out_gt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|c0|out_gt~0_combout\ = (\b~combout\(3) & (\a~combout\(3) & (\b~combout\(2) $ (!\a~combout\(2))))) # (!\b~combout\(3) & (!\a~combout\(3) & (\b~combout\(2) $ (!\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(3),
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	combout => \u1|c0|out_gt~0_combout\);

-- Location: LCCOMB_X67_Y50_N6
\u1|c0|out_eq\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|c0|out_eq~combout\ = (\u0|s0|d~0_combout\) # ((\b~combout\(1) $ (\a~combout\(1))) # (!\u1|c0|out_gt~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|s0|d~0_combout\,
	datab => \u1|c0|out_gt~0_combout\,
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \u1|c0|out_eq~combout\);

-- Location: LCCOMB_X67_Y50_N26
\u1|c0|out_gt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|c0|out_gt~2_combout\ = (\b~combout\(1) & (\a~combout\(0) & (!\b~combout\(0) & \a~combout\(1)))) # (!\b~combout\(1) & ((\a~combout\(1)) # ((\a~combout\(0) & !\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \u1|c0|out_gt~2_combout\);

-- Location: LCCOMB_X67_Y50_N8
\u1|c0|out_gt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|c0|out_gt~1_combout\ = (\b~combout\(3) & (\a~combout\(3) & (!\b~combout\(2) & \a~combout\(2)))) # (!\b~combout\(3) & ((\a~combout\(3)) # ((!\b~combout\(2) & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(3),
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	combout => \u1|c0|out_gt~1_combout\);

-- Location: LCCOMB_X67_Y50_N20
\u1|c0|out_gt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|c0|out_gt~3_combout\ = (\u1|c0|out_gt~1_combout\) # ((\u1|c0|out_gt~2_combout\ & \u1|c0|out_gt~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|c0|out_gt~2_combout\,
	datac => \u1|c0|out_gt~1_combout\,
	datad => \u1|c0|out_gt~0_combout\,
	combout => \u1|c0|out_gt~3_combout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \u0|s0|d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d(0));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \u0|s1|d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d(1));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \u0|s2|d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d(2));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \u0|s3|d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d(3));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_eq~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \u1|c0|ALT_INV_out_eq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_eq);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_gt~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \u1|c0|out_gt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_gt);
END structure;



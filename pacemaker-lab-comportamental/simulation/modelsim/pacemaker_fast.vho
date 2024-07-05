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

-- DATE "07/05/2024 09:11:07"

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

ENTITY 	pacemaker IS
    PORT (
	s : IN std_logic;
	clk : IN std_logic;
	z : IN std_logic;
	p : OUT std_logic;
	t : OUT std_logic
	);
END pacemaker;

-- Design Ports Information
-- p	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- t	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- z	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pacemaker IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_p : std_logic;
SIGNAL ww_t : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \s~combout\ : std_logic;
SIGNAL \z~combout\ : std_logic;
SIGNAL \t$latch~combout\ : std_logic;
SIGNAL \currentstate~6_combout\ : std_logic;
SIGNAL \currentstate~8_combout\ : std_logic;
SIGNAL \currentstate.RstTimer~regout\ : std_logic;
SIGNAL \currentstate~7_combout\ : std_logic;
SIGNAL \currentstate.WaitS~regout\ : std_logic;
SIGNAL \currentstate~5_combout\ : std_logic;
SIGNAL \currentstate.Pace~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \p$latch~combout\ : std_logic;

BEGIN

ww_s <= s;
ww_clk <= clk;
ww_z <= z;
p <= ww_p;
t <= ww_t;
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_s,
	combout => \s~combout\);

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

-- Location: LCCOMB_X30_Y34_N20
\t$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \t$latch~combout\ = (\currentstate.Pace~regout\ & (\t$latch~combout\)) # (!\currentstate.Pace~regout\ & ((!\currentstate.WaitS~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentstate.Pace~regout\,
	datac => \t$latch~combout\,
	datad => \currentstate.WaitS~regout\,
	combout => \t$latch~combout\);

-- Location: LCCOMB_X30_Y34_N28
\currentstate~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \currentstate~6_combout\ = (!\t$latch~combout\ & (!\z~combout\ & (!\s~combout\ & \currentstate.WaitS~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t$latch~combout\,
	datab => \z~combout\,
	datac => \s~combout\,
	datad => \currentstate.WaitS~regout\,
	combout => \currentstate~6_combout\);

-- Location: LCCOMB_X30_Y34_N26
\currentstate~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \currentstate~8_combout\ = (!\currentstate.Pace~regout\ & (!\t$latch~combout\ & ((!\currentstate.WaitS~regout\) # (!\s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentstate.Pace~regout\,
	datab => \t$latch~combout\,
	datac => \s~combout\,
	datad => \currentstate.WaitS~regout\,
	combout => \currentstate~8_combout\);

-- Location: LCFF_X30_Y34_N27
\currentstate.RstTimer\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \currentstate~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentstate.RstTimer~regout\);

-- Location: LCCOMB_X30_Y34_N30
\currentstate~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \currentstate~7_combout\ = (\currentstate~6_combout\) # ((!\t$latch~combout\ & !\currentstate.RstTimer~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t$latch~combout\,
	datac => \currentstate~6_combout\,
	datad => \currentstate.RstTimer~regout\,
	combout => \currentstate~7_combout\);

-- Location: LCFF_X30_Y34_N31
\currentstate.WaitS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \currentstate~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentstate.WaitS~regout\);

-- Location: LCCOMB_X30_Y34_N22
\currentstate~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \currentstate~5_combout\ = (!\t$latch~combout\ & (!\s~combout\ & (\z~combout\ & \currentstate.WaitS~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t$latch~combout\,
	datab => \s~combout\,
	datac => \z~combout\,
	datad => \currentstate.WaitS~regout\,
	combout => \currentstate~5_combout\);

-- Location: LCFF_X30_Y34_N23
\currentstate.Pace\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \currentstate~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentstate.Pace~regout\);

-- Location: LCCOMB_X30_Y34_N14
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\currentstate.Pace~regout\) # ((\s~combout\ & \currentstate.WaitS~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\,
	datab => \currentstate.Pace~regout\,
	datad => \currentstate.WaitS~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X30_Y34_N24
\p$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \p$latch~combout\ = (\Selector0~0_combout\ & ((\currentstate.Pace~regout\))) # (!\Selector0~0_combout\ & (\p$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p$latch~combout\,
	datac => \Selector0~0_combout\,
	datad => \currentstate.Pace~regout\,
	combout => \p$latch~combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \p$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\t~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \t$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_t);
END structure;



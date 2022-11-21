-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "11/21/2022 23:50:38"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	igbt_module IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	signal_a_in : IN std_logic;
	signal_b_in : IN std_logic;
	signal_a_out : OUT std_logic;
	signal_b_out : OUT std_logic;
	led_a_out : OUT std_logic;
	led_b_out : OUT std_logic
	);
END igbt_module;

-- Design Ports Information


ARCHITECTURE structure OF igbt_module IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_signal_a_in : std_logic;
SIGNAL ww_signal_b_in : std_logic;
SIGNAL ww_signal_a_out : std_logic;
SIGNAL ww_signal_b_out : std_logic;
SIGNAL ww_led_a_out : std_logic;
SIGNAL ww_led_b_out : std_logic;
SIGNAL \signal_b_in~combout\ : std_logic;
SIGNAL \signal_a_in~combout\ : std_logic;
SIGNAL \a_and_b_out_signal~combout\ : std_logic;
SIGNAL \chiqish_dff|Q~regout\ : std_logic;
SIGNAL \signal_a_out~0_combout\ : std_logic;
SIGNAL \signal_b_out~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_signal_a_in <= signal_a_in;
ww_signal_b_in <= signal_b_in;
signal_a_out <= ww_signal_a_out;
signal_b_out <= ww_signal_b_out;
led_a_out <= ww_led_a_out;
led_b_out <= ww_led_b_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\signal_b_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_signal_b_in,
	combout => \signal_b_in~combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\signal_a_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_signal_a_in,
	combout => \signal_a_in~combout\);

-- Location: LC_X2_Y1_N4
a_and_b_out_signal : maxii_lcell
-- Equation(s):
-- \a_and_b_out_signal~combout\ = LCELL((((!\signal_b_in~combout\ & !\signal_a_in~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \signal_b_in~combout\,
	datad => \signal_a_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a_and_b_out_signal~combout\);

-- Location: LC_X2_Y1_N9
\chiqish_dff|Q\ : maxii_lcell
-- Equation(s):
-- \chiqish_dff|Q~regout\ = DFFEAS((((!\chiqish_dff|Q~regout\))), \a_and_b_out_signal~combout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \a_and_b_out_signal~combout\,
	datad => \chiqish_dff|Q~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \chiqish_dff|Q~regout\);

-- Location: LC_X2_Y1_N2
\signal_a_out~0\ : maxii_lcell
-- Equation(s):
-- \signal_a_out~0_combout\ = ((\chiqish_dff|Q~regout\ & (\a_and_b_out_signal~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \chiqish_dff|Q~regout\,
	datac => \a_and_b_out_signal~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_a_out~0_combout\);

-- Location: LC_X2_Y1_N6
\signal_b_out~0\ : maxii_lcell
-- Equation(s):
-- \signal_b_out~0_combout\ = ((!\chiqish_dff|Q~regout\ & (\a_and_b_out_signal~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \chiqish_dff|Q~regout\,
	datac => \a_and_b_out_signal~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \signal_b_out~0_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\signal_a_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \signal_a_out~0_combout\,
	oe => VCC,
	padio => ww_signal_a_out);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\signal_b_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \signal_b_out~0_combout\,
	oe => VCC,
	padio => ww_signal_b_out);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_a_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led_a_out);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_b_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led_b_out);
END structure;



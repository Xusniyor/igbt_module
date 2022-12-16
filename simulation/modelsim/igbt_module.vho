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

-- DATE "11/25/2022 22:33:47"

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
	signal_a_out : BUFFER std_logic;
	signal_b_out : BUFFER std_logic;
	led_a_out : BUFFER std_logic;
	led_b_out : BUFFER std_logic
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
SIGNAL \signal_a_in~combout\ : std_logic;
SIGNAL \in_module_inst|DFF_inst~regout\ : std_logic;
SIGNAL \signal_b_in~combout\ : std_logic;
SIGNAL \in_module_inst|DFF_inst7~regout\ : std_logic;
SIGNAL \in_module_inst|DFF_inst2~regout\ : std_logic;
SIGNAL \in_module_inst|DFF_inst9~regout\ : std_logic;
SIGNAL \in_module_inst|SYNTHESIZED_WIRE_26\ : std_logic;
SIGNAL \in_module_inst|SYNTHESIZED_WIRE_24\ : std_logic;
SIGNAL \in_module_inst|out_ab~combout\ : std_logic;
SIGNAL \out_module_inst|SYNTHESIZED_WIRE_2~regout\ : std_logic;
SIGNAL \out_module_inst|out_a~combout\ : std_logic;
SIGNAL \out_module_inst|out_b~combout\ : std_logic;

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

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\signal_a_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_signal_a_in,
	combout => \signal_a_in~combout\);

-- Location: LC_X2_Y3_N9
\in_module_inst|DFF_inst\ : maxii_lcell
-- Equation(s):
-- \in_module_inst|DFF_inst~regout\ = DFFEAS(VCC, GLOBAL(\in_module_inst|SYNTHESIZED_WIRE_24\), !GLOBAL(\in_module_inst|SYNTHESIZED_WIRE_26\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \in_module_inst|SYNTHESIZED_WIRE_24\,
	aclr => \in_module_inst|SYNTHESIZED_WIRE_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \in_module_inst|DFF_inst~regout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\signal_b_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_signal_b_in,
	combout => \signal_b_in~combout\);

-- Location: LC_X2_Y3_N0
\in_module_inst|DFF_inst7\ : maxii_lcell
-- Equation(s):
-- \in_module_inst|DFF_inst7~regout\ = DFFEAS(VCC, GLOBAL(\in_module_inst|SYNTHESIZED_WIRE_26\), !GLOBAL(\in_module_inst|SYNTHESIZED_WIRE_24\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \in_module_inst|SYNTHESIZED_WIRE_26\,
	aclr => \in_module_inst|SYNTHESIZED_WIRE_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \in_module_inst|DFF_inst7~regout\);

-- Location: LC_X2_Y3_N1
\in_module_inst|DFF_inst2\ : maxii_lcell
-- Equation(s):
-- \in_module_inst|SYNTHESIZED_WIRE_26\ = LCELL((!\signal_a_in~combout\ & (((!B1_DFF_inst2 & !\in_module_inst|DFF_inst9~regout\)))))
-- \in_module_inst|DFF_inst2~regout\ = DFFEAS(\in_module_inst|SYNTHESIZED_WIRE_26\, GLOBAL(\in_module_inst|SYNTHESIZED_WIRE_24\), !GLOBAL(\in_module_inst|SYNTHESIZED_WIRE_26\), , , \in_module_inst|DFF_inst~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \in_module_inst|SYNTHESIZED_WIRE_24\,
	dataa => \signal_a_in~combout\,
	datac => \in_module_inst|DFF_inst~regout\,
	datad => \in_module_inst|DFF_inst9~regout\,
	aclr => \in_module_inst|SYNTHESIZED_WIRE_26\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \in_module_inst|SYNTHESIZED_WIRE_26\,
	regout => \in_module_inst|DFF_inst2~regout\);

-- Location: LC_X2_Y3_N8
\in_module_inst|DFF_inst9\ : maxii_lcell
-- Equation(s):
-- \in_module_inst|SYNTHESIZED_WIRE_24\ = LCELL(((!\signal_b_in~combout\ & (!B1_DFF_inst9 & !\in_module_inst|DFF_inst2~regout\))))
-- \in_module_inst|DFF_inst9~regout\ = DFFEAS(\in_module_inst|SYNTHESIZED_WIRE_24\, GLOBAL(\in_module_inst|SYNTHESIZED_WIRE_26\), !GLOBAL(\in_module_inst|SYNTHESIZED_WIRE_24\), , , \in_module_inst|DFF_inst7~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \in_module_inst|SYNTHESIZED_WIRE_26\,
	datab => \signal_b_in~combout\,
	datac => \in_module_inst|DFF_inst7~regout\,
	datad => \in_module_inst|DFF_inst2~regout\,
	aclr => \in_module_inst|SYNTHESIZED_WIRE_24\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \in_module_inst|SYNTHESIZED_WIRE_24\,
	regout => \in_module_inst|DFF_inst9~regout\);

-- Location: LC_X2_Y3_N2
\in_module_inst|out_ab\ : maxii_lcell
-- Equation(s):
-- \in_module_inst|out_ab~combout\ = LCELL(((\in_module_inst|SYNTHESIZED_WIRE_24\) # ((\in_module_inst|SYNTHESIZED_WIRE_26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \in_module_inst|SYNTHESIZED_WIRE_24\,
	datad => \in_module_inst|SYNTHESIZED_WIRE_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \in_module_inst|out_ab~combout\);

-- Location: LC_X3_Y3_N2
\out_module_inst|SYNTHESIZED_WIRE_2\ : maxii_lcell
-- Equation(s):
-- \out_module_inst|SYNTHESIZED_WIRE_2~regout\ = DFFEAS((((!\out_module_inst|SYNTHESIZED_WIRE_2~regout\))), \in_module_inst|out_ab~combout\, VCC, , , , , , )

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
	clk => \in_module_inst|out_ab~combout\,
	datad => \out_module_inst|SYNTHESIZED_WIRE_2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \out_module_inst|SYNTHESIZED_WIRE_2~regout\);

-- Location: LC_X3_Y3_N9
\out_module_inst|out_a\ : maxii_lcell
-- Equation(s):
-- \out_module_inst|out_a~combout\ = (((\out_module_inst|SYNTHESIZED_WIRE_2~regout\ & \in_module_inst|out_ab~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \out_module_inst|SYNTHESIZED_WIRE_2~regout\,
	datad => \in_module_inst|out_ab~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out_module_inst|out_a~combout\);

-- Location: LC_X3_Y3_N5
\out_module_inst|out_b\ : maxii_lcell
-- Equation(s):
-- \out_module_inst|out_b~combout\ = (((!\out_module_inst|SYNTHESIZED_WIRE_2~regout\ & \in_module_inst|out_ab~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \out_module_inst|SYNTHESIZED_WIRE_2~regout\,
	datad => \in_module_inst|out_ab~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \out_module_inst|out_b~combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\signal_a_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out_module_inst|out_a~combout\,
	oe => VCC,
	padio => ww_signal_a_out);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\signal_b_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \out_module_inst|out_b~combout\,
	oe => VCC,
	padio => ww_signal_b_out);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_a_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led_a_out);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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



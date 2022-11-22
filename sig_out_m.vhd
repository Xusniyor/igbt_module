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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"
-- CREATED		"Wed Nov 23 03:02:09 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY sig_out_m IS 
	PORT
	(
		in_ab :  IN  STD_LOGIC;
		out_a :  OUT  STD_LOGIC;
		out_b :  OUT  STD_LOGIC
	);
END sig_out_m;

ARCHITECTURE bdf_type OF sig_out_m IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



PROCESS(in_ab)
BEGIN
IF (RISING_EDGE(in_ab)) THEN
	SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= NOT(SYNTHESIZED_WIRE_2);



SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_2);



out_a <= in_ab AND SYNTHESIZED_WIRE_2;


out_b <= SYNTHESIZED_WIRE_1 AND in_ab;


END bdf_type;
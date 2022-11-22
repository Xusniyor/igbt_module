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
-- CREATED		"Wed Nov 23 02:52:26 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY sig_in_m IS 
	PORT
	(
		in_a :  IN  STD_LOGIC;
		in_b :  IN  STD_LOGIC;
		out_ab :  OUT  STD_LOGIC
	);
END sig_in_m;

ARCHITECTURE bdf_type OF sig_in_m IS 

SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	DFF_inst2 :  STD_LOGIC;
SIGNAL	DFF_inst9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	DFF_inst :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	DFF_inst7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_2 <= '1';
SYNTHESIZED_WIRE_3 <= '1';
SYNTHESIZED_WIRE_12 <= '1';
SYNTHESIZED_WIRE_18 <= '1';
SYNTHESIZED_WIRE_19 <= '1';
SYNTHESIZED_WIRE_22 <= '1';



PROCESS(SYNTHESIZED_WIRE_24,SYNTHESIZED_WIRE_23,SYNTHESIZED_WIRE_3)
BEGIN
IF (SYNTHESIZED_WIRE_23 = '0') THEN
	DFF_inst <= '0';
ELSIF (SYNTHESIZED_WIRE_3 = '0') THEN
	DFF_inst <= '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_24)) THEN
	DFF_inst <= SYNTHESIZED_WIRE_2;
END IF;
END PROCESS;





SYNTHESIZED_WIRE_24 <= SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_25;


SYNTHESIZED_WIRE_26 <= SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_25;


SYNTHESIZED_WIRE_9 <= DFF_inst2 OR DFF_inst9;


SYNTHESIZED_WIRE_27 <= NOT(SYNTHESIZED_WIRE_24);



SYNTHESIZED_WIRE_25 <= NOT(SYNTHESIZED_WIRE_9);



SYNTHESIZED_WIRE_4 <= NOT(in_b);



PROCESS(SYNTHESIZED_WIRE_24,SYNTHESIZED_WIRE_23,SYNTHESIZED_WIRE_12)
BEGIN
IF (SYNTHESIZED_WIRE_23 = '0') THEN
	DFF_inst2 <= '0';
ELSIF (SYNTHESIZED_WIRE_12 = '0') THEN
	DFF_inst2 <= '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_24)) THEN
	DFF_inst2 <= DFF_inst;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_6 <= NOT(in_a);



SYNTHESIZED_WIRE_23 <= NOT(SYNTHESIZED_WIRE_26);



out_ab <= SYNTHESIZED_WIRE_24 OR SYNTHESIZED_WIRE_26;




PROCESS(SYNTHESIZED_WIRE_26,SYNTHESIZED_WIRE_27,SYNTHESIZED_WIRE_19)
BEGIN
IF (SYNTHESIZED_WIRE_27 = '0') THEN
	DFF_inst7 <= '0';
ELSIF (SYNTHESIZED_WIRE_19 = '0') THEN
	DFF_inst7 <= '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_26)) THEN
	DFF_inst7 <= SYNTHESIZED_WIRE_18;
END IF;
END PROCESS;



PROCESS(SYNTHESIZED_WIRE_26,SYNTHESIZED_WIRE_27,SYNTHESIZED_WIRE_22)
BEGIN
IF (SYNTHESIZED_WIRE_27 = '0') THEN
	DFF_inst9 <= '0';
ELSIF (SYNTHESIZED_WIRE_22 = '0') THEN
	DFF_inst9 <= '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_26)) THEN
	DFF_inst9 <= DFF_inst7;
END IF;
END PROCESS;


END bdf_type;
-- ---------------------------------------------
--
-- IGBT Module cantrol Logic
--
-- ---------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library work;

entity igbt_module is
	port 
	(
		clk	    : in std_logic; -- kristal 50MHz
		reset     : in std_logic; -- reset knopka (agar bo`lsa)
		signal_a_in	 : in std_logic; -- a kanal kirish
		signal_b_in	 : in std_logic; -- b kanal kirish
		signal_a_out : out std_logic; -- a kanal chiqish
		signal_b_out : out std_logic; -- b kanal chiqish
		led_a_out : out std_logic; -- a chiroqcha
		led_b_out : out std_logic  -- b chiroqcha
	);
end entity;

architecture rtl of igbt_module is
-- Kirish qisim
signal a_and_b_in_signal  : std_logic := '0'; -- a va b signalani qo`shish
-- O`rta qisim
signal a_and_b_out_signal : std_logic := '0'; -- a va b qo`shilgan signallar
-- Chiqish qisim
signal dff_q_not : std_logic := '0';

begin
	-- Kirish
	a_and_b_in_signal <= (not signal_a_in) and (not signal_b_in);
	-- ------
	-- Ichki
	a_and_b_out_signal <= a_and_b_in_signal;
	-- ------
	-- Chiqish
	signal_a_out <= a_and_b_out_signal and dff_q_not;
	signal_b_out <= a_and_b_out_signal and (not dff_q_not);
	-- ------
	
	chiqish_dff : entity work.dFlipFlop
	port map (
		D 		=> not dff_q_not,
		Clk 	=> a_and_b_out_signal,
		Reset => '0',
		Q 		=> dff_q_not
	);

	process (clk, reset)
	begin
		if (reset = '1') then

		elsif (rising_edge(clk)) then

		end if;
	end process;

end rtl;

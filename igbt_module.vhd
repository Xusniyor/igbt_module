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

signal ab_sig : std_logic := '0';

begin

	in_module_inst : entity work.sig_in_m
	port map (
		in_a 		=> signal_a_in,
		in_b 		=> signal_b_in,
		out_ab 	=> ab_sig
	);
	
	out_module_inst : entity work.sig_out_m
	port map (
		in_ab => ab_sig,
		out_a => signal_a_out,
		out_b => signal_b_out
	);
	
	process (clk, reset)
	begin
		if (reset = '1') then

		elsif (rising_edge(clk)) then

		end if;
	end process;

end rtl;

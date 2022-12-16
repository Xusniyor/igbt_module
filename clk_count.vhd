library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clk_count is
	port (
		clk   in  : std_logic;
		reset in  : std_logic;
		sig   in  : std_logic;
		cler  in  : std_logic;
		allc  out : natural range 0 to 5000000;
		rtim  out : natural range 0 to 5000000;
		ftim  out : natural range 0 to 5000000
	);
end clk_count;

architecture rtl of clk_count is

begin

	process (clk, reset)
	begin
		if (reset = '0') then
			
		elsif (rising_edge(clk)) then
			
		end if;
	end process;

end rtl;


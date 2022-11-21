-- FPGA projects using VHDL/ VHDL 
-- fpga4student.com
-- VHDL code for D Flip FLop
-- VHDL code for Rising edge D flip flop with Asynchronous Reset high
Library IEEE;
USE IEEE.Std_logic_1164.all;

entity dFlipFlop is 
   port(
		D     : in std_logic;
		Clk   : in std_logic;
		Reset : in std_logic;
		Q     : out std_logic
   );
end dFlipFlop;

architecture Behavioral of dFlipFlop is  
begin
	process (Clk,reset)
	begin 
		if (Reset='1') then 
			Q <= '0';
		elsif (rising_edge(Clk)) then
			Q <= D;
		end if;
	end process;
end Behavioral;
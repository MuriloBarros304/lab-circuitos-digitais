library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
	port(   si: in std_logic_vector(1 downto 0);
			 A: in std_logic_vector(15 downto 0);
			 B: in std_logic_vector(15 downto 0);
			 S: out std_logic_vector(15 downto 0));
end alu;

architecture behavior of alu is

begin 

	process(si, A, B)
	
	begin
	
		if (si = "00") then
			S <= A;
		elsif (si = "01") then
			S <= std_logic_vector(unsigned(A) + unsigned(B));
		elsif (si = "10") then
			S <= std_logic_vector(unsigned(A) - unsigned(B));
		else
			S <= (others => '0');
		end if;
		
	end process;
	
end behavior;
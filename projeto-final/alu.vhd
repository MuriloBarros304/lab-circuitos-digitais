library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
	port(   s0: in bit;
			s1: in bit;
			 A: in std_logic_vector(15 downto 0);
			 B: in std_logic_vector(15 downto 0);
			 S: out std_logic_vector(15 downto 0));
end alu;

architecture behavior of alu is

begin 

	process(s0, s1, A, B)
	
	begin
	
		if (s0 = '0' and s1 = '0') then
			S <= A;
		elsif (s0 = '0' and s1 = '1') then
			S <= std_logic_vector(unsigned(A) + unsigned(B));
		elsif (s0 = '1' and s1 = '0') then
			S <= std_logic_vector(unsigned(A) - unsigned(B));
		else
			S <= (others => '0');
		end if;
		
	end process;
	
end behavior;
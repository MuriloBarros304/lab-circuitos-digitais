Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity comparator16 is
  port( A: in std_logic_vector(15 downto 0); 
		  B: in std_logic_vector(15 downto 0);
		 gt: out std_logic;
		 eq: out std_logic);
end comparator16;
 
architecture behavior of comparator16 is
begin
	gt <= '1' when (A > B)
	else '0';
	eq <= '1' when (A = B)
	else '0';
end behavior;

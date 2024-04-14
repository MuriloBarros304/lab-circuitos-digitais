-- Portas lógicas
library ieee;
use ieee.std_logic_1164.all;

entity d7s is
    port(a1, a2, a3, a4 : in bit;
   	 s0, s1, s2, s3, s4, s5, s6 : out bit
   	 );
end d7s;    
architecture behav of d7s is
begin
    s0 <= (not(a4) and not(a2)) and (a3 xor a1);
	 s1 <= (not(a4) and a3) and (a2 xor a1);
	 s2 <= not(a4) and not(a3) and a2 and a1;
	 s3 <= (not(a4) and not(a2) and ((a3 xor a1) or (a3 and a1))) or (a4 and not(a3) and a2 and a1);
	 s4 <= (not(a4) and ((not(a3) and a1) or (a3 and not(a2)))) or (a4 and not(a3) and a2 and a1);
	 s5 <= not(a4) and ((not(a3) and (a2 xor a1)) or (a1 and (a3 xor a2)));
	 s6 <= not(a4) and not(a2) and (not(a3) or (a3 and a1));
end architecture behav;

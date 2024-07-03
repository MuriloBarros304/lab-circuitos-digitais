library ieee;
use ieee.std_logic_1164.all;
entity comb_circ is
	port(t, c, current1, current0 : in bit;
		next1, next0, p : out bit);
	end comb_circ;
architecture behav of comb_circ is
begin
	t <= not(current1 and current0);
	p <= not(current0) and current1;
	next1 <= 
end architecture behav;
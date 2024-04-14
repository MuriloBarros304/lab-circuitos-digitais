-- Portas lógicas
library ieee;
use ieee.std_logic_1164.all;

entity mux2x1PL is
	port(I0, I1, S0 : in bit;
		d : out bit
		);
end mux2x1PL;	
architecture hardware of mux2x1PL is
begin
	d <= (I1 and S0)or(I0 and not(S0)); 
end architecture hardware;

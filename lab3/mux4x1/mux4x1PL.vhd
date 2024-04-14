-- portas lógicas
library ieee;
use ieee.std_logic_1164.all;

entity mux4x1PL is
	port(I0, I1, I2, I3, S0, S1 : in bit;
		d : out bit
		);
end mux4x1PL;	
architecture hardware of mux4x1PL is
begin
	d <= (I0 and (not(S1)) and (not(S0))) or (I0 and (not(S1)) and S0) or (I2 and S1 and (not(S0))) or (I3 and S1 and S0);
end architecture hardware;
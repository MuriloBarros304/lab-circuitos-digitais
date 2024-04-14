-- Comportamental
library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
	port(I0, I1, S0 : in bit;
		d : out bit
		);
end mux2x1;	
architecture hardware of mux2x1 is
begin
with S0 select
	d <= I0 when '0',
		  I1 when '1';
end architecture hardware;

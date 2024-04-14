-- comportamental
library ieee;
use ieee.std_logic_1164.all;

entity mux4x1 is
	port(I0, I1, I2, I3, S0, S1 : in bit_vector(3 downto 0);
		d : out bit;
		S : in bit_vector(1 downto 0)
		);
end mux4x1;	
architecture hardware of mux4x1 is
signal in_aux : bit_vector(1 downto 0);
begin
in_aux <= S0 & S1;
with in_aux select
	d <= I0 when '00',
		  I1 when '01',
		  I2 when '10',
		  I3 when '11';
end architecture hardware;

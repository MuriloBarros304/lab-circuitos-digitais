-- portas lógicas
library ieee;
use ieee.std_logic_1164.all;

entity mux4x1pl is
    port(I0, I1, I2, I3, S0, S1 : in bit;
   	 d : out bit
   	 );
end mux4x1pl;    
architecture hardware of mux4x1pl is
	signal c1 : bit;
	signal c2 : bit;
   component mux2x1pl is
	port(en0, en1, s : in bit;
	o : out bit
	);
	end component;
begin
	u1: mux2x1pl port map(en0 => I0, en1 => I1, s => S0, o => c1);
	u2: mux2x1pl port map(en0 => I2, en1 => I3, s => S0, o => c2);
	u3: mux2x1pl port map(en0 => c1, en1 => c2, s => S1, o => d);
end architecture hardware;

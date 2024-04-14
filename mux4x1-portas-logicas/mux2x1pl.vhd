library ieee;
use ieee.std_logic_1164.all;

entity mux2x1pl is
    port(en0, en1, s : in bit;
   	 o : out bit
   	 );
end mux2x1pl;    
architecture hardware of mux2x1pl is
begin
	o <= (en1 and s)or(en0 and not(s));
end architecture hardware;
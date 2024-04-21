-- Maquina de estado
library ieee;
use ieee.std_logic_1164.all;
ENTITY mde IS
	PORT(s: IN BIT_VECTOR(2 DOWNTO 0);
	Sa, Sv, Za, Zv: IN BIT;
	Pa, Pv, Ta, Tv: OUT BIT;
	n: out BIT_VECTOR(2 DOWNTO 0));
END mde;

ARCHITECTURE ckt OF mde IS
	BEGIN
			Pa <= s(1) AND NOT s(0);
			Pv <= s(2) AND  s(0);
			Ta <= NOT s(2) AND NOT s(1) AND NOT s(0);
			Tv <= s(1) AND s(0);
			n(2) <= (s(1) AND s(0)) OR (s(2)AND NOT s(0) AND NOT Sv);
			n(1) <= (NOT s(2) AND NOT s(1) AND s(0) AND Za) OR (NOT s(2) and not s(1) AND s(0) AND Sa) OR (s(1) AND NOT s(0));
			n(0) <= (NOT s(2) and not s(1) AND NOT Za) OR (NOT s(2) AND NOT s(0)) OR (NOT s(0) AND NOT Sv AND Zv) OR (NOT s(2) AND NOT s(1) AND Sa);
END ckt;
	
library ieee;
use ieee.std_logic_1164.all;

entity d7segcomp is
	PORT(E0, E1, E2, E3: IN BIT;
	Y0,Y1,Y2,Y3,Y4,Y5,Y6 : OUT BIT);
	end d7segcomp;
	 
architecture hardware of d7segcomp is
	SIGNAL out_aux: BIT_VECTOR(6 DOWNTO 0);
	SIGNAL in_aux : BIT_VECTOR(3 DOWNTO 0);
BEGIN
	in_aux <= E3 & E2 & E1 & E0 ; -- Usado para concatenar os sinais de entrada
WITH in_aux SELECT
	out_aux <=  "1000000" WHEN "0000",   -- s6 s5 s4 s3 s2 s1 s0 -- A3 A2 A1 A0
					"1111001" WHEN "0001",                           -- E0 E1 E2 E3
					"0100100" WHEN "0010",
					"0110000" WHEN "0011",
					"0011001" WHEN "0100",
					"0010010" WHEN "0101",
					"0000010" WHEN "0110",
					"1111000" WHEN "0111",
					"0000000" WHEN "1000",
					"0011000" WHEN "1001",
					"1111111" WHEN OTHERS;
	Y0 <= out_aux(0);
	Y1 <= out_aux(1);
	Y2 <= out_aux(2);
	Y3 <= out_aux(3);
	Y4 <= out_aux(4);
	Y5 <= out_aux(5);
	Y6 <= out_aux(6);
	end hardware;
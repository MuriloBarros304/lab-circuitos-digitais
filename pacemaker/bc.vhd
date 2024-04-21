--Logica combinancional
library ieee;
use ieee.std_logic_1164.all;
ENTITY bc IS
	PORT(Sa, Sv, Za, Zv, clk: IN BIT;
			Pa, Pv, Ta, Tv: OUT BIT);
END bc;

ARCHITECTURE ckt OF bc IS

	COMPONENT mde IS
		PORT(s: IN BIT_VECTOR(2 DOWNTO 0);
			Sa, Sv, Za, Zv: IN BIT;
			Pa, Pv, Ta, Tv: OUT BIT;
			n: out BIT_VECTOR(2 DOWNTO 0));
	END COMPONENT;

	COMPONENT reg IS
		PORT (s: IN BIT_VECTOR(2 DOWNTO 0);
			clk: IN BIT;
			n: OUT BIT_VECTOR(2 DOWNTO 0));
	END COMPONENT;

	SIGNAL sig_s, sig_n: BIT_VECTOR(2 DOWNTO 0);
	
	BEGIN
		mde_0: mde PORT MAP(
			s => sig_s,
			Sa => Sa,
			Sv => Sv,
			Za => Zv,
			Zv => Zv,
			Pa => Pa,
			Pv => Pv,
			Ta => Ta,
			Tv => Tv,
			n => sig_n
		);
		reg_0: reg PORT MAP(
			s => sig_n,
			clk => clk,
			n => sig_s
		);
END ckt;
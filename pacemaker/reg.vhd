--Registrador
library ieee;
use ieee.std_logic_1164.all;
ENTITY reg IS
	PORT (s: IN BIT_VECTOR(2 DOWNTO 0);
			clk: IN BIT;
			n: OUT BIT_VECTOR(2 DOWNTO 0));
END reg;	

ARCHITECTURE ckt OF reg IS
	COMPONENT ffd IS
		PORT(clk, d, p, c: IN BIT;
			  q: OUT BIT);
	END COMPONENT;
	
	BEGIN
		ffd_0: ffd PORT MAP(clk => clk,
			d => s(0),
			p => '1',
			c => '1',
			q => n(0)
		);

		ffd_1: ffd PORT MAP(clk => clk,
			d => s(1),
			p => '1',
			c => '1',
			q => n(1)
		);
		
		ffd_2: ffd PORT MAP(clk => clk,
			d => s(2),
			p => '1',
			c => '1',
			q => n(2)
		);
END ckt;
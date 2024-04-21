-- Flip-flop
library ieee;
use ieee.std_logic_1164.all;
ENTITY ffd IS
	PORT(clk, d, p, c : IN BIT;
		q: OUT BIT);
END ffd;

ARCHITECTURE ckt OF ffd IS
		SIGNAL qS: BIT;
BEGIN
	PROCESS (clk, p, c)
		BEGIN
			IF p = '0' THEN qS <= '1';
			ELSIF  c = '0' THEN qS <= '0';
			ELSIF clk = '1' AND clk ' EVENT THEN
			qS <= d;
			END IF;
	END PROCESS;
q <= qS;
END ckt;
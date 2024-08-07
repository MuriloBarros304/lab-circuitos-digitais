library ieee;
use ieee.std_logic_1164.all;

entity circ_comb is
	port(s_bat, fim_temp, c, current1, current0: IN BIT;
			next1, next0, pulso, temp_reset: OUT BIT);
end circ_comb;
architecture behav of circ_comb is
begin
	temp_reset <= (not current1) and (not current0);
	pulso <= current1 and (not current0);
	next1 <= (not current1) and current0 and (not s_bat) and fim_temp;
	next0 <= ((not current1) and (not current0)) or ((not current1) and current0 and (not s_bat) and (not fim_temp));
end architecture behav;	
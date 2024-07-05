library ieee;
use ieee.std_logic_1164.all;

entity reg is
	port(c, i1, i0: IN BIT;
			q1, q0: OUT BIT);
end reg;

architecture behav of reg is
begin
	process(c)
		begin
		if(c' event AND c = '1') then
			q1 <= i1;
			q0 <= i0;
		end if;
	end process;
end architecture behav;
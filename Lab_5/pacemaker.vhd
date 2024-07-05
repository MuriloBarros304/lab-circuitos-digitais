library ieee;
use ieee.std_logic_1164.all;

entity pacemaker is
	port(clk, s, z: IN BIT;
		  p, t : OUT BIT);
end pacemaker;

architecture behavior of pacemaker is
	signal n1, n0: BIT; --Proximo estado
	signal s1, s0: BIT; --Estado atual
	signal sc, fc: BIT;
	component reg is
		port(c, i1, i0: IN BIT;
				q1, q0: OUT BIT);
	end component;
	component circ_comb is
		port(s_bat, fim_temp, c,current1, current0: IN BIT;
				next1, next0, pulso, temp_reset: OUT BIT);
	end component;
	component counter is
		port(c, reset: IN BIT;
				tc: OUT BIT);
		end component;
begin
	u1: reg port map(c => clk, i1 => n1, i0 => n0, q1 => s1, q0 => s0);
	u2: circ_comb port map( s_bat => s, fim_temp => z, c => clk, current1 => s1, current0 => s0,
									next1 => n1, next0 => n0, pulso => p , temp_reset => sc);
	u3: counter port map(c => clk, reset => sc, tc => fc);								
	
end architecture behavior;

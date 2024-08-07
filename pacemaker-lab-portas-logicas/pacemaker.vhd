library ieee;
use ieee.std_logic_1164.all;

entity pacemaker is
	port(clk, s: in bit;
		  p : out bit);
end pacemaker;

architecture behavior of pacemaker is
	signal n1, n0: bit; --Proximo estado
	signal s1, s0: bit; --Estado atual
	signal sc, fc: bit; --Iniciar contagem, finalizar contagem
	component reg2 is
		port(c, i1, i0: in bit;
				q1, q0: out bit);
	end component;
	component circ_comb is
		port(s_bat, fim_temp, c, current1, current0: in bit;
				next1, next0, pulso, temp_reset: out bit);
	end component;
	component counter is
		port(c, reset: in bit;
				tc: out bit);
		end component;
begin
	u1: reg2 port map(c => clk, i1 => n1, i0 => n0, q1 => s1, q0 => s0);
	u2: circ_comb port map(s_bat => s, fim_temp => fc, c => clk, current1 => s1, current0 => s0,
									next1 => n1, next0 => n0, pulso => p , temp_reset => sc);
	u3: counter port map(c => clk, reset => sc, tc => fc);								
	
end architecture behavior;

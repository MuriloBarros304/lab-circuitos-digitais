library ieee;
use ieee.std_logic_1164.all;
entity pacemaker is
	port(b, clk : in bit;
		pacemaker_out : out bit);
	end pacemaker;
architecture behavior of circuito is
	signal n1, n0: bit; -- Proximo estado
	signal s1, s0: bit; -- Estado atual
	component reg2 is
		port(c, i1, i0 : in bit;
				q1, q0 : out bit);
	end component;
	component comb_circ is
		port(t, c, current1, current0 : in bit;
				next1, next0, p : out bit);
	end component;
	begin
		u1 : reg2 port map(c => clk, i1 => n1, i0 => n0, q1 => s1, q0 => s0);
		u2 : circ_comb port map(t => b, c => clk,
			current1 => s1, current0 => s0,
			next1 => n1, next0 => n0, pacemaker_out => x);
end architecture behavior;
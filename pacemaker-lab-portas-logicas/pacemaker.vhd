library ieee;
use ieee.std_logic_1164.all;
entity pacemaker is
	port(s, clk : in bit;
		pacemaker_out : out bit);
	end pacemaker;
architecture behavior of pacemaker is
	signal n1, n0: bit; -- Proximo estado
	signal s1, s0: bit; -- Estado atual
	signal sc, fc: bit; -- Começar contagem e finalizar contagem
	component reg2 is
		port(c, i1, i0 : in bit;
				q1, q0 : out bit);
	end component;
	component comb_circ is
		port(z, c, current1, current0 : in bit;
				next1, next0, t, p : out bit);
	end component;
	component counter is
		port(c, cnt : in bit;
		tc : out bit;
		q : out integer range 7 downto 0);
	end component;
		
begin
		u1 : reg2 port map(c => clk, i1 => n1, i0 => n0,
		q1 => s1, q0 => s0);
		u2 : comb_circ port map(c => clk,
			current1 => s1, current0 => s0,
			next1 => n1, next0 => n0, z => fc, t => sc,
			p => pacemaker_out);
		u3 : counter port map(c => clk, tc => fc,
		cnt => sc);
end architecture behavior;
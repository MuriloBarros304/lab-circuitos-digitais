library ieee;
use ieee.std_logic_1164.all;
entity regFlipflop is
port(en3, en2, en1, en0, c : in bit;
	q3, q2, q1, q0 : out bit
	);
end regFlipflop;

architecture comp of regFlipflop is
	component flipflopd is
	port(d, clk : in bit;
		q : out bit
		);
	end component;
begin
	u1: flipflopd port map(d => en3, clk => c, q => q3);
	u2: flipflopd port map(d => en2, clk => c, q => q2);
	u3: flipflopd port map(d => en1, clk => c, q => q1);
	u4: flipflopd port map(d => en0, clk => c, q => q0);
end;
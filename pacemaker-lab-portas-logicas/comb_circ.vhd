entity comb_circ is
	port(z, s, c, current1, current0 : in bit;
		next1, next0, t, p : out bit);
	end comb_circ;
architecture behav of comb_circ is
begin
	t <= not(current1 and current0);
	p <= not(current0) and current1;
	next1 <= not(current1) and current0 and not(s) and z;
	next0 <= (not(current1 and current0) or (not(current1
	and s and z) and current0));
end architecture behav;
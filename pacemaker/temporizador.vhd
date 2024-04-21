--Temporizadores
library ieee;
use ieee.std_logic_1164.all;
ENTITY temporizador IS
	PORT(tv, ta, clk_cont: IN BIT;
			zv, za: OUT BIT);
END temporizador;

ARCHITECTURE ckt OF temporizador IS
	COMPONENT ffd IS
		PORT(clk, d, p, c: IN BIT;
				q: OUT BIT);
	END COMPONENT;
	
	SIGNAL sig_Df, sig_f: BIT_VECTOR(3 DOWNTO 0);
	SIGNAL sig_comb, sig_comb2, sig_clr, sig_clr2: BIT;
	SIGNAL sig_Di, sig_i: BIT_VECTOR(4 DOWNTO 0);

--Cont_s
BEGIN
	sig_Df(0) <= (sig_f(0) XOR '1');
	sig_Df(1) <= (sig_f(1) XOR ('1' AND sig_f(0)));
	sig_Df(2) <= (sig_f(2) XOR (('1' AND sig_f(0)) AND sig_f(1)));
	sig_Df(3) <= (sig_f(3) XOR ((('1' AND sig_f(0)) AND sig_f(1)) AND sig_f(2)));

	ffd_cont_f_0: ffd PORT MAP(
		clk => clk_cont,
		d => sig_Df(0),
		p => '1',
		c => sig_clr,
		q => sig_f(0)
	);
	
	ffd_cont_f_1: ffd PORT MAP(
		clk => clk_cont,
		d => sig_Df(1),
		p => '1',
		c => sig_clr,
		q => sig_f(1)
	);
	
	ffd_cont_f_2: ffd PORT MAP(
		clk => clk_cont,
		d => sig_Df(2),
		p => '1',
		c => sig_clr,
		q => sig_f(2)
	);
	
	ffd_cont_f_3: ffd PORT MAP(
		clk => clk_cont,
		d => sig_Df(3),
		p => '1',
		c => sig_clr,
		q => sig_f(3)
	);
	
	zv <= ((NOT sig_f(0)AND (NOT sig_f(1))) AND (sig_f(2))) AND NOT sig_f(3);
	sig_comb <= ((sig_f(0) AND (NOT sig_f(1))) AND (sig_f(2))) AND NOT sig_f(3);
	sig_clr <= NOT (sig_comb OR tv);
	
--Cont_2	
	sig_Di(0) <= (sig_i(0) XOR '1');
	sig_Di(1) <= (sig_i(1) XOR ('1' AND sig_i(0)));
	sig_Di(2) <= (sig_i(2) XOR (('1' AND sig_i(0)) AND sig_i(1)));
	sig_Di(3) <= (sig_i(3) XOR ((('1' AND sig_i(0)) AND sig_i(1)) AND sig_i(2)));
	sig_Di(4) <= (sig_i(4) XOR (((('1' AND sig_i(0)) AND sig_i(1)) AND sig_i(2)) AND sig_i(3)));

	ffd_cont_i_0: ffd PORT MAP(
		clk => clk_cont,
		d => sig_Di(0),
		p => '1',
		c => sig_clr2,
		q => sig_i(0)
	);
	
	ffd_cont_i_1: ffd PORT MAP(
		clk => clk_cont,
		d => sig_Di(1),
		p => '1',
		c => sig_clr2,
		q => sig_i(1)
	);
	
	ffd_cont_i_2: ffd PORT MAP(
		clk => clk_cont,
		d => sig_Di(2),
		p => '1',
		c => sig_clr2,
		q => sig_i(2)
	);
	
	ffd_cont_i_3: ffd PORT MAP(
		clk => clk_cont,
		d => sig_Di(3),
		p => '1',
		c => sig_clr2,
		q => sig_i(3)
	);
	
	ffd_cont_i_4: ffd PORT MAP(
		clk => clk_cont,
		d => sig_Di(4),
		p => '1',
		c => sig_clr2,
		q => sig_i(4)
	);
	
	za <= ((sig_i(0)AND (sig_i(1))) AND (NOT sig_i(2))) AND (NOT sig_i(3))AND sig_i(4);
	sig_comb2 <= ((NOT sig_i(0) AND (NOT sig_i(1))) AND (sig_i(2))) AND (NOT sig_i(3)) AND sig_i(4);
	sig_clr2 <= NOT (sig_comb2 OR ta);

END ckt;


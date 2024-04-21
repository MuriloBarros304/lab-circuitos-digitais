library ieee;
use ieee.std_logic_1164.all;

ENTITY pacemaker IS
	PORT(clk, sa, sv: IN BIT;
		pa, pv: OUT BIT);
END pacemaker;

ARCHITECTURE ckt OF pacemaker IS

	COMPONENT bc IS
		PORT(Sa, Sv, Za, Zv, clk: IN BIT;
				Pa, Pv, Ta, Tv: OUT bIT
		);
	END COMPONENT;

	SIGNAL sig_ta, sig_tv, sig_za, sig_zv, sig_pa, sig_pv: BIT;

	COMPONENT temporizador IS
		PORT(tv, ta,clk_cont: IN BIT;
				zv, za: OUT BIT
		);
	END COMPONENT;
	
	BEGIN
		bloco_controle: bc PORT MAP(
			Sa => sa,
			Sv => sv,
			Za => sig_za,
			Zv => sig_zv,
			clk => clk,
			Pa => sig_pa,
			Pv => sig_pv,
			Ta => sig_ta,
			Tv => sig_tv
		);
		
		temporizadores: temporizador PORT MAP(
			clk_cont => clk,
			tv => sig_tv,
			ta => sig_ta,
			zv => sig_zv,
			za => sig_za
		);
		
		pa <= sig_pa;
		pv <= sig_pv;
END ckt;	
			

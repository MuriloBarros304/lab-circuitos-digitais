library ieee;
use ieee.std_logic_1164.all;

entity counter is
	port (clk: in bit;
			reset: in bit;
			data: in integer range 7 downto 0;
			q: out integer range 7 downto 0;
			tc: out bit);
end counter;

architecture behavior of counter is
begin
	counter_process: process(clk, reset)
		variable q_var: integer range 7 downto 0;
		begin
			if(reset = '1') then
				tc <= '0';
				q_var := 0;
			elsif(clk' event and clk = '1') then
				if(q_var = 0) then 
				tc <= '1'; 
				q_var := 7;
				else q_var := q_var -1;
				end if;
			end if;
		q <= q_var;
	end process;
end behavior;

library ieee;
use ieee.std_logic_1164.all ;
entity latchd is
port(d, clk : in BIT;
	q : out BIT);
end;
architecture behav of latchd is
begin
process (d, clk)
begin
	if (clk = '1' AND d = '1') then
	q <= '1';
	elsif (clk = '1' AND d = '0') then
	q <= '0';
	end if;
end process ;
end;
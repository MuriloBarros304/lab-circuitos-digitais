library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux3x1_16bits is 
  port( A: in std_logic_vector (15 downto 0);
		  B: in std_logic_vector (15 downto 0);
		  C: in std_logic_vector (15 downto 0);
      sel: in std_logic_vector (1 downto 0);
		  D: out std_logic_vector (15 downto 0));
end mux3x1_16bits;
 
architecture behavior of mux3x1_16bits is 
 
begin 
	
	process (sel, A, B, C)
	
	begin
	
	   if (sel = "00") then 
			D <= A;
		elsif (sel = "01") then 
			D <= B;
		elsif (sel = "10") then 
			D <= C;
	   else 
			D <= (others => '0');
	   end if;
		
	end process;
	
end behavior;
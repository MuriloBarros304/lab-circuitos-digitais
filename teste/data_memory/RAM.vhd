library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity RAM is 
   port ( addr: in std_logic_vector (7 downto 0);
          rd, wr, clock: in std_logic;
          W_data: in std_logic_vector (15 downto 0);
          R_data: out std_logic_vector (15 downto 0));
end RAM;

architecture behavior of RAM is

   type ram_type is array (0 to 255) of std_logic_vector (15 downto 0); --vetor de vetores
   signal data_memory: ram_type := 
   (
    0 => "0000000000000001", -- 1
    1 => "0000000000000010", -- 2
    2 => "0000000000000011", -- 3
    3 => "0000000000000100", -- 4
    4 => "0000000000000101", -- 5
    5 => "0000000000000110", -- 6

    others =>"0000000000000000");

begin
    process (clock, addr, rd, wr, W_data)
        begin
                 if rising_edge(clock) then
						if (wr = '1') then
                    data_memory (to_integer(unsigned(addr))) <= W_data; 
						end if;
					  end if;
						if	(rd = '1') then
                    R_data <= data_memory (to_integer(unsigned(addr)));
						else
						  R_data <= "0000000000000000";
						end if;
               
    end process;

end behavior;
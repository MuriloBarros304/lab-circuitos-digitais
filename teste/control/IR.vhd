library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity IR is
    port (
        instIN: in std_logic_vector(15 downto 0);
        ld, clk: in std_logic;
        instOUT: out std_logic_vector(15 downto 0)
    );
end IR;

architecture behavior of IR is
begin
    process (clk)
    begin 
        if rising_edge(clk) then
            if ld = '1' then
                instOUT <= instIN;
            end if; 
        end if;
    end process; 
end behavior;

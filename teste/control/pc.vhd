library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc is
    port (
        clk    : in std_logic;
        ld     : in std_logic;
        sel    : in std_logic;
        clr    : in std_logic;
        up     : in std_logic;
        jump   : in std_logic_vector(15 downto 0);
        offset : in std_logic_vector(7 downto 0);
        pcOUT  : out std_logic_vector(15 downto 0)
    );
end pc;

architecture behavioral of pc is
    signal count : integer range 0 to 255; 
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if clr = '1' then
                count <= 0;
            elsif ld = '1' then
                if sel = '0' then
                    count <= count + to_integer(signed(offset)) - 1;
                else
                    count <= to_integer(signed(jump));
                end if;
            elsif up = '1' then
                count <= count + 1;
            end if;
        end if;
    end process;

    pcOUT <= std_logic_vector(to_signed(count, 16));
end architecture behavioral;

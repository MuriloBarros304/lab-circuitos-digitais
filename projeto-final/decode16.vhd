library ieee;
use ieee.std_logic_1164.all;

entity decode16 is
    port(
        en : in std_logic;
        i : in std_logic_vector(3 downto 0);
        D : out std_logic_vector(15 downto 0));
end decode16;

architecture behav of decode16 is

    signal out_aux : std_logic_vector(15 downto 0);
    signal in_aux : std_logic_vector(4 downto 0);

begin

in_aux <= en & i(3) & i(2) & i(1) & i(0);

with in_aux select
    out_aux <=	"00000000000001" when "10000",
                "00000000000010" when "01000",
                "00000000000100" when "00100",
                "00000000001000" when "00010",
                "00000000010000" when "00001",
                "00000000100000" when "11000",
                "00000001000000" when "10100",
                "00000010000000" when "10010",
                "00000100000000" when "10001",
                "00001000000000" when "01100",
                "00010000000000" when "01010",
                "00100000000000" when "01001",
                "01000000000000" when "00110",
                "10000000000000" when "00101",
                "00000000000000" when "00000",
                "00000000000000" when others;

D <= out_aux(15 downto 0);

end behav;

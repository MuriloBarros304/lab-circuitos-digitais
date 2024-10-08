library ieee;
use ieee.std_logic_1164.all;

-- decodificador de 2 a 4 bits
entity decode4 is
    port(
        en : in std_logic;
        i : in std_logic_vector(1 downto 0);
        D : out std_logic_vector(3 downto 0));
end entity;

architecture combinational of decode4 is
begin
    D(0) <= en and (not(i(1)) and not(i(0)));
    D(1) <= en and (not(i(1)) and i(0));
    D(2) <= en and (i(1) and not(i(0)));
    D(3) <= en and (i(1) and i(0));
end combinational;
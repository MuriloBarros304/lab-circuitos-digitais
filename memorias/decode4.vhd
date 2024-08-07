library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

component decode4 is
    port(
        en : in std_logic;
        i : in std_logic_vector(1 downto 0);
        D : out std_logic_vector(3 downto 0));
end component;

architecture combinational of decoder4 is
begin
    D(0) <= en and (not(i(1)) and not(i(0)));
    D(1) <= en and (not(i(1)) and i(0));
    D(2) <= en and (i(1) and not(i(0)));
    D(3) <= en and (i(1) and i(0));
end combinational;
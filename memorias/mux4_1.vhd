library ieee;
use ieee.std_logic_1164.all;

package bus_array_pkg is
        type bus_array is array(0 to 3) of std_logic_vector(7 downto 0); -- array de 4 sinais de 8 bits
end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.bus_array_pkg.all;

entity mux4_1 is
    port(
        A : bus_array;
        en : in std_logic;
        S : in std_logic_vector(1 downto 0);
        Z : out std_logic_vector(7 downto 0));
end mux4_1;

architecture main of mux4_1 is
    type tmp_array is array(0 to 3) of std_logic_vector(7 downto 0);
begin
    process(A, en, S)
    begin
        if en = '1' then
            Z <= A(conv_integer(unsigned(S)));
        else
            Z <= (others => '0');
        end if;
    end process;

end architecture main;
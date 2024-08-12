LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY ROM IS
PORT(
           clock : IN STD_LOGIC; 
           rom_enable : IN STD_LOGIC;
           address : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- mudar para 15 downto 0?
           data_output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END ROM;
ARCHITECTURE behav OF ROM IS
     TYPE rom_type IS ARRAY(0 to 15) OF STD_LOGIC_VECTOR(15 DOWNTO 0); -- 16 endereços de 16 bits (utilizar 15 downto 0?)
    
     CONSTANT mem: rom_type :=
           (0 => "0011000000000011", -- carregar cte 3 em RF[0] (valor analisado)
           1 => "0011000100000001", -- carregar cte 1 em RF[1] (incremento)
           2 => "0011001000000000", -- carregar cte 0 em RF[2] (usado no saltar se zero)
           3 => "0011001100000000", -- carregar cte 0 em RF[3] (contador)
           4 => "0000010000001100", -- carregar D[12] em RF[4]
           5 => "0100111101000000", -- subtrair RF[4] - RF[0] => RF[15]
           6 => "0101111100110010", -- saltar se RF[15] for 0 => inst[50+6]
           7 => "0000010100001101", -- carregar D[13] em RF[5]
           8 => "0100111101010000", -- subtrair RF[5] - RF[0] => RF[15]
           9 => "0101111100110010", -- saltar se RF[15] for 0 => inst[50+9]
           10 => "0000011000001110",-- carregar D[14] em RF[6]
           11 => "0100111101100000", -- subtrair RF[6] - RF[0] => RF[15]
           12 => "0101111100110010", -- saltar se RF[15] for 0 => inst[50+12]
           13 => "0000011100001111", -- carregar D[15] em RF[7]
           14 => "0100111101110000", -- subtrair RF[7] - RF[0] => RF[15]
           15 => "0101111100110010", -- saltar se RF[15] for 0 => inst[50+15]
           
           others => "0000000000000000"
            );

BEGIN

PROCESS(clock) IS
BEGIN
    IF (RISING_EDGE(clock) AND rom_enable = '1') THEN
           data_output <= mem(conv_integer(unsigned(address)));
    END IF;
END PROCESS;
END behav;
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
    
     CONSTANT mem: rom_type := (
        0 => "0011000000000101", -- carregar cte 5 em RF[0]
        1 => "0011000100000110", -- carregar cte 6 em RF[1]
        2 => "0100000000010000", -- adicionar RF[0] + RF[1] => RF[2]
        3 => "0011001100000011", -- carregar cte 3 em RF[3]
        4 => "0100001100100010", -- adicionar RF[2] + RF[3] => RF[4]
        5 => "0000010000000000", -- carregar D[0] em RF[0] (5)
        6 => "0000010100000001", -- carregar D[1] em RF[1] (7)
        7 => "0100000000010000", -- adicionar RF[0] + RF[1] => RF[2]
        8 => "1000001000000011", -- armazenar RF[2] em D[3] (armazenar 12 em D[3])
           
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
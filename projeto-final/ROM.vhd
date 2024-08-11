LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY ROM IS
PORT(
           clock : IN STD_LOGIC; 
           rom_enable : IN STD_LOGIC;
           address : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- mudar para 15 downto 0?
           data_output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END ROM;
ARCHITECTURE behav OF ROM IS
     TYPE rom_type IS ARRAY(0 to 15) OF STD_LOGIC_VECTOR(15 DOWNTO 0); -- 16 endereços de 16 bits (utilizar 15 downto 0?)
    
     CONSTANT mem: rom_type :=
           (1 => "000000010001"
            2 => "001100011001", 
            3 => "000000000100", 
            4 => "000000100101", 
            others => "000000000000"
            );

BEGIN

PROCESS(clock) IS
BEGIN
    IF (RISING_EDGE(clock) AND rom_enable = '1') THEN
           data_output <= mem(conv_integer(unsigned(address)));
    END IF;
END PROCESS;
END behav;
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
ENTITY RAM IS
     port(
          clock : IN STD_LOGIC; 
          w_enable : IN STD_LOGIC;
          r_enable : IN STD_LOGIC;
          mem_enable : IN STD_LOGIC;
          address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
          data_input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
          data_output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END RAM;
ARCHITECTURE behav OF RAM IS
     SIGNAL temp_address: STD_LOGIC_VECTOR(7 DOWNTO 0);
     type ram_type is array (0 to 255) of std_logic_vector (15 downto 0); --vetor de vetores
   signal ram: ram_type := 
   (
    0 => "0000000000000001", -- 1
    1 => "0000000000000010", -- 2
    2 => "0000000000000011", -- 3

    others =>"0000000000000000");
BEGIN
PROCESS(clock) IS
BEGIN
    IF (RISING_EDGE(clock) AND mem_enable = '1') THEN
          IF (r_enable = '1') THEN
               temp_address <= address;
          ELSIF (w_enable = '1') THEN
               ram(to_integer(unsigned(address))) <= data_input;
          END IF;
          data_output <= ram(to_integer(unsigned(temp_address)));
    END IF;
END PROCESS;
END behav;
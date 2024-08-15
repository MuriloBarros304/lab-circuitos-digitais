library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ROM is 
   port ( addr: in std_logic_vector (15 downto 0);
          rd: in std_logic;
          data: out std_logic_vector (15 downto 0));
end ROM;

architecture behavior of ROM is 

   type rom_type is array (0 to 255) of std_logic_vector (15 downto 0); --vetor de vetores
   signal data_instructions: rom_type :=
	
	(
		0 => "0011000000000011", -- carregar cte 3 em RF[0] (valor analisado)
		1 => "0011000100000001", -- carregar cte 1 em RF[1] (incremento)
		2 => "0011001000000000", -- carregar cte 0 em RF[2] (usado no saltar se zero)
		3 => "0011001100000000", -- carregar cte 0 em RF[3] (contador)
		4 => "0000010000001100", -- carregar D[12] em RF[4]

		others => "0000000000000000");


begin 
	data <= data_instructions(to_integer(unsigned(addr))) when rd = '1' else "0000000000000000";  
				
end behavior;

--- INSTRUÇÕES
--- CARREGAR: 0000 R3R2R1R0 D7D6D5D4D3D2D1D0
--- ARMAZENAR: 0001 R3R2R1R0 D7D6D5D4D3D2D1D0
--- SOMAR: 0010 RA3RA2RA1RA0 RB3RB2RB1RB0 RC3RC2RC1RC0
--- CARREGAR CONSTANTE: 0011 R3R2R1R0 C7C6C5C4C3C2C1C0
--- SUBTRAIR: 0100 RA3RA2RA1RA0 RB3RB2RB1RB0 RC3RC2RC1RC0
--- SALTAR SE ZERO: 0101 RA3RA2RA1RA0 O7O6O5O4O3O2O1O0
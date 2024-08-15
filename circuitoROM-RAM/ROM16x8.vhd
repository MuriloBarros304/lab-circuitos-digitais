library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity ROM16x8 is
	port(
		clock: IN STD_LOGIC;
		rom_enable: IN STD_LOGIC;
		address: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		data_output: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
end ROM16x8;
architecture behav of ROM16x8 is
	type rom_type is array(0 to 15) of STD_LOGIC_VECTOR(7 DOWNTO 0);
	constant mem: rom_type :=(
		0 => "00000001",-- Aloca 1 no endereço 0
		1 => "00000010",-- Aloca 2 no endereço 1
		2 => "00000011",-- Aloca 3 no endereço 2
		3 => "00000100",-- Aloca 4 no endereço 3
		4 => "00000101",-- Aloca 5 no endereço 4
		5 => "00000110",-- Aloca 6 no endereço 5
		6 => "00000111",-- Aloca 7 no endereço 6
		7 => "00001000",-- Aloca 8 no endereço 7
		8 => "00001001",-- Aloca 9 no endereço 8
		9 => "00001010",-- Aloca 10 no endereço 9
		10 => "00001011",-- Aloca 11 no endereço 10
		11 => "00001100",-- Aloca 12 no endereço 11
		12 => "00001101",-- Aloca 13 no endereço 12
		13 => "00001110",-- Aloca 14 no endereço 13
		14 => "00001111",-- Aloca 15 no endereço 14
		15 => "00010000" --Aloca 16 no endereço 15
		);
begin
	process(clock) IS
	begin
		if (RISING_EDGE(clock) AND rom_enable = '1') then
			data_output <= mem(conv_integer(unsigned(address)));
		end if;
	end process;
end behav;
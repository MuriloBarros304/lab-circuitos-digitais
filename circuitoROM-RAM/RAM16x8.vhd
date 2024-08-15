library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity RAM16x8 is
	port(
		clock: IN STD_LOGIC;
		rw_enable: IN STD_LOGIC;
		mem_enable: IN STD_LOGIC;
		address: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		data_input: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		data_output: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	); 
end RAM16x8;
architecture behav of RAM16x8 is
	type ram_type is array(0 to 15) of STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal ram: ram_type;
	signal temp_address: STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
	process(clock)is
	begin
		if(RISING_EDGE(clock) and mem_enable='1')then
			if(rw_enable = '0')then
				temp_address <= address;
			elsif(rw_enable = '1')then
				ram(conv_integer(unsigned(address))) <= data_input;
			end if;
				data_output <= ram(conv_integer(unsigned(temp_address)));
		end if;
	end process;
end behav;
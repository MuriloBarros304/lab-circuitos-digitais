library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity regfile is
    port(   clk: in std_logic;
         W_data: in std_logic_vector(15 downto 0);
         W_addr: in std_logic_vector(3 downto 0);
           W_wr: in std_logic;
        Rp_addr: in std_logic_vector(3 downto 0);
          Rp_rd: in std_logic;
		  Rq_addr: in std_logic_vector(3 downto 0);
          Rq_rd: in std_logic; 
         Rp_data: out std_logic_vector(15 downto 0);
			Rq_data: out std_logic_vector(15 downto 0));
end regfile;

architecture behavior of regfile is
    type regf is array(0 to 15) of std_logic_vector(15 downto 0);
	 signal reg: regf := (
		others => "0000000000000000"
	 );

begin

	process(clk)
		begin
			if(rising_edge(clk) and W_wr = '1') then
				reg(to_integer(unsigned(W_addr))) <= W_data;
			end if;
	end process;
	
	Rp_data <= reg(to_integer(unsigned(Rp_addr))) when rising_edge(Rp_rd); 
	Rq_data <= reg(to_integer(unsigned(Rq_addr))) when rising_edge(Rq_rd); 
 
end behavior;
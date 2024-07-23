-- main
library ieee;
use ieee.std_logic_1164.all;

entity vend is
    port(
        --a, b : in bit_vector (3 downto 0);
        --d : out bit_vector (3 downto 0);
        --out_eq, out_gt : out bit
		  w_data : in bit_vector(3 downto 0); -- dados para escrita
        w_addr : in bit_vector(2 downto 0); -- endereço de escrita
        w_en : in bit;                         -- sinal de habilitação para escrita
        r_data : out bit_vector(3 downto 0); -- dados para leitura
        r_addr : in bit_vector(2 downto 0); -- endereço de leitura
        r_en : in bit;                         -- sinal de habilitação para leitura
        clock : in bit                     -- clock
    );
end vend;

architecture behav of vend is
    component subtractor is
        port(
            x, y : in bit_vector (3 downto 0);
            d, bout : out bit_vector (3 downto 0)
        );
    end component;

    component comparator is
        port(
            a, b : in bit_vector (3 downto 0);
            out_eq, out_gt : out bit
        );
    end component;
	 
	 component regfile is
	     port(
				w_data : in bit_vector(3 downto 0); -- dados para escrita
				w_addr : in bit_vector(2 downto 0); -- endereço de escrita
				w_en : in bit;                         -- sinal de habilitação para escrita
				r_data : out bit_vector(3 downto 0); -- dados para leitura
				r_addr : in bit_vector(2 downto 0); -- endereço de leitura
				r_en : in bit;                         -- sinal de habilitação para leitura
				clock : in bit                      -- clock				
		  );
	 end component;
begin 
    --u0: subtractor port map(x => a, y => b, d => d);
    --u1: comparator port map(a => a, b => b, out_gt => out_gt, out_eq => out_eq);
	 u2: regfile port map(w_data => w_data, w_addr => w_addr, w_en => w_en, r_data => r_data,
	 r_addr => r_addr, r_en => r_en, clock => clock);
end behav;
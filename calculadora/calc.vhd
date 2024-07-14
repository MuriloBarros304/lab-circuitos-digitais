library ieee;
use ieee.std_logic_1164.all;

entity calc is
	port(
		a5, a4, a3, a2, a1, a0 : in bit;
		b5, b4, b3, b2, b1, b0 : in bit;
		clk : in bit;
		s5, s4, s3, s2, s1, s0 : out bit
	);
	
component mux2x1_6b is
   port (
      a : in std_logic_vector (5 downto 0);  -- Entrada a de 6 bits
      b : in std_logic_vector (5 downto 0);  -- Entrada b de 6 bits
      s : in bit;                   -- Sinal de seleção
      d : out std_logic_vector (5 downto 0) -- Saída d de 6 bits
    );
end component;

component somador is
	port(
      a : in bit;      -- Primeiro operando de 1 bit
      b : in bit;      -- Segundo operando de 1 bit
      cin : in bit;    -- Carry-in de 1 bit
      sum : out bit;   -- Soma de 1 bit
      cout : out bit   -- Carry-out de 1 bit
	);
end component;	
	
signal s1 : bit;
signal s2 : bit;
	
architecture behaviorial of calc is
begin
	
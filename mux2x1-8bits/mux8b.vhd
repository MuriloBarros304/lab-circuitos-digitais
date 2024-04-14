library ieee;
use ieee.std_logic_1164.all;

entity mux8b is
  port (
    en0 : in bit_vector(3 downto 0);
    en1 : in bit_vector(3 downto 0);
    s : in bit;
    d : out bit_vector(3 downto 0)
  );
end mux8b;

architecture hardware of mux8b is
begin
  d(0) <= (en0(0) and not s) or (en1(0) and s);
  d(1) <= (en0(1) and not s) or (en1(1) and s);
  d(2) <= (en0(2) and not s) or (en1(2) and s);
  d(3) <= (en0(3) and not s) or (en1(3) and s);
end architecture hardware;

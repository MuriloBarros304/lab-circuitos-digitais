entity mux2x1_6b is
    port (
        a : in bit_vector (5 downto 0);  -- Entrada a de 6 bits
        b : in bit_vector (5 downto 0);  -- Entrada b de 6 bits
        s : in bit;                   -- Sinal de seleção
        d : out bit_vector (5 downto 0) -- Saída y de 6 bits
    );
end mux2x1_6b;

architecture behavioral of mux2x1_6b is
begin
    process(a, b, s)
    begin
        d(0) <= (b(0) and s)or(a(0) and not(s));
		  d(1) <= (b(1) and s)or(a(1) and not(s));
		  d(2) <= (b(2) and s)or(a(2) and not(s));
		  d(3) <= (b(3) and s)or(a(3) and not(s));
		  d(4) <= (b(4) and s)or(a(4) and not(s));
		  d(5) <= (b(5) and s)or(a(5) and not(s));
    end process;
end behavioral;
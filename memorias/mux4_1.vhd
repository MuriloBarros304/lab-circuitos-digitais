-- mux 4x1 de 8 bits
entity mux4_1 is
    port(
        A : in array(0 to 3) of std_logic_vector(7 downto 0); -- Entrada com 4 canais de 8 bits cada
        S : in std_logic_vector(1 downto 0);  -- Seleção de 2 bits
        Z : out std_logic_vector(7 downto 0)  -- Saída de 8 bits
    );
end mux4_1;

architecture behav of mux4_1 is
begin

    Z(0) <= (A(0)(0) and not S(1) and not S(0)) or
            (A(1)(0) and not S(1) and S(0)) or
            (A(2)(0) and S(1) and not S(0)) or
            (A(3)(0) and S(1) and S(0));
    z(1) <= (A(0)(1) and not S(1) and not S(0)) or
            (A(1)(1) and not S(1) and S(0)) or
            (A(2)(1) and S(1) and not S(0)) or
            (A(3)(1) and S(1) and S(0));
    z(2) <= (A(0)(2) and not S(1) and not S(0)) or
            (A(1)(2) and not S(1) and S(0)) or
            (A(2)(2) and S(1) and not S(0)) or
            (A(3)(2) and S(1) and S(0));
    z(3) <= (A(0)(3) and not S(1) and not S(0)) or
            (A(1)(3) and not S(1) and S(0)) or
            (A(2)(3) and S(1) and not S(0)) or
            (A(3)(3) and S(1) and S(0));
    z(4) <= (A(0)(4) and not S(1) and not S(0)) or
            (A(1)(4) and not S(1) and S(0)) or
            (A(2)(4) and S(1) and not S(0)) or
            (A(3)(4) and S(1) and S(0));
    z(5) <= (A(0)(5) and not S(1) and not S(0)) or
            (A(1)(5) and not S(1) and S(0)) or
            (A(2)(5) and S(1) and not S(0)) or
            (A(3)(5) and S(1) and S(0));
    z(6) <= (A(0)(6) and not S(1) and not S(0)) or
            (A(1)(6) and not S(1) and S(0)) or
            (A(2)(6) and S(1) and not S(0)) or
            (A(3)(6) and S(1) and S(0));
    z(7) <= (A(0)(7) and not S(1) and not S(0)) or
            (A(1)(7) and not S(1) and S(0)) or
            (A(2)(7) and S(1) and not S(0)) or
            (A(3)(7) and S(1) and S(0));
end behav;

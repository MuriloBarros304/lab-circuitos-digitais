-- flipflop
entity flipflop is
    port (
        d : in bit;       -- entrada de dados
        clk : in bit;     -- sinal de clock
        reset : in bit;   -- sinal de reset assíncrono
        q : out bit       -- saída do registrador
    );
end flipflop;

architecture behavioral of flipflop is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            q <= '0';          
        elsif (clk'event and clk = '1') then
            q <= d;             
        end if;
    end process;
end behavioral;

-- registrador de 4 bits
entity register is
    port(
        d : in bit_vector (3 downto 0);
        clk : in bit;
        reset : in bit;
        q : out bit_vector (3 downto 0);
    );
end register;

architecture structural of register is
    component flipflop is
        port(
            d : in bit;
            clk : in bit;
            reset : in bit;
            q : out bit
        );
    end component;

    signal q_internal : bit_vector (3 downto 0);

begin
    ff0: flipflop port map(d => d(0), clk => clk, reset => reset, q => q_internal(0));
    ff1: flipflop port map(d => d(1), clk => clk, reset => reset, q => q_internal(1));
    ff2: flipflop port map(d => d(2), clk => clk, reset => reset, q => q_internal(2));
    ff3: flipflop port map(d => d(3), clk => clk, reset => reset, q => q_internal(3));

    q <= q_internal;
end structural;

-- decodificador 3x8
entity decoder3x8 is
    port (
        a : in std_logic_vector(2 downto 0);  -- Entradas de seleção
        y : out std_logic_vector(7 downto 0)  -- Saídas do decodificador
    );
end decoder3x8;

architecture structural of decoder3x8 is
begin
    y(0) <= not a(2) and not a(1) and not a(0);
    y(1) <= not a(2) and not a(1) and a(0);
    y(2) <= not a(2) and a(1) and not a(0);
    y(3) <= not a(2) and a(1) and a(0);
    y(4) <= a(2) and not a(1) and not a(0);
    y(5) <= a(2) and not a(1) and a(0);
    y(6) <= a(2) and a(1) and not a(0);
    y(7) <= a(2) and a(1) and a(0);
end structural;

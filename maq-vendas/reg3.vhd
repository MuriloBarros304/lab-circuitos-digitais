-- flipflop
entity flipflop is
    port (
        d : in bit;       -- entrada de dados
        clk : in bit;     -- sinal de clock
        load : in bit;    -- sinal de habilitação
        reset : in bit;   -- sinal de reset
        q : out bit       -- saída do registrador
    );
end flipflop;

architecture behavioral of flipflop is -- comportamental
begin
    process(clk, reset)
    begin
        if reset = '1' then
            q <= '0';
        elsif (clk'event and clk = '1' and load = '1') then
            q <= d;
        end if;
    end process;
end behavioral;

-- registrador de 3 bits
entity reg3 is
    port(
        d : in bit_vector(2 downto 0);  -- sinal de entrada
        clk : in bit;                   -- clock
        load : in bit;                  -- load
        reset : in bit;                 -- reset
        q : out bit_vector(2 downto 0)  -- sinal de saída
    );
end reg3;

architecture structural of reg3 is
    component flipflop is
        port(
            d : in bit;
            clk : in bit;
            load : in bit;
            reset : in bit;
            q : out bit
        );
    end component;

    signal q_internal : bit_vector(2 downto 0);

begin
    ff0: flipflop port map(d => d(0), clk => clk, load => load, reset => reset, q => q_internal(0));
    ff1: flipflop port map(d => d(1), clk => clk, load => load, reset => reset, q => q_internal(1));
    ff2: flipflop port map(d => d(2), clk => clk, load => load, reset => reset, q => q_internal(2));

    q <= q_internal;
end structural;
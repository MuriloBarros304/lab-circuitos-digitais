-- flipflop
entity flipflop is
    port (
        d : in bit;       -- entrada de dados
        clk : in bit;     -- sinal de clock
        reset : in bit;   -- sinal de reset assíncrono
        q : out bit       -- saída do registrador
    );
end flipflop;

architecture behavioral of flipflop is -- comportamental
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
        d : in bit_vector(3 downto 0);  -- sinal de entrada
        clk : in bit;                   -- clock
        reset : in bit;                 -- reset
        q : out bit_vector(3 downto 0); -- sinal de saída
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

    signal q_internal : bit_vector(3 downto 0);

begin
    ff0: flipflop port map(d => d(0), clk => clk, reset => reset, q => q_internal(0));
    ff1: flipflop port map(d => d(1), clk => clk, reset => reset, q => q_internal(1));
    ff2: flipflop port map(d => d(2), clk => clk, reset => reset, q => q_internal(2));
    ff3: flipflop port map(d => d(3), clk => clk, reset => reset, q => q_internal(3));

    q <= q_internal;
end structural;

-- decodificador 3x8
entity decoder3x8 is
    port(
        a : in bit_vector(2 downto 0);  -- entradas de seleção
        en : in bit;                    -- sinal de habilitação
        y : out bit_vector(7 downto 0)  -- saídas do decodificador
    );
end decoder3x8;

architecture structural of decoder3x8 is
begin
    y(0) <= not(a(2)) and not(a(1)) and not(a(0)) and en;
    y(1) <= not a(2) and not a(1) and a(0) and en;
    y(2) <= not a(2) and a(1) and not a(0) and en;
    y(3) <= not a(2) and a(1) and a(0) and en;
    y(4) <= a(2) and not a(1) and not a(0) and en;
    y(5) <= a(2) and not a(1) and a(0) and en;
    y(6) <= a(2) and a(1) and not a(0) and en;
    y(7) <= a(2) and a(1) and a(0) and en;
end structural;

-- three state driver
entity threestate is
    port(
        a : in bit_vector(3 downto 0); -- sinal de entrada
        s : in bit;                    -- habilitação
        y : out bit_vector(3 downto 0) -- sinal de saída
    );
end threestate;

architecture hardware of threestate is
begin
    y(0) <= a(0) and s;
    y(1) <= a(1) and s;
    y(2) <= a(2) and s;
    y(3) <= a(3) and s;
end architecture;

-- banco de registradores:
-- 8 registradores de 4 bits cada, ligados a decodificadores 
-- 3x8 para ler e escrever no array
entity regfile is
    port(
        w_data : in bit_vector(3 downto 0); -- dados para escrita
        w_addr : in bit_vector(2 downto 0); -- endereço de escrita
        w_en : bit;                         -- sinal de habilitação para escrita
        r_data : in bit_vector(3 downto 0); -- dados para leitura
        r_addr : in bit_vector(2 downto 0); -- endereço de leitura
        r_en : bit;                         -- sinal de habilitação para leitura
    );
end regfile;

architecture registerfile of regfile is
    component register is
        port(
            d : in bit_vector(3 downto 0);  -- sinal de entrada
            clk : in bit;                   -- clock
            reset : in bit;                 -- reset
            q : out bit_vector(3 downto 0); -- sinal de saída
        );
    end component;
    
    component decoder3x8 is
        port (
            a : in bit_vector(2 downto 0);  -- entradas de seleção
            en : in bit;                    -- sinal de habilitação
            y : out bit_vector(7 downto 0)  -- saídas do decodificador
        );
    end component;

    component threestate is
        port(
            a : in bit_vector(3 downto 0); -- sinal de entrada
            s : in bit;                    -- habilitação
            y : out bit_vector(3 downto 0) -- sinal de saída
        );
    end component;
    signal d0_rf : bit_vector(7 downto 0); -- liga o decodificador de escrita aos registradores
    signal ts_d1 : bit_vector(7 downto 0);   -- liga o three state driver ao decodificador de leitura
    signal rf_ts : bit_vector(7 downto 0);   -- liga o banco de registradores aos three state drivers
begin
    -- decodificadores
    d0: decoder3x8 port map(a(0) => w_addr(0), a(1) => w_addr(1),a(2) => w_addr(2),
    en => w_en, y(0) => d0_rf(0), y(1) => d0_rf(1), y(2) => d0_rf(2),
    y(3) => d0_rf(3), y(4) => d0_rf(4), y(5) => d0_rf(5), y(6) => d0_rf(6),
    y(7) => d0_rf(7));

    d1: decoder3x8 port map(a(0) => r_addr(0), a(1) => r_addr(1),a(2) => r_addr(2),
    en => r_en, y(0) => ts_d1(0), y(1) => ts_d1(1), y(2) => ts_d1(2), 
    y(3) => ts_d1(3), y(4) => ts_d1(4), y(5) => ts_d1(5), y(6) => ts_d1(6), 
    y(7) => ts_d1(7));



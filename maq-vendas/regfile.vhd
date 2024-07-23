-- flipflop
entity flipflop is
    port (
        d : in bit;       -- entrada de dados
        clk : in bit;     -- sinal de clock
        load : in bit;    -- sinal de habilitação
        q : out bit       -- saída do registrador
    );
end flipflop;

architecture behavioral of flipflop is -- comportamental
begin
    process(clk, load)
    begin
        if (clk'event and clk = '1' and load = '1') then
            q <= d;             
        end if;
    end process;
end behavioral;

-- registrador de 4 bits
entity regist is
    port(
        d : in bit_vector(3 downto 0);  -- sinal de entrada
        clk : in bit;                   -- clock
        load : in bit;                  -- load
        q : out bit_vector(3 downto 0)  -- sinal de saída
    );
end regist;

architecture structural of regist is
    component flipflop is
        port(
            d : in bit;
            clk : in bit;
            load : in bit;
            q : out bit
        );
    end component;

    signal q_internal : bit_vector(3 downto 0);

begin
    ff0: flipflop port map(d => d(0), clk => clk, load => load, q => q_internal(0));
    ff1: flipflop port map(d => d(1), clk => clk, load => load, q => q_internal(1));
    ff2: flipflop port map(d => d(2), clk => clk, load => load, q => q_internal(2));
    ff3: flipflop port map(d => d(3), clk => clk, load => load, q => q_internal(3));

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
        w_data : in bit_vector(3 downto 0);  -- dados para escrita
        w_addr : in bit_vector(2 downto 0);  -- endereço de escrita
        w_en : in bit;                       -- sinal de habilitação para escrita
        r_data : out bit_vector(3 downto 0); -- dados para leitura
        r_addr : in bit_vector(2 downto 0);  -- endereço de leitura
        r_en : in bit;                       -- sinal de habilitação para leitura
        clock : in bit                       -- clock
    );
end regfile;

architecture registerfile of regfile is
    component regist is
        port(
            d : in bit_vector(3 downto 0);  -- sinal de entrada
            clk : in bit;                   -- clock
            load : in bit;                  -- load
            q : out bit_vector(3 downto 0)  -- sinal de saída
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
    signal d0_rf : bit_vector(7 downto 0); -- sinal de controle de escrita
    signal ts_d1 : bit_vector(7 downto 0); -- sinal de controle de leitura
    signal reg_out : bit_vector(3 downto 0); -- sinal de saída temporário para registro
    signal r0_t0, r1_t1, r2_t2, r3_t3, r4_t4, r5_t5, r6_t6, r7_t7 : bit_vector(3 downto 0)
begin
    -- decodificador de escrita
    d0: decoder3x8 port map(a => w_addr, en => w_en, y => d0_rf);

    -- decodificador de leitura
    d1: decoder3x8 port map(a => r_addr, en => r_en, y => ts_d1);

    -- registradores
    r0: regist port map(load => d0_rf(0), clk => clock, d => w_data, q => r0_t0);
    r1: regist port map(load => d0_rf(1), clk => clock, d => w_data, q => r1_t1);
    r2: regist port map(load => d0_rf(2), clk => clock, d => w_data, q => r2_t2);
    r3: regist port map(load => d0_rf(3), clk => clock, d => w_data, q => r3_t3);
    r4: regist port map(load => d0_rf(4), clk => clock, d => w_data, q => r4_t4);
    r5: regist port map(load => d0_rf(5), clk => clock, d => w_data, q => r5_t5);
    r6: regist port map(load => d0_rf(6), clk => clock, d => w_data, q => r6_t6);
    r7: regist port map(load => d0_rf(7), clk => clock, d => w_data, q => r7_t7);

    -- three state drivers
    t0: threestate port map(a => r0_t0, s => ts_d1(0), y => r_data);
    t1: threestate port map(a => r1_t1, s => ts_d1(1), y => r_data);
    t2: threestate port map(a => r2_t2, s => ts_d1(2), y => r_data);
    t3: threestate port map(a => r3_t3, s => ts_d1(3), y => r_data);
    t4: threestate port map(a => r4_t4, s => ts_d1(4), y => r_data);
    t5: threestate port map(a => r5_t5, s => ts_d1(5), y => r_data);
    t6: threestate port map(a => r6_t6, s => ts_d1(6), y => r_data);
    t7: threestate port map(a => r7_t7, s => ts_d1(7), y => r_data);
end architecture;

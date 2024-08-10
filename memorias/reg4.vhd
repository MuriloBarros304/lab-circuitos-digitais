-- flipflop
entity flipflop is
    port (
        d : in std_logic;       -- entrada de dados
        clk : in std_logic;     -- sinal de clock
        load : in std_logic;    -- sinal de habilitação
        reset : in std_logic;   -- sinal de reset
        q : out std_logic       -- saída do registrador
    );
end flipflop;

architecture behavioral of flipflop is -- comportamental
begin
    process(clk, reset)
    begin
        if reset = '1' then
            q <= '0';
        elsif (rising_edge(clk) and load = '1') then
            q <= d;
        end if;
    end process;
end behavioral;

-- registrador de 4 bits
entity reg4 is
    port(
        d : in std_logic_vector(3 downto 0);  -- sinal de entrada
        clk : in std_logic;                   -- clock
        load : in std_logic;                  -- load
        reset : in std_logic;                 -- reset
        q : out std_logic_vector(3 downto 0)  -- sinal de saída
    );
end reg4;
architecture structural of reg4 is
    component flipflop
        port (
            d : in std_logic;       -- entrada de dados
            clk : in std_logic;     -- sinal de clock
            load : in std_logic;    -- sinal de habilitação
            reset : in std_logic;   -- sinal de reset
            q : out std_logic       -- saída do registrador
        );
    end component;

    signal q_internal : std_logic_vector(3 downto 0);  
begin
    -- Instanciando 4 flip-flops manualmente
    ff0: flipflop port map (d => d(0), clk => clk, load => load, reset => reset, q => q_internal(0));
    ff1: flipflop port map (d => d(1), clk => clk, load => load, reset => reset, q => q_internal(1));
    ff2: flipflop port map (d => d(2), clk => clk, load => load, reset => reset, q => q_internal(2));
    ff3: flipflop port map (d => d(3), clk => clk, load => load, reset => reset, q => q_internal(3));

    q <= q_internal;

end structural;

entity combinacional is
    port(
        s3, s2, s1, s0 : in std_logic;               -- estado atual
        op3, op2, op1, op0 : in std_logic;           -- quatro primeiros bits de IR
        IR : in std_logic_vector(11 downto 0);       -- registrador de instrução (IR)
        RF_Rp_zero, RF_Rp_gt_rq : in std_logic;      -- sinais de controle
        n3, n2, n1, n0 : out std_logic;              -- próximo estado
        PC_ld, PC_clr, PC_inc : out std_logic;       -- sinais do contador de programa (PC)
        I_rd : out std_logic;                        -- sinal de leitura da memória de instruções (I)
        IR_ld : out std_logic;                       -- sinal de load no registrador de instrução (IR)
        D_rd, D_wr : out std_logic;                  -- sinais de leitura e escrita na memória de dados (D)
        RF_s0, RF_s1 : out std_logic;                -- sinais de seleção do mux acima do registrador de dados (RF)
        RF_W_wr, RF_Rp_rd, RF_Rq_rd : out std_logic; -- sinais de controle do registrador de dados (RF)
        alu_s0, alu_s1 : out std_logic               -- sinais de controle da ALU
    );
end combinacional;
architecture comb of combinacional is
    begin
    
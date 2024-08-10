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

-- registrador de estados de 4 bits
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
        M_s : out std_logic                          -- sinal de controle do mux que seleciona a incrementação do PC
    );
end combinacional;
architecture comb of combinacional is
    begin
        n3 = (not(s3) and not(s2) and s1 and not(s0) and op3 and not(op2) and not(op1) and not(op0))
        or (s3 and not(s2) and not(s1) and not(s0) and (RF_Rp_zero or RF_Rp_gt_Rq));

        n2 = not(s3) and not(s2) and s1 and not(s0) and not(op3) and op2;

        n1 = (not(s3) and not(s2) and ((not(s1) and s0) or ((s1 and not(s0) and not(op3) and not(op2) and op1 and op0)
        or (s1 and not(s0) and not(op3) and op2 and op1)))) or (s3 and not(s2) and not(s1) and not(s0) and ((RF_Rp_zero)
        or (RF_Rp_gt_Rq)));

        n0 = (not(s3) and not(s2) and not(s1) and not(s0)) or ((not(s3) and not(s2) and s1 and not(s0)) and ((not(op3) 
        and op1 and op0) or (not(op3) and op2 and not(op1) and op0) or (op3 and not(op2) and not(op1) and op0))) or
        (not(s3) and not(s2) and s1 and s0) or (not(s3) and s2) or (s3 and not(s2) and not(s1) and not(s0) and 
        RF_Rp_zero) or (s3 and not(s2) and not(s1) s0) or (s3 and not(s2) and s1);

        I_rd = not(s3) and not(s2) and not(s1) and s0;

        PC_inc = not(s3) and not(s2) and not(s1) and s0;

        PC_clr = not(s3) and not(s2) and not(s1) and not(s0);

        PC_ld = s3 and not(s2) and s1;

        IR_ld = not(s3) and not(s2) and not(s1) and s0;

        D_rd = not(s3) and not(s2) and s1 and s0;

        D_wr = not(s3) and s2 and not(s1) and not(s0);

        RF_W_wr = (not(s3) and s1 and ((not(s2) and s0) or (s2)));

        RF_Rp_rd = (not(s3) and s2 and (not(s1) or (s1 and s0))) or (s3 and not(s2) and not(s1));

        RF_Rq_rd = s0 and ((not(s3) and s2) or (s3 and not(s2) and not(s1)));

        RF_s0 = not(s3) and not(s2) and s1 and s0;

        RF_s1 = not(s3) and s2 and s1 and not(s0);

        alu_s0 = not(s3) and s2 and not(s1) and s0;

        alu_s1 = not(s3) and s2 and s1 and s0;

        M_s = s3 and not(s2) and s1 and s0;
end comb;

entity control is
    port(
        clk : in std_logic;
        reset : in std_logic;
        IR : in std_logic_vector(11 downto 0);
        RF_Rp_zero, RF_Rp_gt_rq : in std_logic;
        n3, n2, n1, n0 : out std_logic;
        PC_ld, PC_clr, PC_inc : out std_logic;
        I_rd : out std_logic;
        IR_ld : out std_logic;
        D_rd, D_wr : out std_logic;
        RF_s0, RF_s1 : out std_logic;
        RF_W_wr, RF_Rp_rd, RF_Rq_rd : out std_logic;
        alu_s0, alu_s1 : out std_logic;
        M_s : out std_logic
    );
end control;
architecture controller of control is
    signal q3_s3, q2_s2, q1_s1, q0_s0 : std_logic;
    signal n3_d3, n2_d2, n1_d1, n0_d0 : std_logic;

    component reg4 is
        port(
            d : in std_logic_vector(3 downto 0);
            clk : in std_logic;
            load : in std_logic;
            reset : in std_logic;
            q : out std_logic_vector(3 downto 0)
        );
    end component;
    component combinacional is
        port(
            s3, s2, s1, s0 : in std_logic;
            op3, op2, op1, op0 : in std_logic;
            IR : in std_logic_vector(11 downto 0);
            RF_Rp_zero, RF_Rp_gt_rq : in std_logic;
            n3, n2, n1, n0 : out std_logic;
            PC_ld, PC_clr, PC_inc : out std_logic;
            I_rd : out std_logic;
            IR_ld : out std_logic;
            D_rd, D_wr : out std_logic;
            RF_s0, RF_s1 : out std_logic;
            RF_W_wr, RF_Rp_rd, RF_Rq_rd : out std_logic;
            alu_s0, alu_s1 : out std_logic;
            M_s : out std_logic
        );
    end component;
begin
    statereg: reg4 port map(d => n3_d3 & n2_d2 & n1_d1 & n0_d0, clk => clk, load => '1',
    reset => reset, q => q3_s3 & q2_s2 & q1_s1 & q0_s0);
    comb: combinacional port map(s3 => q3_s3, s2 => q2_s2, s1 => q1_s1, s0 => q0_s0,
    
end controller;
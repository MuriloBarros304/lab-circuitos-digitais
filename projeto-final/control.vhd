-- flipflop
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
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
        port(
            d : in std_logic;       -- entrada de dados
            clk : in std_logic;     -- sinal de clock
            load : in std_logic;    -- sinal de habilitação
            q : out std_logic       -- saída do registrador
        );
    end component;

    signal q_internal : std_logic_vector(3 downto 0);  
begin
    -- Instanciando 4 flip-flops manualmente
    ff0: flipflop port map (d => d(0), clk => clk, load => load, q => q_internal(0));
    ff1: flipflop port map (d => d(1), clk => clk, load => load, q => q_internal(1));
    ff2: flipflop port map (d => d(2), clk => clk, load => load, q => q_internal(2));
    ff3: flipflop port map (d => d(3), clk => clk, load => load, q => q_internal(3));
    q <= q_internal;
end structural;

-- unidade combinacional
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
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
        alu_s0, alu_s1 : out std_logic;              -- sinais de controle da ALU
        M_s : out std_logic                          -- sinal de controle do mux que seleciona a incrementação do PC
    );
end combinacional;
architecture comb of combinacional is
    begin
        n3 <= (not(s3) and not(s2) and s1 and not(s0) and not(op3) and op2 and not(op1) and op0) or 
        (not(s3) and not(s2) and s1 and not(s0) and not(op3) and op2 and op1 and not(op0))
        or (s3 and not(s2) and not(s1) and not(s0) and RF_Rp_zero) or (s3 and not(s2) and not(s1) and s0 and RF_Rp_gt_Rq); 

        n2 <= (not(s3) and not(s2) and s1 and not(s0) and not(op3)) and ((not(op2) and not(op1) and op0) or (not(op2) and op1 and not(op0))
        or (op2 and not(op1) and not(op0)));

        n1 <= (not(s3) and not(s2) and not(s1) and s0) or (not(s3) and not(s2) and s1 and not(s0) and ((not(op3) and not(op2) and not(op1) and not(op0)) or (not(op3) and not(op2) and op1 and op0)
        or (not(op3) and op2 and not(op1) and not(op0)))) or
        (s3 and not(s2) and not(s1) and not(s0) and RF_Rp_zero) or (s3 and not(s2) and not(s1) and s0 and RF_Rp_gt_Rq);

        n0 <= (not(s3) and not(s2) and not(s1) and not(s0)) or (not(s3) and not(s2) and s1 and not(s0) and not(op3) and not(op0)) or (not(s3) and not(s2) and s1 and s0)
        or (not(s3) and s2) or (s3 and not(s2) and not(s1) and not(s0) and RF_Rp_zero) or ((s3 and not(s2) and not(s1) and s0))
        or (s3 and not(s2) and s1);

        I_rd <= not(s3) and not(s2) and not(s1) and s0;

        PC_inc <= not(s3) and not(s2) and not(s1) and s0;

        PC_clr <= not(s3) and not(s2) and not(s1) and not(s0);

        PC_ld <= s3 and not(s2) and s1;

        IR_ld <= not(s3) and not(s2) and not(s1) and s0;

        D_rd <= not(s3) and not(s2) and s1 and s0;

        D_wr <= not(s3) and s2 and not(s1) and not(s0);

        RF_W_wr <= (not(s3) and not(s2) and s1 and s0) or (not(s3) and s2 and not(s1) and s0) or (not(s3) and s2 and s1 and not(s0))
        or (not(s3) and s2 and s1 and s0);

        RF_Rp_rd <= (not(s3) and s2 and (not(s1) or (s1 and s0))) or (s3 and not(s2) and not(s1));

        RF_Rq_rd <= s0 and ((not(s3) and s2) or (s3 and not(s2) and not(s1)));

        RF_s0 <= not(s3) and not(s2) and s1 and s0;

        RF_s1 <= not(s3) and s2 and s1 and not(s0);

        alu_s0 <= not(s3) and s2 and not(s1) and s0;

        alu_s1 <= not(s3) and s2 and s1 and s0;

        M_s <= s3 and not(s2) and s1 and s0;
end comb;

-- registrador de instrução
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity instreg is
    port(
        clk : in std_logic;
        IR_ld : in std_logic;                   -- sinal de load
        I : in std_logic_vector(15 downto 0);  -- entrada de dados
        IR : out std_logic_vector(15 downto 0) -- saída do registrador
    );
end instreg;
architecture behav of instreg is
    component flipflop
        port (
            d : in std_logic;       -- entrada de dados
            clk : in std_logic;     -- sinal de clock
            load : in std_logic;    -- sinal de habilitação
            q : out std_logic       -- saída do registrador
        );
    end component;

    signal q_internal : std_logic_vector(15 downto 0);  
begin
    ff0: flipflop port map (d => I(0), clk => clk, load => IR_ld, q => q_internal(0));
    ff1: flipflop port map (d => I(1), clk => clk, load => IR_ld, q => q_internal(1));
    ff2: flipflop port map (d => I(2), clk => clk, load => IR_ld, q => q_internal(2));
    ff3: flipflop port map (d => I(3), clk => clk, load => IR_ld, q => q_internal(3));
    ff4: flipflop port map (d => I(4), clk => clk, load => IR_ld, q => q_internal(4));
    ff5: flipflop port map (d => I(5), clk => clk, load => IR_ld, q => q_internal(5));
    ff6: flipflop port map (d => I(6), clk => clk, load => IR_ld, q => q_internal(6));
    ff7: flipflop port map (d => I(7), clk => clk, load => IR_ld, q => q_internal(7));
    ff8: flipflop port map (d => I(8), clk => clk, load => IR_ld, q => q_internal(8));
    ff9: flipflop port map (d => I(9), clk => clk, load => IR_ld, q => q_internal(9));
    ff10: flipflop port map (d => I(10), clk => clk, load => IR_ld, q => q_internal(10));
    ff11: flipflop port map (d => I(11), clk => clk, load => IR_ld, q => q_internal(11));
    ff12: flipflop port map (d => I(12), clk => clk, load => IR_ld, q => q_internal(12));
    ff13: flipflop port map (d => I(13), clk => clk, load => IR_ld, q => q_internal(13));
    ff14: flipflop port map (d => I(14), clk => clk, load => IR_ld, q => q_internal(14));
    ff15: flipflop port map (d => I(15), clk => clk, load => IR_ld, q => q_internal(15));

    IR <= q_internal;
end behav;

-- contador de programa (PC)
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc is
    port (
        clk      : in  std_logic;
        ld       : in  std_logic;
        clr      : in  std_logic;
        up       : in  std_logic;
        load_val : in  std_logic_vector(15 downto 0);
        count    : out std_logic_vector(15 downto 0)
    );
end pc;
architecture behavioral of pc is
    signal counter: unsigned(0 to 15) := (others => '0');
begin
    process(clk, clr)
    begin
        if clr = '1' then
            counter <= (others => '0');
        elsif rising_edge(clk) then
            if ld = '1' then
                counter <= unsigned(load_val);  -- Converte 'load_val' para unsigned
            elsif up = '1' then
                counter <= counter + 1;  -- Incrementa o contador
            end if;
        end if;
    end process;
    count <= std_logic_vector(counter);  -- Converte 'counter' para std_logic_vector para saída
end behavioral;

-- somador de 16 bits
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  
entity adder is
    port(
        a   : in  std_logic_vector(15 downto 0);
        b   : in  std_logic_vector(15 downto 0);
        sum : out std_logic_vector(15 downto 0)
    );
end adder;
architecture behavioral of adder is
begin
    process(a, b)
    begin
        sum <= std_logic_vector(unsigned(a) + unsigned(b) - "0000000000001");  -- Converte a e b para unsigned, realiza a soma e converte de volta para std_logic_vector
    end process;
end behavioral;

-- multiplexador de 16 bits
library ieee;
use ieee.std_logic_1164.all;
entity mux is
    port (
        sel : in std_logic;
        a : in std_logic_vector(15 downto 0);
        b : in std_logic_vector(15 downto 0);
        y : out std_logic_vector(15 downto 0)
    );
end mux;
architecture behavioral of mux is
begin
    process(sel, a, b)
    begin
        if sel = '0' then
            y <= a; -- Seleciona a entrada 'a'
        else
            y <= b; -- Seleciona a entrada 'b'
        end if;
    end process;
end behavioral;

-- unidade de controle
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity control is
    port(
        clk : in std_logic;
        IR : in std_logic_vector(15 downto 0); -- recebe de I
        out_IR : out std_logic_vector(11 downto 0);
        RF_Rp_zero, RF_Rp_gt_rq : in std_logic;
        RF_Rp_data : in std_logic_vector(15 downto 0); -- necessário para entrar no mux do PC
        I_rd : out std_logic; -- saída de leitura para a memória de instruções
        D_rd, D_wr : out std_logic;
        RF_s0, RF_s1 : out std_logic;
        RF_W_wr, RF_Rp_rd, RF_Rq_rd : out std_logic;
        alu_s0, alu_s1 : out std_logic;
        I_addr : out std_logic_vector(15 downto 0));
		  --IR_load : out std_logic;
		  --dbg : out std_logic_vector(3 downto 0));
end control;
architecture controller of control is
    signal q3_s3, q2_s2, q1_s1, q0_s0 : std_logic;
    signal n3_d3, n2_d2, n1_d1, n0_d0 : std_logic;
    signal ir_out : std_logic_vector(15 downto 0);
    signal sig_ir_ld, pc_clr, pc_inc, pc_ld : std_logic;
    signal mux_out, mux_in1 : std_logic_vector(15 downto 0);
    signal pc_out : std_logic_vector(15 downto 0);
    signal sig_M_s : std_logic;
    component reg4 is
        port(
            d : in std_logic_vector(3 downto 0);
            clk : in std_logic;
            load : in std_logic;
            q : out std_logic_vector(3 downto 0));
    end component;
    component combinacional is
        port(
            s3, s2, s1, s0 : in std_logic;
            op3, op2, op1, op0 : in std_logic;
            IR : in std_logic_vector(11 downto 0); --ver
            RF_Rp_zero, RF_Rp_gt_rq : in std_logic;
            n3, n2, n1, n0 : out std_logic;
            PC_ld, PC_clr, PC_inc : out std_logic;
            I_rd : out std_logic;
            IR_ld : out std_logic;
            D_rd, D_wr : out std_logic;
            RF_s0, RF_s1 : out std_logic;
            RF_W_wr, RF_Rp_rd, RF_Rq_rd : out std_logic;
            alu_s0, alu_s1 : out std_logic;
            M_s : out std_logic);
    end component;
    component instreg is
        port(
            clk : in std_logic;
            IR_ld : in std_logic;
            I : in std_logic_vector(15 downto 0);
            IR : out std_logic_vector(15 downto 0));
    end component;
    component pc is
        port(
            clk : in std_logic;
            ld : in std_logic;
            clr : in std_logic;
            up : in std_logic;
            load_val : in std_logic_vector(15 downto 0);
            count : out std_logic_vector(15 downto 0));
    end component;
    component adder is
        port(
            a : in std_logic_vector(15 downto 0);
            b : in std_logic_vector(15 downto 0);
            sum : out std_logic_vector(15 downto 0));
    end component;
    component mux is
        port(
            sel : in std_logic;
            a : in std_logic_vector(15 downto 0);
            b : in std_logic_vector(15 downto 0);
            y : out std_logic_vector(15 downto 0));
    end component;
begin
    statereg: reg4 port map(d => n3_d3 & n2_d2 & n1_d1 & n0_d0, clk => clk, load => '1',
    q(3) => q3_s3, q(2) => q2_s2, q(1) => q1_s1, q(0) => q0_s0);

    comb: combinacional port map(s3 => q3_s3, s2 => q2_s2, s1 => q1_s1, s0 => q0_s0, -- lembrar de mapear o restante de IR
    op3 => ir_out(15), op2 => ir_out(14), op1 => ir_out(13), op0 => ir_out(12), IR(11) => ir_out(11), 
    IR(10) => ir_out(10), IR(9) => ir_out(9), IR(8) => ir_out(8), IR(7) => ir_out(7), IR(6) => ir_out(6),
    IR(5) => ir_out(5), IR(4) => ir_out(4), IR(3) => ir_out(3), IR(2) => ir_out(2),
    IR(1) => ir_out(1), IR(0) => ir_out(0), 
    RF_Rp_zero => RF_Rp_zero, RF_Rp_gt_rq => RF_Rp_gt_rq, n3 => n3_d3, n2 => n2_d2,
    n1 => n1_d1, n0 => n0_d0, PC_ld => pc_ld, PC_clr => pc_clr, PC_inc => pc_inc,
    I_rd => i_rd, IR_ld => sig_ir_ld, D_rd => D_rd, D_wr => D_wr, RF_s0 => RF_s0,
    RF_s1 => RF_s1, RF_W_wr => RF_W_wr, RF_Rp_rd => RF_Rp_rd, RF_Rq_rd => RF_Rq_rd,
    alu_s0 => alu_s0, alu_s1 => alu_s1, M_s => sig_M_s);

    instructionreg : instreg port map(clk => clk, IR_ld => sig_ir_ld, I => IR, IR => ir_out);

    programcounter : pc port map(clk => clk, ld => pc_ld, clr => pc_clr, up => pc_inc,
    load_val => mux_out, count => pc_out);

    add : adder port map(a => pc_out, b => ir_out, sum => mux_in1);

    multiplexador : mux port map(sel => sig_M_s, a => mux_in1, b => RF_Rp_data, y => mux_out); --i0 vai o somador, i1 vai Rp_data
    I_addr <= pc_out;
    out_IR <= ir_out(11 downto 0);
	--dbg <= q3_s3 & q2_s2 & q1_s1 & q0_s0; -- variável para debug dos estados
	--ir_load <= sig_ir_ld;
end controller;
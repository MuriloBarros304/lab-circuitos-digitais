library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

-- flipflop
entity flipflop is
    port(
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

-- registrador de 16 bits
entity reg16 is
    port(
        d : in std_logic_vector(15 downto 0); -- sinal de entrada
        clk : in std_logic;                   -- clock
        load : in std_logic;                  -- load
        reset : in std_logic;                 -- reset
        q : out std_logic_vector(15 downto 0) -- sinal de saída
    );
end reg16;
architecture structural of reg16 is
    component flipflop
        port (
            d : in std_logic;       -- entrada de dados
            clk : in std_logic;     -- sinal de clock
            load : in std_logic;    -- sinal de habilitação
            reset : in std_logic;   -- sinal de reset
            q : out std_logic       -- saída do registrador
        );
    end component;
    signal q_internal : std_logic_vector(15 downto 0);
begin
    -- Instanciando 16 flip-flops manualmente
    ff0: flipflop port map (d => d(0), clk => clk, load => load, reset => reset, q => q_internal(0));
    ff1: flipflop port map (d => d(1), clk => clk, load => load, reset => reset, q => q_internal(1));
    ff2: flipflop port map (d => d(2), clk => clk, load => load, reset => reset, q => q_internal(2));
    ff3: flipflop port map (d => d(3), clk => clk, load => load, reset => reset, q => q_internal(3));
    ff4: flipflop port map (d => d(4), clk => clk, load => load, reset => reset, q => q_internal(4));
    ff5: flipflop port map (d => d(5), clk => clk, load => load, reset => reset, q => q_internal(5));
    ff6: flipflop port map (d => d(6), clk => clk, load => load, reset => reset, q => q_internal(6));
    ff7: flipflop port map (d => d(7), clk => clk, load => load, reset => reset, q => q_internal(7));
    ff8: flipflop port map (d => d(8), clk => clk, load => load, reset => reset, q => q_internal(8));
    ff9: flipflop port map (d => d(9), clk => clk, load => load, reset => reset, q => q_internal(9));
    ff10: flipflop port map (d => d(10), clk => clk, load => load, reset => reset, q => q_internal(10));
    ff11: flipflop port map (d => d(11), clk => clk, load => load, reset => reset, q => q_internal(11));
    ff12: flipflop port map (d => d(12), clk => clk, load => load, reset => reset, q => q_internal(12));
    ff13: flipflop port map (d => d(13), clk => clk, load => load, reset => reset, q => q_internal(13));
    ff14: flipflop port map (d => d(14), clk => clk, load => load, reset => reset, q => q_internal(14));
    ff15: flipflop port map (d => d(15), clk => clk, load => load, reset => reset, q => q_internal(15));

    q <= q_internal;
end structural;


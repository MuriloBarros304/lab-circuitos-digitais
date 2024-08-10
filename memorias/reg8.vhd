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
-- registrador de 8 bits
entity reg8 is
    port(
        d : in std_logic_vector(7 downto 0);  -- sinal de entrada
        clk : in std_logic;                   -- clock
        load : in std_logic;                  -- load
        reset : in std_logic;                 -- reset
        q : out std_logic_vector(7 downto 0)  -- sinal de saída
    );
end reg8;
architecture structural of reg8 is
    component flipflop
        port (
            d : in std_logic;       -- entrada de dados
            clk : in std_logic;     -- sinal de clock
            load : in std_logic;    -- sinal de habilitação
            reset : in std_logic;   -- sinal de reset
            q : out std_logic       -- saída do registrador
        );
    end component;
    signal q_internal : std_logic_vector(7 downto 0);
begin
    -- Instanciando 8 flip-flops manualmente
    ff0: flipflop port map (d => d(0), clk => clk, load => load, reset => reset, q => q_internal(0));
    ff1: flipflop port map (d => d(1), clk => clk, load => load, reset => reset, q => q_internal(1));
    ff2: flipflop port map (d => d(2), clk => clk, load => load, reset => reset, q => q_internal(2));
    ff3: flipflop port map (d => d(3), clk => clk, load => load, reset => reset, q => q_internal(3));
    ff4: flipflop port map (d => d(4), clk => clk, load => load, reset => reset, q => q_internal(4));
    ff5: flipflop port map (d => d(5), clk => clk, load => load, reset => reset, q => q_internal(5));
    ff6: flipflop port map (d => d(6), clk => clk, load => load, reset => reset, q => q_internal(6));
    ff7: flipflop port map (d => d(7), clk => clk, load => load, reset => reset, q => q_internal(7));

    q <= q_internal;
end structural;


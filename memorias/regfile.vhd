library ieee;
use ieee.std_logic_1164.all;

entity regfile is
    port(
        clk : in std_logic;
        W_data : in std_logic_vector(7 downto 0);
        W_addr : in std_logic_vector(1 downto 0);
        W_en : in std_logic;
        R_addr : in std_logic_vector(1 downto 0);
        R_en : in std_logic;
        R_data : out std_logic_vector(7 downto 0));
end regfile;

architecture behav of regfile is
    type tmp_array is array(0 to 3) of std_logic_vector(7 downto 0); -- array de 4 sinais de 8 bits

    signal out_deco: std_logic_vector(3 downto 0);
    signal out_regs: tmp_array;

component decode4 is
    port(
        en : in std_logic;
        i : in std_logic_vector(1 downto 0);
        D : out std_logic_vector(3 downto 0));
end component;

component reg8 is
    port(
        clk, load : in std_logic;
        D : in std_logic_vector(7 downto 0);
        Q : out std_logic_vector(7 downto 0));
end component;

component mux4_1 is
    port(
        A : tmp_array;
        en : in std_logic;
        S : in std_logic_vector(1 downto 0);
        Z : out std_logic_vector(7 downto 0));
end component;

begin
    -- decodificador de endereços de escrita
    deco0 : decode4 port map(en=>W_en, i=>W_addr, D=>out_deco);
    
    -- registradores ligados ao mux
    reg0 : reg8 port map(clk=>clk, load=>out_deco(0), D=>W_data, Q=>out_regs(0));
    reg1 : reg8 port map(clk=>clk, load=>out_deco(1), D=>W_data, Q=>out_regs(1));
    reg2 : reg8 port map(clk=>clk, load=>out_deco(2), D=>W_data, Q=>out_regs(2));
    reg3 : reg8 port map(clk=>clk, load=>out_deco(3), D=>W_data, Q=>out_regs(3));
    
    -- mux para leitura dos dados, a seleção é feita pelo endereço de leitura
    mux0 : mux4_1 port map(A=>out_regs, S=>R_addr, Z=>R_data, en=>R_en);
end behav;

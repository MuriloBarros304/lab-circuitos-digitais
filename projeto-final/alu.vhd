library ieee;
use ieee.std_logic_1164.all;

entity alu is
    port(
        x, y, z 	: in std_logic;
        A, B 		: in std_logic_vector(3 downto 0);
        S			: out std_logic_vector(3 downto 0));
end alu;

architecture behav of alu is

    signal IA, IB 	: std_logic_vector(3 downto 0);
    signal Cin, Cout		: std_logic;
    
    component alext is
        Port(
            x, y, z 	: in std_logic;
            a, b		: in std_logic;
            ia, ib	: out std_logic);
        end component;
    
    component somador6 is
        port(
            A, B			: in std_logic_vector(3 downto 0);
            Cin			: in std_logic;
            Cout			: out std_logic;
            Z				: out std_logic_vector(3 downto 0));
    end component;

begin

    -- extensão AL
    u0 : alext port map(x=>x, y=>y, z=>z, a=>A(0), b=>B(0), ia=>IA(0), ib=>IB(0));
    u1 : alext port map(x=>x, y=>y, z=>z, a=>A(1), b=>B(1), ia=>IA(1), ib=>IB(1));
    u2 : alext port map(x=>x, y=>y, z=>z, a=>A(2), b=>B(2), ia=>IA(2), ib=>IB(2));
    u3 : alext port map(x=>x, y=>y, z=>z, a=>A(3), b=>B(3), ia=>IA(3), ib=>IB(3));
    u4 : alext port map(x=>x, y=>y, z=>z, a=>A(4), b=>B(4), ia=>IA(4), ib=>IB(4));
    u5 : alext port map(x=>x, y=>y, z=>z, a=>A(5), b=>B(5), ia=>IA(5), ib=>IB(5));
    
    cin <= (not x and not y and z) or (not x and y and not z);
    
    -- Somador de 6 bits
    
    s0 : somador6 port map(A=>IA, B=>IB, Cin=>Cin, Cout=>Cout, Z=>S);
	
end behav;
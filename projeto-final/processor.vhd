Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity processor is
    port(
        clk : in std_logic;
        D_R_addr : in std_logic_vector(7 downto 0);
        D_R_data : out std_logic_vector(15 downto 0));
end processor;
architecture hardware of processor is
    signal pc_iaddr, i_ir, drdata_mux, rfrp_dwdata, rfrpdata_mux, c_rfwdata : std_logic_vector(15 downto 0);
    signal c_daddr : std_logic_vector(7 downto 0);
    signal c_rfwaddr, c_rfrpaddr, c_rfrqaddr : std_logic_vector(3 downto 0);
    signal c_drd, c_dwr, c_rfs1, c_rfs0, c_rfwwr, c_rfrprd, c_rfrqrd, rfrpzero_c,
    rfrpgtrq_c, c_alus1, c_alus0, c_ird : std_logic;
    component ROM is
        port(
            clock : in std_logic;
            rom_enable : in std_logic;
            address : in std_logic_vector(15 downto 0);
            data_output : out std_logic_vector(15 downto 0));
    end component;
    component RAM is
        port(
            clock : in std_logic;
            w_enable : in std_logic;
            r_enable : in std_logic;
            mem_enable : in std_logic;
            address : in std_logic_vector(7 downto 0);
            data_input : in std_logic_vector(15 downto 0);
            data_output : out std_logic_vector(15 downto 0));
    end component;
    component control is
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
    end component;
    component operational is
        port(
            clock : in std_logic;
            R_data : in std_logic_vector(15 downto 0);
            RF_W_data : in std_logic_vector(15 downto 0);
            RF_W_addr : in std_logic_vector(3 downto 0);
            RF_W_wr : in std_logic;
            RF_s : in std_logic_vector(1 downto 0);
            RF_Rp_addr : in std_logic_vector(3 downto 0);
            RF_Rp_rd : in std_logic;
            RF_Rq_addr : in std_logic_vector(3 downto 0);
            RF_Rq_rd : in std_logic;
            alu_s : in std_logic_vector (1 downto 0);
            W_data : out std_logic_vector(15 downto 0);
            RF_Rp_gt_Rq : out std_logic;
            RF_Rp_Zero : out std_logic);
    end component;
begin
    readonlymemory: ROM port map(clock => clk, rom_enable => '1', address => pc_iaddr,
    data_output => i_ir);
    
    randomaccessmemory: RAM port map(clock => clk, address => c_daddr, w_enable => c_dwr,
    r_enable => c_drd, mem_enable => '1', data_input => rfrp_dwdata, data_output => drdata_mux);

    operationalunit: operational port map(clock => clk, R_data => drdata_mux, RF_W_data => c_rfwdata,
    RF_W_addr => c_rfwaddr, RF_W_wr => c_rfwwr, RF_s => (c_rfs1, c_rfs0), RF_Rp_addr => c_rfrpaddr,
    RF_Rp_rd => c_rfrprd, RF_Rq_addr => c_rfrqaddr, RF_Rq_rd => c_rfrqrd, alu_s => (c_alus1, c_alus0),
    W_data => rfrp_dwdata, RF_Rp_gt_Rq => rfrpgtrq_c, RF_Rp_Zero => rfrpzero_c);

    controlunit: control port map(clk => clk, IR => i_ir, out_IR(11) => c_rfrpaddr(3), out_IR(10) => c_rfrpaddr(2),
    out_IR(9) => c_rfrpaddr(1), out_IR(8) => c_rfrpaddr(0), out_IR(7) => c_rfrqaddr(3), out_IR(6) => c_rfrqaddr(2),
    out_IR(5) => c_rfrqaddr(1), out_IR(4) => c_rfrqaddr(0), out_IR(3) => c_rfwaddr(3), out_IR(2) => c_rfwaddr(2),
    out_IR(1) => c_rfwaddr(1), out_IR(0) => c_rfwaddr(0), RF_Rp_zero => rfrpzero_c, RF_Rp_gt_rq => rfrpgtrq_c,
    out_IR(7) => c_addr(7), out_IR(6) => c_addr(6), out_IR(5) => c_addr(5), out_IR(4) => c_addr(4), out_IR(3) => c_addr(3),
    out_IR(2) => c_addr(2), out_IR(1) => c_addr(1), out_IR(0) => c_addr(0),
    RF_Rp_data => rfrp_dwdata, I_rd => c_ird, D_rd => c_drd, D_wr => c_dwr, RF_s0 => c_rfs0, RF_s1 => c_rfs1,
    RF_W_wr => c_rfwwr, RF_Rp_rd => c_rfrprd, RF_Rq_rd => c_rfrqrd, alu_s0 => c_alus0, alu_s1 => c_alus1,
    I_addr => pc_iaddr);
    D_R_addr <= c_daddr;
end hardware;
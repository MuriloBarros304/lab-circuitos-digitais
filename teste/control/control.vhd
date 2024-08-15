library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control is
port (
	clk, reset : in std_logic;
	RF_Rp_zero, cmp_gt : in std_logic;
	I_data : in std_logic_vector(15 downto 0);
	PC_set : in std_logic_vector(15 downto 0);
	I_rd, D_rd, D_wr, RF_W_Wen, RF_Rp_Ren, RF_Rq_Ren : out std_logic;
	RF_W_addr, RF_Rp_addr, RF_Rq_addr : out std_logic_vector(3 DOWNTO 0);
	RF_Sel, ALU_Sel : out std_logic_vector(1 DOWNTO 0);
	D_addr, RF_W_Data : out std_logic_vector(7 DOWNTO 0);
	I_addr : out std_logic_vector(15 downto 0)
);
end control;

architecture main of control is

    component IR is
        port (
            instIN: in std_logic_vector(15 downto 0);
            ld, clk: in std_logic;
            instOUT: out std_logic_vector(15 downto 0)
        );
    end component;

    component pc is
        port (
            clk    : in std_logic;
            ld     : in std_logic;
            sel    : in std_logic;
            clr    : in std_logic;
            up     : in std_logic;
            jump   : in std_logic_vector(15 downto 0);
            offset : in std_logic_vector(7 downto 0);
            pcOUT  : out std_logic_vector(15 downto 0)
        );
    end component;

component Controller is
port(
	clk, reset : in std_logic;
	IR03, IR47, IR811, OPCODE : in std_logic_vector(3 DOWNTO 0);
	RF_RP_zero, cmp_gt : in std_logic;
	PC_ld, PC_clr, PC_inc, i_rd, IR_ld, D_rd, D_wr, RF_W_wr, RF_s1,
	RF_s0, RF_Rp_rd, RF_Rq_rd, alu_s1, alu_s0, PC_sel
	: out std_logic;
	D_addr03, D_addr47, RF_W_data03, RF_W_data47, RF_W_addr, RF_Rp_addr,
	RF_Rq_addr : out std_logic_vector(3 DOWNTO 0)
);
end component;

SIGNAL IR_ldo, PC_ldo, PC_clro, PC_inco, PC_selo : std_logic;
SIGNAL IR_dout : std_logic_vector(15 DOWNTO 0);
begin

	IR0 : IR port map (clk => clk, ld => IR_ldo, instIN => I_Data, instOUT => IR_dout);
	PC0 : pc port map (clk => clk, ld => PC_ldo, clr => PC_clro, up => PC_inco, sel => PC_selo,
	offset => IR_dout(7 DOWNTO 0), jump => PC_set, pcOUT => I_addr);
	Control0 : Controller port map (clk => clk, reset => reset, IR03 => IR_dout(3 DOWNTO 0), IR47 => IR_dout(7 DOWNTO 4),
		IR811 => IR_dout(11 DOWNTO 8), OPCODE => IR_dout(15 DOWNTO 12), RF_RP_zero => RF_Rp_zero, cmp_gt => cmp_gt, PC_ld => PC_ldo,
		PC_clr => PC_clro, PC_inc => PC_inco, i_rd => I_rd, IR_ld => IR_ldo, D_rd => D_rd, D_wr => D_wr, RF_W_wr => RF_W_Wen,
		RF_s1 => RF_Sel(1), RF_s0 => RF_Sel(0), RF_Rp_rd => RF_Rp_Ren, RF_Rq_rd => RF_Rq_Ren, alu_s1 => ALU_Sel(1), alu_s0 => ALU_Sel(0),
		PC_sel => PC_selo, D_addr03 => D_addr(3 DOWNTO 0), D_addr47 => D_addr(7 DOWNTO 4), RF_W_data03 => RF_W_Data(3 DOWNTO 0),
		RF_W_data47 => RF_W_Data(7 DOWNTO 4), RF_W_addr => RF_W_addr, RF_Rp_addr => RF_Rp_addr, RF_Rq_addr => RF_Rq_addr
		);
end architecture main;
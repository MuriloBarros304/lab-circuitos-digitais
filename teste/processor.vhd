library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity processor is
    port(
        clk      : in std_logic;
        reset    : in std_logic;
        PC_addr  : out std_logic_vector(15 downto 0);
        IR_data  : out std_logic_vector(15 downto 0);
        D_W_data : out std_logic_vector(15 downto 0);
        D_R_data : out std_logic_vector(15 downto 0)
    );
end processor;

architecture hardware of processor is

    component control is
        port(
            clk          : in std_logic;
            reset        : in std_logic;
            RF_Rp_zero   : in std_logic;
            cmp_gt       : in std_logic;
            I_data       : in std_logic_vector(15 downto 0);
            PC_set       : in std_logic_vector(15 downto 0);
            I_rd         : out std_logic;
            D_rd         : out std_logic;
            D_wr         : out std_logic;
            RF_W_Wen     : out std_logic;
            RF_Rp_Ren    : out std_logic;
            RF_Rq_Ren    : out std_logic;
            RF_W_addr    : out std_logic_vector(3 downto 0);
            RF_Rp_addr   : out std_logic_vector(3 downto 0);
            RF_Rq_addr   : out std_logic_vector(3 downto 0);
            RF_Sel       : out std_logic_vector(1 downto 0);
            ALU_Sel      : out std_logic_vector(1 downto 0);
            D_addr       : out std_logic_vector(7 downto 0);
            RF_W_Data    : out std_logic_vector(7 downto 0);
            I_addr       : out std_logic_vector(15 downto 0)
        );
    end component;

    component operational is
        port(
            clock       : in std_logic;
            R_data      : in std_logic_vector(15 downto 0);
            RF_W_data   : in std_logic_vector(7 downto 0);
            RF_W_addr   : in std_logic_vector(3 downto 0);
            RF_W_wr     : in std_logic;
            RF_s        : in std_logic_vector(1 downto 0);
            RF_Rp_addr  : in std_logic_vector(3 downto 0);
            RF_Rp_rd    : in std_logic;
            RF_Rq_addr  : in std_logic_vector(3 downto 0);
            RF_Rq_rd    : in std_logic;
            alu_s       : in std_logic_vector(1 downto 0);
            W_data      : out std_logic_vector(15 downto 0);
            RF_Rp_gt_Rq : out std_logic;
            RF_Rp_Zero  : out std_logic
        );
    end component;

    component RAM is
        port(
            addr    : in std_logic_vector(7 downto 0);
            rd      : in std_logic;
            wr      : in std_logic;
            clock   : in std_logic;
            W_data  : in std_logic_vector(15 downto 0);
            R_data  : out std_logic_vector(15 downto 0)
        );
    end component;

    component ROM is
        port(
            addr : in std_logic_vector(15 downto 0);
            rd   : in std_logic;
            data : out std_logic_vector(15 downto 0)
        );
    end component;
	 
signal aux_pc_addr, aux_I_data, aux_W_data, aux_R_data: std_logic_vector(15 downto 0);
signal aux_alu, aux_RF_Sel: std_logic_vector(1 downto 0);
signal aux_D_rd, greater, zero, aux_D_wr, aux_I_rd, aux_RF_W_wr, aux_RF_Rp_rd, aux_RF_Rq_rd: std_logic;
signal aux_RF_W_addr, aux_RF_Rp_addr, aux_RF_Rq_addr: std_logic_vector(3 downto 0);
signal aux_RF_W_Data, aux_D_addr: std_logic_vector(7 downto 0);

begin

    RAM0 : RAM
        port map(
            addr   => aux_D_addr,
            rd     => aux_D_rd,
            wr     => aux_D_wr,
            clock  => clk,
            W_data => aux_W_data,
            R_data => aux_R_data
        );

    ROM0 : ROM
        port map(
            addr => aux_pc_addr,
            rd   => aux_I_rd,
            data => aux_I_data
        );

    control0 : control
        port map(
            clk         => clk,
            reset       => reset,
            RF_Rp_zero  => zero,
            cmp_gt      => greater,
            I_data      => aux_I_data,
            PC_set      => aux_W_data,
            I_rd        => aux_I_rd,
            D_rd        => aux_D_rd,
            D_wr        => aux_D_wr,
            RF_W_Wen    => aux_RF_W_wr,
            RF_Rp_Ren   => aux_RF_Rp_rd,
            RF_Rq_Ren   => aux_RF_Rq_rd,
            RF_W_addr   => aux_RF_W_addr,
            RF_Rp_addr  => aux_RF_Rp_addr,
            RF_Rq_addr  => aux_RF_Rq_addr,
            RF_Sel      => aux_RF_Sel,
            ALU_Sel     => aux_alu,
            D_addr      => aux_D_addr,
            RF_W_Data   => aux_RF_W_Data,
            I_addr      => aux_pc_addr
        );

    operational0 : operational
        port map(
            clock        => clk,
            R_data       => aux_R_data,
            RF_W_data    => aux_RF_W_Data,
            RF_W_addr    => aux_RF_W_addr,
            RF_W_wr      => aux_RF_W_wr,
            RF_s         => aux_RF_Sel,
            RF_Rp_addr   => aux_RF_Rp_addr,
            RF_Rp_rd     => aux_RF_Rp_rd,
            RF_Rq_addr   => aux_RF_Rq_addr,
            RF_Rq_rd     => aux_RF_Rq_rd,
            alu_s        => aux_alu,
            W_data       => aux_W_data,
            RF_Rp_gt_Rq  => greater,
            RF_Rp_Zero   => zero
        );
		  
		  PC_addr <= aux_pc_addr;
        IR_data  <= aux_I_data;
        D_W_data  <= aux_W_data;
        D_R_data <= aux_R_data;

end hardware;
library ieee;
use ieee.std_logic_1164.all;

entity operational is
	port(clock : in std_logic;
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
end operational;

architecture behav of operational is
	signal aux0, aux1, aux2, aux3: std_logic_vector(15 downto 0);
	signal dummy0, dummy1: std_logic;

--mux3x1 
component mux3x1_16bits is 
	port( A: in std_logic_vector (15 downto 0);
		   B: in std_logic_vector (15 downto 0);
		   C: in std_logic_vector (15 downto 0);
       sel: in std_logic_vector (1 downto 0);
		   D: out std_logic_vector (15 downto 0));
end component;

--regfile
component regfile is
	port(    clk: in std_logic;
         W_data: in std_logic_vector(15 downto 0);
         W_addr: in std_logic_vector(3 downto 0);
           W_wr: in std_logic;
        Rp_addr: in std_logic_vector(3 downto 0);
          Rp_rd: in std_logic;
		  Rq_addr: in std_logic_vector(3 downto 0);
          Rq_rd: in std_logic; 
        Rp_data: out std_logic_vector(15 downto 0);
		  Rq_data: out std_logic_vector(15 downto 0));
end component;

--comparator
component comparator16 is
  port( A: in std_logic_vector(15 downto 0); 
		  B: in std_logic_vector(15 downto 0);
		 gt: out std_logic;
		 eq: out std_logic);
end component;

--alu
component alu is
	port( si: in std_logic_vector (1 downto 0);
			 A: in std_logic_vector(15 downto 0);
			 B: in std_logic_vector(15 downto 0);
			 S: out std_logic_vector(15 downto 0));
end component;

begin

	mux: mux3x1_16bits port map(A => RF_W_data, B => R_data, C => aux3, sel => RF_s, D => aux0);
	reg: regfile port map(clk => clock, W_data => aux0, W_addr => RF_W_addr, W_wr => RF_W_wr, Rp_addr => RF_Rp_addr, 
	Rp_rd => RF_Rp_rd, Rq_addr => RF_Rq_addr, Rq_rd => RF_Rq_rd, Rp_data => aux1, Rq_data => aux2);
	comp0: comparator16 port map(A => aux1, B => aux2, gt => RF_Rp_gt_Rq, eq => dummy0);
	alu0: alu port map(si => alu_s, A => aux1, B => aux2, S => aux3);
	comp1: comparator16 port map(A => aux1, B => "0000000000000000", gt => dummy1, eq => RF_Rp_Zero);
	W_data <= aux1;
end behav;
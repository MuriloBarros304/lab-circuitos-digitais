library ieee;
use ieee.std_logic_1164.all;

entity calc is
	port(
		a5, a4, a3, a2, a1, a0 : in bit;
		b5, b4, b3, b2, b1, b0 : in bit;
		clk : in bit;
		sub : in bit;
		load : in bit;
		s5, s4, s3, s2, s1, s0 : out bit
	);
	
component mux2x1_6b is
   port (
      a : in bit_vector (5 downto 0);  
      b : in bit_vector (5 downto 0);  
      s : in bit;                  
      d : out bit_vector (5 downto 0) 
    );
end component;

component somador_6b is
	port(
        a : in bit;    
        b : in bit;      
        cin : in bit;    
        sum : out bit;   
        cout : out bit   
	);
end component;	
	
component reg6 is
	port(
      c : in bit;  
      load : in bit; 
      i0, i1, i2, i3, i4, i5 : in bit; 
      q0, q1, q2, q3, q4, q5 : out bit  
	);
end component;
	
signal sin : bit_vector (5 downto 0); -- entrada so somador
signal carry1 : bit;
signal carry2 : bit;
signal carry3 : bit;
signal carry4 : bit;
signal rin0 : bit; -- entrada do registrador
signal ld : bit;
	
architecture behaviorial of calc is
begin
	-- mux
	m0: mux2x1_6b port map(a(0) => b0, b(0) => not(b0), s => sub, d(0) => sin(0)); -- verificar se pode usar not aqui
	m1: mux2x1_6b port map(a(1) => b1, b(1) => not(b1), s => sub, d(1) => sin(1)); 
	m2: mux2x1_6b port map(a(2) => b2, b(2) => not(b2), s => sub, d(2) => sin(2)); 
	m3: mux2x1_6b port map(a(3) => b3, b(3) => not(b3), s => sub, d(3) => sin(3)); 
	m4: mux2x1_6b port map(a(4) => b0, b(4) => not(b4), s => sub, d(4) => sin(4)); 
	m5: mux2x1_6b port map(a(5) => b0, b(5) => not(b5), s => sub, d(5) => sin(5)); 
	
	-- somador
	s0: somador port map(a => a0, b => sin(0), cin => carry1, cout => carry2, sum => rin0);
	s1:
-- subtrator de 1 bit
entity compare is
    port(
        a, b, in_eq, in_gt : in bit;
        out_eq, out_gt : out bit
    );
end compare;
              
architecture behav of compare is
begin
    out_gt <= in_gt or (in_eq and a and (not(b)));
	 out_eq <= in_eq and (a xnor b);
end behav;

-- comparador de 4 bits
entity comparator is
    port(
        a, b : in bit_vector (3 downto 0);
        in_eq, in_gt : in bit;
        out_eq, out_gt : out bit
    );
end comparator;

architecture hardware of comparator is
    component compare is
        port(
            a, b, in_eq, in_gt : in bit;
            out_eq, out_gt : out bit
        );
    end component;    
    signal gt, eq : bit_vector (3 downto 1);
	 signal init_eq : bit := '1';
	 signal init_gt : bit := '0';
begin
    c3: compare port map(a => a(3), b => b(3), in_eq => init_eq, in_gt => init_gt, out_eq => eq(3), out_gt => gt(3));
    c2: compare port map(a => a(2), b => b(2), in_eq => eq(3), in_gt => gt(3), out_eq => eq(2), out_gt => gt(2));
    c1: compare port map(a => a(1), b => b(1), in_eq => eq(2), in_gt => gt(2), out_eq => eq(1), out_gt => gt(1));
    c0: compare port map(a => a(0), b => b(0), in_eq => eq(1), in_gt => gt(1), out_eq => out_eq, out_gt => out_gt);
end hardware;
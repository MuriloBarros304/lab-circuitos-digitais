-- subtrator de 1 bit
entity compare is
    port(
        a, b, in_eq, in_gt : in bit;
        out_eq, out_gt : out bit
    );
end compare;
              
architecture behav of compare is
begin
    out_ gt = in_ gt or (in_eq and a and (not(b)));
    bout <= (not(a) and bin) or (not(a) and b) or (b and bin);
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
begin
    c3: compare port map(a(3) => a(3), b(3) => b(3), in_eq => open, in_gt => open, out_eq => eq(3), out_gt => gt(3), );
    c2: compare port map(a(2) => a(2), b(2) => b(2), in_eq => eq(3), in_gt => gt(3), out_eq => eq(2), out_gt => gt(2));
    c1: compare port map(a(1) => a(1), b(1) => b(1), in_eq => eq(2), in_gt => gt(2), out_eq => eq(1), out_gt => gt(1));
    c0: compare port map(a(0) => a(0), b(0) => b(0), in_eq => eq(1), in_gt => gt(1), out_eq => out_eq, out_gt => out_gt);

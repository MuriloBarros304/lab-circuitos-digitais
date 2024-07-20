-- subtrator de 1 bit
entity subtract is
    port(
        x, y, bin : in bit;
        d, bout : out bit
    );
end subtract;
              
architecture behav of subtract is
begin
    d <= a xor b xor bin;
    bout <= (not(a) and bin) or (not(a) and b) or (b and bin);
end behav;

-- subtrator de 4 bits
entity subtractor is
    port(
        x, y : in bit_vector (3 downto 0);
        d, bout : out bit_vector (3 downto 0)
    );
end subtractor;
              
architecture hardware of subtractor is
    component subtract is
        port(
            x, y, bin : in bit;
            d, bout : out bit
        );
    end component;
    signal carry1, carry2, carry3 : bit;
begin
    s0: subtractor port map(x => x(0), y => y(0), bin => open, d => d(0), bout => carry1);
    s1: subtractor port map(x => x(1), y => y(1), bin => carry1, d => d(1), bout => carry2);
    s2: subtractor port map(x => x(2), y => y(2), bin => carry2, d => d(2), bout => carry3);
    s3: subtractor port map(x => x(3), y => y(3), bin => open, d => d(3), bout => open);
end hardware;
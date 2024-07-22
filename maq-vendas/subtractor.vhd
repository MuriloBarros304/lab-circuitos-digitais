-- subtrator de 1 bit
entity subtract is
    port(
        x, y, bin : in bit;
        d, bout : out bit
    );
end subtract;

architecture behav of subtract is
begin
    d <= x xor y xor bin;
    bout <= (not x and bin) or (not x and y) or (y and bin);
end behav;

-- Subtrator de 4 bits
entity subtractor is
    port(
        x, y : in bit_vector (3 downto 0);
        bin : in bit;
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
    s0: subtract port map(x => x(0), y => y(0), bin => bin, d => d(0), bout => carry1);
    s1: subtract port map(x => x(1), y => y(1), bin => carry1, d => d(1), bout => carry2);
    s2: subtract port map(x => x(2), y => y(2), bin => carry2, d => d(2), bout => carry3);
    s3: subtract port map(x => x(3), y => y(3), bin => carry3, d => d(3), bout => bout(3));
end hardware;

-- somador
entity sum is
    port(
       a : in bit;      -- primeiro operando de 1 bit
       b : in bit;      -- segundo operando de 1 bit
       cin : in bit;    -- carry-in de 1 bit
       sum : out bit;   -- soma de 1 bit
       cout : out bit   -- carry-out de 1 bit
    );
end sum;

architecture behavioral of sum is
begin
    process(a, b, cin)
    begin
       sum <= ((a xor b) xor cin);  
       cout <= ((a and b) or (a and cin) or (b and cin));  
    end process;
end behavioral;

entity adder is
    port(
        a : in bit_vector(3 downto 0);
        b : in bit_vector(3 downto 0);
        cin : in bit;
        sum : out bit_vector(3 downto 0);
        cout : out bit
    );
end adder;

architecture hardware of adder is
    component sum is
        port(
            a : in bit;      -- primeiro operando de 1 bit
            b : in bit;      -- segundo operando de 1 bit
            cin : in bit;    -- carry-in de 1 bit
            sum : out bit;   -- soma de 1 bit
            cout : out bit   -- carry-out de 1 bit           
        );
    end component;
    signal carry1, carry2, carry3 : bit;
begin
    s0: sum port map(a => a(0), b => b(0), cin => open, sum => sum(0), cout => carry1);
    s1: sum port map(a => a(1), b => b(1), cin => carry1, sum => sum(1), cout => carry2);
    s2: sum port map(a => a(2), b => b(2), cin => carry2, sum => sum(2), cout => carry3);
    s3: sum port map(a => a(3), b => b(3), cin => carry3, sum => sum(3), cout => cout);
end architecture;
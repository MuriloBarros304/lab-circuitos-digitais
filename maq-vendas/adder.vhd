-- somador
entity add is
    port(
       a : in bit;      -- primeiro operando de 1 bit
       b : in bit;      -- segundo operando de 1 bit
       cin : in bit;    -- carry-in de 1 bit
       sum : out bit;   -- soma de 1 bit
       cout : out bit   -- carry-out de 1 bit
    );
end add;

architecture behavioral of add is
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
    component add is
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
    s0: add port map(a => a(0), b => b(0), cin => '0', sum => sum(0), cout => carry1);
    s1: add port map(a => a(1), b => b(1), cin => carry1, sum => sum(1), cout => carry2);
    s2: add port map(a => a(2), b => b(2), cin => carry2, sum => sum(2), cout => carry3);
    s3: add port map(a => a(3), b => b(3), cin => carry3, sum => sum(3), cout => cout);
end architecture;
entity ula is
    port(
        x : in bit;
        y : in bit;
        z : in bit;
        a : in bit_vector(5 downto 0);
        b : in bit_vector(5 downto 0);
        ld : in bit;
        clk : in bit;
        s : out bit_vector(5 downto 0)
    );
end ula;
architecture ula of ula is
    component somador
        port(
            a : in bit;
            b : in bit;
            cin : in bit;
            sum : out bit;
            cout : out bit
        );
    end component;
    component abext
        port(
            x : in bit;
            y : in bit;
            z : in bit;
            a : in bit;
            b : in bit;
            ia : out bit;
            ib : out bit
        );
    end component;
    component cinext
        port(
            x : in bit;
            y : in bit;
            z : in bit;
            cin : out bit
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

    signal cin : bit;
    signal ia, ib : bit_vector(5 downto 0);
    signal carry1, carry2, carry3, carry4, carry5 : bit;
    signal s0, s1, s2, s3, s4, s5 : bit;
    begin
        -- extensor ab
        a0: abext port map(x => x, y => y, z => z, a => a(0), b => b(0), ia => ia(0), ib => ib(0));
        a1: abext port map(x => x, y => y, z => z, a => a(1), b => b(1), ia => ia(1), ib => ib(1));
        a2: abext port map(x => x, y => y, z => z, a => a(2), b => b(2), ia => ia(2), ib => ib(2));
        a3: abext port map(x => x, y => y, z => z, a => a(3), b => b(3), ia => ia(3), ib => ib(3));
        a4: abext port map(x => x, y => y, z => z, a => a(4), b => b(4), ia => ia(4), ib => ib(4));
        a5: abext port map(x => x, y => y, z => z, a => a(5), b => b(5), ia => ia(5), ib => ib(5));

        -- extensor cin
        c0: cinext port map(x => x, y => y, z => z, cin => cin);

        -- somadores
        s0: somador port map(a => ia(0), b => ib(0), cin => cin, sum => s0, cout => carry1);
        s1: somador port map(a => ia(1), b => ib(1), cin => carry1, sum => s1, cout => carry2);
        s2: somador port map(a => ia(2), b => ib(2), cin => carry2, sum => s2, cout => carry3);
        s3: somador port map(a => ia(3), b => ib(3), cin => carry3, sum => s3, cout => carry4);
        s4: somador port map(a => ia(4), b => ib(4), cin => carry4, sum => s4, cout => carry5);
        s5: somador port map(a => ia(5), b => ib(5), cin => carry5, sum => s5, cout => open);

        -- registrador
        r: reg6 port map(c => clk, load => ld, i0 => s0, i1 => s1, i2 => s2, i3 => s3, i4 => s4,
        i5 => s5, q0 => s(0), q1 => s(1), q2 => s(2), q3 => s(3), q4 => s(4), q5 => s(5));
end ula;


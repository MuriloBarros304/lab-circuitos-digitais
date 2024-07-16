entity reg6 is
    port (
        c : in bit;    -- Sinal de clock
        load : in bit; -- Sinal de load
        i0, i1, i2, i3, i4, i5 : in bit; -- Entradas de dados
        q0, q1, q2, q3, q4, q5 : out bit  -- Saídas de dados
    );
end reg6;

architecture behav of reg6 is
begin
    process(c)
    begin
        if (c'event and c = '1') then
            if (load = '1') then
                q5 <= i5;
                q4 <= i4;
                q3 <= i3;
                q2 <= i2;
                q1 <= i1;
                q0 <= i0;
            end if;
        end if;
    end process;
end architecture behav;
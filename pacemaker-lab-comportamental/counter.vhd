library ieee;
use ieee.std_logic_1164.all;

entity counter is
    port(
        c: in bit; -- entrada de clock
        cnt: in bit; -- decrementa o valor
        reset: in bit; -- reseta 
        tc: out bit -- indicativo de término
    );
end counter;

architecture behavior of counter is
    signal q: integer range 799 downto 0; -- variável para a saída
begin
    process(c, reset)
    begin
        if (reset = '1') then
            q <= 799;
        elsif (c'event and c = '1') then
            if (cnt = '1') then
                if (q = 0) then
                    q <= 799;
                    tc <= '1';
                else
                    q <= q - 1;
                    tc <= '0';
                end if;
            end if;
        end if;
    end process;
end architecture behavior;

library ieee;
use ieee.std_logic_1164.all;

entity counter is
    port (
        c: in bit;
        reset: in bit;
        q: out integer range 0 to 7;
        tc: out bit
    );
end counter;

architecture behavior of counter is
    signal q_var: integer range 0 to 7 := 7; -- Sinal interno para o contador
begin
    counter_process: process(c, reset)
    begin
        if reset = '1' then
            tc <= '0';
            q_var <= 7; -- Inicialização no reset
        elsif c'event and c = '1' then
            if q_var = 0 then
                tc <= '1';
                q_var <= 7; -- Reinicializa quando chega a 0
            else
                q_var <= q_var - 1; -- Contagem decrescente
            end if;
        end if;
        q <= q_var; -- Atualiza a saída
    end process;
end behavior;

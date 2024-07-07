library ieee;
use ieee.std_logic_1164.all;

entity pacemaker is
    port (
        s : in bit;    -- sensor de contração
        clk : in bit;
        p : out bit   -- forçar contração
    );
end pacemaker;

architecture behavior of pacemaker is
    type statetype is (RstTimer, WaitS, Pace);
    signal currentstate, nextstate: statetype;
    signal fc, sc : bit;
    component counter is
        port(
            c : in bit;
            reset : in bit;
            q : out integer range 0 to 7;
            tc : out bit
        );
    end component;
    
begin
    Timer : counter port map(reset => sc, c => clk, q => open, tc => fc);
    
    statereg: process(clk, sc)
    begin
        if (clk'event and clk = '1') then
            if (sc = '1') then -- estado inicial
                currentstate <= RstTimer;
            else
                currentstate <= nextstate;
            end if;
        end if;
    end process;
    
    comblogic: process (currentstate, s, fc)
    begin
        p <= '0'; -- redefinir saída padrão
        case currentstate is
            when RstTimer =>
                sc <= '1';
                nextstate <= WaitS;
            when WaitS =>
                sc <= '0';
                if s = '0' and fc = '1' then
                    nextstate <= Pace;
                elsif s = '1' then
                    nextstate <= RstTimer;
                else
                    nextstate <= WaitS;
                end if;
            when Pace =>
                p <= '1'; -- forçar contração
                nextstate <= RstTimer;
        end case;
    end process;
end architecture behavior;

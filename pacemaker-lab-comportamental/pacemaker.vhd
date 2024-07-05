library ieee;
use ieee.std_logic_1164.all;

entity pacemaker is
    port (
        s : in bit;    -- sensor de contração
        clk : in bit;
        z : in bit;    -- fim da contagem
        p : out bit;   -- forçar contração
        t : out bit    -- resetar timer
    );
end pacemaker;

architecture behavior of pacemaker is
    type statetype is (RstTimer, WaitS, Pace);
    signal currentstate, nextstate: statetype;
    signal cnt, reset : bit;

    component counter is
        port(
            c : in bit;
            cnt : in bit;
            reset : in bit;
            tc : out bit
        );
    end component;
    
begin
    statereg: process(clk)
    begin
        if (clk'event and clk = '1') then
            if (reset = '1') then -- estado inicial
                currentstate <= RstTimer;
            else
                currentstate <= nextstate;
            end if;
        end if;
    end process;
    
    comblogic: process (currentstate, s, z)
    begin
        case currentstate is
            when RstTimer =>
                cnt <= '1';
                reset <= '1';
                t <= '1';
                nextstate <= WaitS;
            when WaitS =>
                cnt <= '0';
                reset <= '0';
                t <= '0';
                if s = '1' then
                    p <= '0';
                    nextstate <= RstTimer;
                elsif z = '1' then
                    nextstate <= Pace;
                else
                    nextstate <= WaitS;
                end if;
            when Pace =>
                p <= '1'; -- forçar contração
                nextstate <= RstTimer;
        end case;
    end process;
end architecture behavior;
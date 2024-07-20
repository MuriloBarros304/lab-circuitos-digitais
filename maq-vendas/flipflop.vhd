-- flipflop (verificar se pode usar comportamental)
entity flipflop is
    port (
        d : in bit;       -- entrada de dados
        clk : in bit;     -- sinal de clock
        reset : in bit;   -- sinal de reset assíncrono
        q : out bit       -- saída do registrador
    );
end flipflop;

architecture behavioral of flipflop is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            q <= '0';          
        elsif (clk'event and clk = '1') then
            q <= d;             
        end if;
    end process;
end behavioral;

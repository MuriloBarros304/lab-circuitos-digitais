-- banco de registradores
entity regfile is
    port(
        w_data : in integer range (0 to 31);
        w_addr : in integer range (0 to 3);
        w_en : in bit;
        r_data : out integer range (0 to 31);
        r_addr : out integer range (0 to 3);
        r_en : out bit
    );

component flipflop is
    port(
        d : in bit;       -- entrada de dados
        clk : in bit;     -- sinal de clock
        reset : in bit;   -- sinal de reset assíncrono
        q : out bit       -- saída do registrador
    );
end component
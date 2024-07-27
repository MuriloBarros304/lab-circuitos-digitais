entity somador is
    port (
       a : in bit;      -- Primeiro operando de 1 bit
       b : in bit;      -- Segundo operando de 1 bit
       cin : in bit;    -- Carry-in de 1 bit
       sum : out bit;   -- Soma de 1 bit
       cout : out bit   -- Carry-out de 1 bit
    );
end somador;
 
architecture behavioral of somador is
begin
    process(a, b, cin)
    begin
        sum <= ((a xor b) xor cin);
        cout <= ((a and b) or (a and cin) or (b and cin));
    end process;
end behavioral;
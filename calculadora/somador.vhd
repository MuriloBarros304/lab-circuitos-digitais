entity somador is
   port (
      a : in bit;      -- Primeiro operando de 1 bit
      b : in bit;      -- Segundo operando de 1 bit
      cin : in bit;    -- Carry-in de 1 bit
      sum : out bit;   -- Soma de 1 bit
      cout : out bit   -- Carry-out de 1 bit
   );
end somador;

-- Declaração da arquitetura
architecture behavioral of somador is
begin
   process(a, b, cin)
   begin
      -- Atribuição das operações lógicas para o somador completo de 1 bit
      sum <= (a xor b) xor cin;  -- Soma usando portas XOR
      cout <= (a and b) or ((a xor b) and cin);  -- Carry usando portas AND e OR
   end process;
end behavioral;

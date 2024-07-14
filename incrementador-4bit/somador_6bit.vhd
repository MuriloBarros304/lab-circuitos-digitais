entity somador_6bit is
    port (
        a : in std_logic_vector (5 downto 0);  -- entrada a de 6 bits
        b : in std_logic_vector (5 downto 0);  -- entrada b de 6 bits
        cin : in std_logic;                    -- bit de carry-in
        sum : out std_logic_vector (5 downto 0); -- saída de soma de 6 bits
        cout : out std_logic                   -- bit de carry-out
    );
end somador_6bit;

-- declaração da arquitetura
architecture behavioral of somador_6bit is
begin
    process(a, b, cin)
        variable temp : unsigned(6 downto 0);  -- variável temporária para armazenar o resultado da soma
    begin
        temp := ('0' & a) + ('0' & b) + cin;   -- realiza a soma com carry-in
        sum <= temp(5 downto 0);               -- atribui os 6 bits menos significativos ao resultado da soma
        cout <= temp(6);                       -- atribui o bit mais significativo ao carry-out
    end process;
end behavioral;

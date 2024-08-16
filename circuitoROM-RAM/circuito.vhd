library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity circuito is
    port(
        clock: IN STD_LOGIC;
        rw_enable: IN STD_LOGIC;  -- Habilitação de leitura/escrita da RAM
        mem_enable: IN STD_LOGIC;  -- Habilitação geral da RAM
        rom_enable: IN STD_LOGIC;  -- Habilitação da ROM
        ram_data_output: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);  -- Saída dos dados da RAM
        rom_data_output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);  -- Saída dos dados da ROM
        add_rom: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        add_ram: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
end circuito;

architecture structure of circuito is
    signal address_rom: STD_LOGIC_VECTOR(3 DOWNTO 0);  -- Endereço da ROM
    signal address_ram: STD_LOGIC_VECTOR(3 DOWNTO 0);  -- Endereço da RAM
    signal data_rom: STD_LOGIC_VECTOR(7 DOWNTO 0);     -- Dados lidos da ROM
    signal data_ram: STD_LOGIC_VECTOR(7 DOWNTO 0);     -- Dados escritos na RAM
    signal counter: INTEGER := 0;                      -- Contador para controlar os endereços da ROM e RAM
    signal rom_to_ram: STD_LOGIC := '0';               -- Sinal para alternar entre leitura da ROM e escrita na RAM

    -- Instanciação da ROM
    component ROM16x8
        port(
            clock: IN STD_LOGIC;
            rom_enable: IN STD_LOGIC;
            address: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            data_output: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    end component;

    -- Instanciação da RAM
    component RAM16x8
        port(
            clock: IN STD_LOGIC;
            rw_enable: IN STD_LOGIC;
            mem_enable: IN STD_LOGIC;
            address: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            data_input: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            data_output: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    end component;

begin
    -- Instanciação da ROM
    rom_inst: ROM16x8
        port map (
            clock => clock,
            rom_enable => rom_enable and rom_to_ram,  -- Habilita ROM somente quando lendo
            address => address_rom,
            data_output => data_rom
        );

    -- Instanciação da RAM
    ram_inst: RAM16x8
        port map (
            clock => clock,
            rw_enable => rw_enable and not rom_to_ram,  -- Habilita RAM somente quando escrevendo
            mem_enable => mem_enable,
            address => address_ram,
            data_input => data_rom,  -- Dados lidos da ROM são passados para a RAM
            data_output => data_ram  -- Lê os dados da RAM para a saída
        );

    -- Controle de endereços e alternância entre ROM e RAM
    process(clock)
    begin
        if rising_edge(clock) then
            if mem_enable = '1' then
                if rom_to_ram = '0' then
                    -- Operação de leitura da ROM
                    if rom_enable = '1' then
                        address_rom <= conv_std_logic_vector(counter, 4);
                        rom_to_ram <= '1';  -- Alterna para escrita na RAM no próximo ciclo
                    end if;
                else
                    -- Operação de escrita na RAM
                    address_ram <= conv_std_logic_vector(15 - counter, 4);
                    rom_to_ram <= '0';  -- Alterna para leitura da ROM no próximo ciclo

                    -- Incrementa o contador
                    if counter < 15 then
                        counter <= counter + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Conexões de saída
    ram_data_output <= data_ram;
    rom_data_output <= data_rom;
    add_rom <= address_rom;
    add_ram <= address_ram;

end structure;

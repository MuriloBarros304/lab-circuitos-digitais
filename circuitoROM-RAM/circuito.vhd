library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity circuito is
    port(
        clock: IN STD_LOGIC;
        rw_enable: IN STD_LOGIC;  -- Habilitação de leitura/escrita da RAM
        mem_enable: IN STD_LOGIC; -- Habilitação geral da RAM
        rom_enable: IN STD_LOGIC;  -- Habilitação da ROM
		  ram_data_output: OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Saída dos dados da RAM
		  rom_data_output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Saída dos dados da ROM
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
            rom_enable => rom_enable,
            address => address_rom,
            data_output => data_rom
        );

    -- Instanciação da RAM
    ram_inst: RAM16x8
        port map (
            clock => clock,
            rw_enable => rw_enable,
            mem_enable => mem_enable,
            address => address_ram,
            data_input => data_rom,  -- Dados lidos da ROM são passados para a RAM
				data_output => data_ram  -- Lê os dados da RAM para a saída
        );

    -- Controle de endereços e escrita na RAM
    process(clock)
    begin
        if rising_edge(clock) then
            if ((rom_enable = '1') and (mem_enable = '1')) then
                -- Endereço da ROM
                address_rom <= conv_std_logic_vector(counter, 4);  -- Endereço crescente para ROM
					
                -- Calcula o endereço inverso para a RAM
                address_ram <= conv_std_logic_vector(15 - counter, 4);  -- Endereço decrescente para RAM

                -- Incrementa o contador
                if counter < 15 then
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;
	 
    ram_data_output <= data_ram; -- Conecta a saída de dados da RAM à saída
	 rom_data_output <= data_rom; -- Conecta a saída de dados da ROM à saída
	 add_rom <= address_rom; -- Conecta a saída de addr da ROM à saída
	 add_ram <= address_ram; -- Conecta a saída de addr da RAM à saída
	 
end structure;

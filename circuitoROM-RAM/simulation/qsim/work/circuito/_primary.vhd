library verilog;
use verilog.vl_types.all;
entity circuito is
    port(
        clock           : in     vl_logic;
        rw_enable       : in     vl_logic;
        mem_enable      : in     vl_logic;
        rom_enable      : in     vl_logic;
        ram_data_output : out    vl_logic_vector(7 downto 0);
        rom_data_output : out    vl_logic_vector(7 downto 0);
        add_rom         : out    vl_logic_vector(3 downto 0);
        add_ram         : out    vl_logic_vector(3 downto 0)
    );
end circuito;

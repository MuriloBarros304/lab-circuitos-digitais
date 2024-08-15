library verilog;
use verilog.vl_types.all;
entity circuito_vlg_check_tst is
    port(
        add_ram         : in     vl_logic_vector(3 downto 0);
        add_rom         : in     vl_logic_vector(3 downto 0);
        ram_data_output : in     vl_logic_vector(7 downto 0);
        rom_data_output : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end circuito_vlg_check_tst;

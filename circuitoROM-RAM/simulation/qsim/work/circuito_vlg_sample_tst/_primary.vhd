library verilog;
use verilog.vl_types.all;
entity circuito_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        mem_enable      : in     vl_logic;
        rom_enable      : in     vl_logic;
        rw_enable       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end circuito_vlg_sample_tst;

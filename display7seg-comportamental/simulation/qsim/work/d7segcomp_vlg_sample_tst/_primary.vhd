library verilog;
use verilog.vl_types.all;
entity d7segcomp_vlg_sample_tst is
    port(
        E0              : in     vl_logic;
        E1              : in     vl_logic;
        E2              : in     vl_logic;
        E3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end d7segcomp_vlg_sample_tst;

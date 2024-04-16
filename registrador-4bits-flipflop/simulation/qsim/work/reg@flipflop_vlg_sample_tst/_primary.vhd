library verilog;
use verilog.vl_types.all;
entity regFlipflop_vlg_sample_tst is
    port(
        c               : in     vl_logic;
        en0             : in     vl_logic;
        en1             : in     vl_logic;
        en2             : in     vl_logic;
        en3             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end regFlipflop_vlg_sample_tst;

library verilog;
use verilog.vl_types.all;
entity pacemaker_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sa              : in     vl_logic;
        sv              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pacemaker_vlg_sample_tst;

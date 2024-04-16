library verilog;
use verilog.vl_types.all;
entity regLatch_vlg_check_tst is
    port(
        q0              : in     vl_logic;
        q1              : in     vl_logic;
        q2              : in     vl_logic;
        q3              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end regLatch_vlg_check_tst;

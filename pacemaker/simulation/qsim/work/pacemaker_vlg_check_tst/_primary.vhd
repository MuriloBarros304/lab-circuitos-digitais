library verilog;
use verilog.vl_types.all;
entity pacemaker_vlg_check_tst is
    port(
        pa              : in     vl_logic;
        pv              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end pacemaker_vlg_check_tst;

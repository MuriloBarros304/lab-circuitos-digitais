library verilog;
use verilog.vl_types.all;
entity calc_vlg_sample_tst is
    port(
        a0              : in     vl_logic;
        a1              : in     vl_logic;
        a2              : in     vl_logic;
        a3              : in     vl_logic;
        a4              : in     vl_logic;
        a5              : in     vl_logic;
        b0              : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic;
        b3              : in     vl_logic;
        b4              : in     vl_logic;
        b5              : in     vl_logic;
        clk             : in     vl_logic;
        load            : in     vl_logic;
        sub             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end calc_vlg_sample_tst;

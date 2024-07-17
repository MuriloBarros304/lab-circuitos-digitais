library verilog;
use verilog.vl_types.all;
entity calc is
    port(
        a5              : in     vl_logic;
        a4              : in     vl_logic;
        a3              : in     vl_logic;
        a2              : in     vl_logic;
        a1              : in     vl_logic;
        a0              : in     vl_logic;
        b5              : in     vl_logic;
        b4              : in     vl_logic;
        b3              : in     vl_logic;
        b2              : in     vl_logic;
        b1              : in     vl_logic;
        b0              : in     vl_logic;
        clk             : in     vl_logic;
        sub             : in     vl_logic;
        load            : in     vl_logic;
        s5              : out    vl_logic;
        s4              : out    vl_logic;
        s3              : out    vl_logic;
        s2              : out    vl_logic;
        s1              : out    vl_logic;
        s0              : out    vl_logic
    );
end calc;

library verilog;
use verilog.vl_types.all;
entity d7seg is
    port(
        a1              : in     vl_logic;
        a2              : in     vl_logic;
        a3              : in     vl_logic;
        a4              : in     vl_logic;
        s0              : out    vl_logic;
        s1              : out    vl_logic;
        s2              : out    vl_logic;
        s3              : out    vl_logic;
        s4              : out    vl_logic;
        s5              : out    vl_logic;
        s6              : out    vl_logic
    );
end d7seg;

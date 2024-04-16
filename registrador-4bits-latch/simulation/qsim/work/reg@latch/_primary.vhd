library verilog;
use verilog.vl_types.all;
entity regLatch is
    port(
        en3             : in     vl_logic;
        en2             : in     vl_logic;
        en1             : in     vl_logic;
        en0             : in     vl_logic;
        c               : in     vl_logic;
        q3              : out    vl_logic;
        q2              : out    vl_logic;
        q1              : out    vl_logic;
        q0              : out    vl_logic
    );
end regLatch;

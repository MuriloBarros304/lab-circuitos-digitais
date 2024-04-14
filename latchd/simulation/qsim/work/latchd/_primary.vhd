library verilog;
use verilog.vl_types.all;
entity latchd is
    port(
        D               : in     vl_logic;
        c               : in     vl_logic;
        Q               : out    vl_logic
    );
end latchd;

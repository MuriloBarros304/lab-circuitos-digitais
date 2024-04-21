library verilog;
use verilog.vl_types.all;
entity pacemaker is
    port(
        clk             : in     vl_logic;
        sa              : in     vl_logic;
        sv              : in     vl_logic;
        pa              : out    vl_logic;
        pv              : out    vl_logic
    );
end pacemaker;

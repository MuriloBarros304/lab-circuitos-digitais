library verilog;
use verilog.vl_types.all;
entity mux2x1c is
    port(
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        S0              : in     vl_logic;
        d               : out    vl_logic
    );
end mux2x1c;

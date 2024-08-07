library verilog;
use verilog.vl_types.all;
entity decrementador is
    port(
        clk             : in     vl_logic;
        ld              : in     vl_logic;
        cnt             : in     vl_logic;
        reset           : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        tc              : out    vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end decrementador;

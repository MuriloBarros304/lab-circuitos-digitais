library verilog;
use verilog.vl_types.all;
entity mux8b is
    port(
        en0             : in     vl_logic_vector(3 downto 0);
        en1             : in     vl_logic_vector(3 downto 0);
        s               : in     vl_logic;
        d               : out    vl_logic_vector(3 downto 0)
    );
end mux8b;

library verilog;
use verilog.vl_types.all;
entity mux8b_vlg_sample_tst is
    port(
        en0             : in     vl_logic_vector(3 downto 0);
        en1             : in     vl_logic_vector(3 downto 0);
        s               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux8b_vlg_sample_tst;

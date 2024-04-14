library verilog;
use verilog.vl_types.all;
entity d7segcomp is
    port(
        E0              : in     vl_logic;
        E1              : in     vl_logic;
        E2              : in     vl_logic;
        E3              : in     vl_logic;
        Y0              : out    vl_logic;
        Y1              : out    vl_logic;
        Y2              : out    vl_logic;
        Y3              : out    vl_logic;
        Y4              : out    vl_logic;
        Y5              : out    vl_logic;
        Y6              : out    vl_logic
    );
end d7segcomp;

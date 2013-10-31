library verilog;
use verilog.vl_types.all;
entity FAX1 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        YC              : out    vl_logic;
        YS              : out    vl_logic
    );
end FAX1;

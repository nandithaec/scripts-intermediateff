library verilog;
use verilog.vl_types.all;
entity AND2X2 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Y               : out    vl_logic
    );
end AND2X2;
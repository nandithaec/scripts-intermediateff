library verilog;
use verilog.vl_types.all;
entity MUX2X1 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        S               : in     vl_logic;
        Y               : out    vl_logic
    );
end MUX2X1;

library verilog;
use verilog.vl_types.all;
entity OR2X1 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Y               : out    vl_logic
    );
end OR2X1;

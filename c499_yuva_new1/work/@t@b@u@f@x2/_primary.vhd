library verilog;
use verilog.vl_types.all;
entity TBUFX2 is
    port(
        A               : in     vl_logic;
        EN              : in     vl_logic;
        Y               : out    vl_logic
    );
end TBUFX2;

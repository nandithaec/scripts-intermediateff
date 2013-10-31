library verilog;
use verilog.vl_types.all;
entity DFFSR is
    port(
        CLK             : in     vl_logic;
        D               : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic;
        Q               : out    vl_logic
    );
end DFFSR;

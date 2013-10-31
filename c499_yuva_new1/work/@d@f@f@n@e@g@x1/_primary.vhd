library verilog;
use verilog.vl_types.all;
entity DFFNEGX1 is
    port(
        CLK             : in     vl_logic;
        D               : in     vl_logic;
        Q               : out    vl_logic
    );
end DFFNEGX1;

library verilog;
use verilog.vl_types.all;
entity dff_44 is
    port(
        q               : out    vl_logic;
        d               : in     vl_logic;
        clk             : in     vl_logic
    );
end dff_44;

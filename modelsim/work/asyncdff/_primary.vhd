library verilog;
use verilog.vl_types.all;
entity asyncdff is
    port(
        d               : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        q               : out    vl_logic
    );
end asyncdff;

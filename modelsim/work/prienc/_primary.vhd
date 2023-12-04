library verilog;
use verilog.vl_types.all;
entity prienc is
    port(
        a3              : in     vl_logic;
        a2              : in     vl_logic;
        a1              : in     vl_logic;
        a0              : in     vl_logic;
        y1              : out    vl_logic;
        y0              : out    vl_logic
    );
end prienc;

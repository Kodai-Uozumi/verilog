library verilog;
use verilog.vl_types.all;
entity up256 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        count           : out    vl_logic_vector(7 downto 0)
    );
end up256;

library verilog;
use verilog.vl_types.all;
entity down3 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        q               : out    vl_logic_vector(1 downto 0)
    );
end down3;

library verilog;
use verilog.vl_types.all;
entity adder2 is
    port(
        a               : in     vl_logic_vector(1 downto 0);
        b               : in     vl_logic_vector(1 downto 0);
        y               : out    vl_logic_vector(1 downto 0)
    );
end adder2;

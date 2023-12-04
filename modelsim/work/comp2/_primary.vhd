library verilog;
use verilog.vl_types.all;
entity comp2 is
    port(
        a               : in     vl_logic_vector(1 downto 0);
        b               : in     vl_logic_vector(1 downto 0);
        x               : out    vl_logic;
        y               : out    vl_logic;
        z               : out    vl_logic
    );
end comp2;

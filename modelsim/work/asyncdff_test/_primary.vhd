library verilog;
use verilog.vl_types.all;
entity asyncdff_test is
    generic(
        STEP            : integer := 1000
    );
end asyncdff_test;

library verilog;
use verilog.vl_types.all;
entity syncdff_test is
    generic(
        STEP            : integer := 1000
    );
end syncdff_test;

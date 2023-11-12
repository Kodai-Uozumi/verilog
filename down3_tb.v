module down3_test;
reg clk, reset;
wire[1:0] q;
parameter STEP = 1000;
initial clk = 1;
always
begin
#(STEP/2)
clk = ~clk;
end
down3 down3(.clk(clk), .reset(reset), .q(q));
initial begin
reset = 1'b0;
#(STEP/2)
reset = 1'b1;
#STEP
reset = 1'b0;
#STEP
reset = 1'b1;
#(STEP*6)
$finish;
end
endmodule

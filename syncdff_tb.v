module syncdff_test;
reg d, clk, reset;
wire q;
parameter STEP = 1000;
initial clk = 1;
always
begin
#(STEP/2)
clk = ~clk;
end
syncdff syncdff(.d(d), .clk(clk), .reset(reset), .q(q));
initial begin
d = 1'b0;
#(STEP/2)
d = 1'b1;
#(STEP*4)
d = 1'b0;
#(STEP*2)
d = 1'b1;
#(STEP*2)
$finish;
end
initial begin
reset = 1'b1;
#(STEP*3/2)
reset = 1'b0;
#STEP
reset = 1'b1;
end
endmodule

module prienc_test;
reg a3, a2, a1, a0;
wire y1, y0;
parameter STEP = 1000;
prienc prienc(.a3(a3), .a2(a2), .a1(a1), .a0(a0), .y1(y1), .y0(y0));
initial begin
a0 = 0;
#STEP
a0 = 1;
#STEP
a0 = 0;
#STEP
a0 = 1;
#STEP
a0 = 0;
#STEP
a0 = 1;
#STEP
a0 = 0;
#STEP
a0 = 1;
#STEP
a0 = 0;
#STEP
a0 = 1;
#STEP
a0 = 0;
#STEP
a0 = 1;
#STEP
a0 = 0;
#STEP
a0 = 1;
#STEP
a0 = 0;
#STEP
a0 = 1;
#STEP
$finish;
end
initial begin
a1 = 0;
#(STEP*2)
a1 = 1;
#(STEP*2)
a1 = 0;
#(STEP*2)
a1 = 1;
#(STEP*2)
a1 = 0;
#(STEP*2)
a1 = 1;
#(STEP*2)
a1 = 0;
#(STEP*2)
a1 = 1;
#(STEP*2)
$finish;
end
initial begin
a2 = 0;
#(STEP*4)
a2 = 1;
#(STEP*4)
a2 = 0;
#(STEP*4)
a2 = 1;
#(STEP*4)
$finish;
end
initial begin
a3 = 0;
#(STEP*8)
a3 = 1;
#(STEP*8)
$finish;
end
endmodule


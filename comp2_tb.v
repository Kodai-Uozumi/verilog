module comp2_test;
reg[2:0] a, b;
wire x, y, z;
parameter STEP = 1000;
comp2 comp2(.a(a), .b(b), .x(x), .y(y), .z(z));
initial begin
a = 2'b00;
#(STEP*4)
a = 2'b01;
#(STEP*4)
a = 2'b10;
#(STEP*4)
a = 2'b11;
#(STEP*4)
$finish;
end
initial begin
b = 2'b00;
#STEP
b = 2'b01;
#STEP
b = 2'b10;
#STEP
b = 2'b11;
#STEP
b = 2'b00;
#STEP
b = 2'b01;
#STEP
b = 2'b10;
#STEP
b = 2'b11;
#STEP
b = 2'b00;
#STEP
b = 2'b01;
#STEP
b = 2'b10;
#STEP
b = 2'b11;
#STEP
b = 2'b00;
#STEP
b = 2'b01;
#STEP
b = 2'b10;
#STEP
b = 2'b11;
#STEP
$finish;
end
endmodule 
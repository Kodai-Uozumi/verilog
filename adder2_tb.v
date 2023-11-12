module adder2_test;
reg[1:0] a, b;
wire[1:0] y;
parameter STEP = 1000;
adder2 adder2(.a(a), .b(b), .y(y));
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


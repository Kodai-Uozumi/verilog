module comp2(a, b, x, y, z);
input[1:0] a, b;
output x, y, z;
wire[3:0] ab;
wire[2:0] xyz;
assign ab = {a, b};
assign xyz = {x, y, z};
function[2:0] comp2func;
input [3:0] ab;
case(ab)
  4'b0000, 4'b0101, 4'b1010, 4'b1111: comp2func = 3'b001;
  4'b0001, 4'b0010, 4'b0011, 4'b0110, 4'b0111, 4'b1011: comp2func = 3'b010;
  4'b0100, 4'b1000, 4'b1001, 4'b1100, 4'b1101, 4'b1110: comp2func = 3'b100;
endcase
endfunction
assign xyz = comp2func(ab);
function xf;
input[2:0] xyz;
if(xyz == 3'b100)
  xf = 1'b1;
else
  xf = 1'b0;
endfunction
assign x = xf(xyz);
function yf;
input[2:0] xyz;
if(xyz == 3'b010)
  yf = 1'b1;
else
  yf = 1'b0;
endfunction
assign y = yf(xyz);
function zf;
input[2:0] xyz;
if(xyz == 3'b001)
  zf = 1'b1;
else
  zf = 1'b0;
endfunction
assign z = zf(xyz);
endmodule
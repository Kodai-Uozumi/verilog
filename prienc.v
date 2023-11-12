module prienc(a3, a2, a1, a0, y1, y0);
input a3, a2, a1, a0;
output y1, y0;
assign y1 = a2 | a3;
assign y0 = a3 | (~a2 & a1);
endmodule


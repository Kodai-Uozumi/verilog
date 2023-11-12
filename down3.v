module down3(clk, reset, q) ;
input clk, reset;
output q;
reg[1:0] q;
always @ (posedge clk, negedge reset)
begin
if(reset == 1'b0)
q <= 2'b00;
else
  if(q == 2'b00)
  q <= 2'b11;
  else if(q == 2'b11)
  q <= 2'b10;
  else
  q <= 2'b00;
end
endmodule
module asyncdff(d, clk, reset, q);
input d, clk, reset;
output q;
reg q;
always @ (posedge clk, negedge reset)
begin
if(reset == 1'b0)
q <= 1'b0;
else
q <= d;
end
endmodule 

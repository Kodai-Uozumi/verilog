// Up Counter

module up256 (clk, reset, count);
	input clk, reset;
	output [7:0] count;
	reg [7:0] count;

always @ (posedge clk or negedge reset)
  if (~reset)
     count = 8'h00;
  else
     count <= count + 8'h01;
endmodule

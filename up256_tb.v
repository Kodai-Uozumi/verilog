// Testbench of Up Counter

module up256_test;

reg clk, reset;
wire [7:0] count;

parameter STEP = 1000;
parameter SIMEND = STEP*300;

/* Internal Signal */
integer 	  fp;

up256 up256(.clk(clk), .reset(reset), .count(count));

// Clock generator
initial 
begin
	clk = 0;
end
always
begin
	#(STEP/2)
	clk = ~clk;
end

// Test stimulus
initial
begin
	reset = 1'b1;
	#STEP
	reset = 1'b0;
	#STEP
	reset = 1'b1;
	#SIMEND
	$finish;
end

/* Output */
   initial
     begin
       fp = $fopen("output.dat");
     end
   always
     begin
       #(STEP/2)
	 begin
	   $display(" %b %b : %d", clk, reset, count);
	   $fstrobe(fp, " %b %b : %d", clk, reset, count);
	 end
     end
endmodule    

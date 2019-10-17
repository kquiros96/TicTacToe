
// Testbench clock divider 
module CLKDivider_tb;
	// Inputs
	logic clock_in, clock_out;

	// Test clock divider 
	CLKDivider DUT(clock_in, clock_out);

	initial begin
	// Inicializa Inputs
	clock_in = 0;
	end
	always #5 clock_in = ~clock_in;
      
endmodule

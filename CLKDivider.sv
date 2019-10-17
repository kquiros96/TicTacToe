module CLKDivider(clock_in, clock_out);

input logic clock_in; // input clock 
output logic clock_out = 0; // output clock luego del dividir el input clock

always @(posedge clock_in)
	clock_out <= !clock_out;
	
endmodule

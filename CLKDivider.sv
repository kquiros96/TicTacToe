module CLKDivider(clock_in, clock_out);

input clock_in; // input clock 
output clock_out; // output clock luego del dividir el input clock
logic[27:0] counter=28'd0;

parameter DIVISOR = 28'd2;

always @(posedge clock_in)

begin
 counter <= counter + 28'd1;
 if(counter>=(DIVISOR-1))
  counter <= 28'd0;
end

assign clock_out = (counter<DIVISOR/2)?1'b0:1'b1;
endmodule

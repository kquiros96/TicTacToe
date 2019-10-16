`timescale 1ns / 1ps

// Testbench clock divider 
module CLKDivider_tb;
 // Inputs
 logic clock_in, clock_out;
 
 // Test clock divider 
 CLKDivider uut (
  .clock_in(clock_in), 
  .clock_out(clock_out)
 );
 initial begin
  // Inicializa Inputs
  clock_in = 0;
  // crea input clock 50MHz
 end
 
 always #10 clock_in = ~clock_in;
      
endmodule
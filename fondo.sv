module fondo (
  input wire [9:0] hc,
  input wire [8:0] vc,
  input wire display_enable,
  output logic [7:0] r,
  output logic [7:0] g,
  output logic [7:0] b
  );

  always @* begin
    if (display_enable == 1'b1) begin
      r = hc[7:0] ^ vc[7:0];
      g = hc[7:0] ^ vc[7:0];
      b = {hc[7], vc[7], 6'b000000};
    end
    else begin
      r = 2'h11;
      g = 2'h00;
      b = 2'h00;
    end
  end
endmodule

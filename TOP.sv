module TOP(CLK50, RST_BTN, hsync, vsync, VGA_R, VGA_G, VGA_B);

	input logic CLK50; 					// clock  
	input logic RST_BTN;         // reset 
	output logic hsync;       // horizontal sync output
	output logic vsync;       // vertical sync output
	output logic [7:0] VGA_R;    // VGA red output
	output logic [7:0] VGA_G;    // VGA green output
	output logic [7:0] VGA_B;     // VGA blue output

	logic [9:0] x;  // actual posición de pixel: 10-bit value: 0-1023
	logic [8:0] y;  // actual posición de pixel:  9-bit value: 0-511
	logic video_on;
	logic CLK25;
	
	CLKDivider divider(CLK50, CLK25); 
	VGA640x480 display(CLK25, RST_BTN, hsync, vsync, video_on, x, y);
	
endmodule

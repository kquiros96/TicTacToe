module VGAControler(CLK50, RST_BTN, hsync, vsync, VGA_R, VGA_G, VGA_B);

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
	 
	//fondo elbromas(x, y, video_on, VGA_R, VGA_G, VGA_B);

	//assign hsync = temp_hsync;
	//assign vsync = temp_vsync;
	assign VGA_R = 8'b1;
	assign VGA_G = 8'b1;
	assign VGA_B = 8'b1;

	/*// Cuadrados de prueba
	wire sq_a, sq_b, sq_c, sq_d;
	assign sq_a = ((x > 120) & (y >  40) & (x < 280) & (y < 200)) ? 1 : 0;
	assign sq_b = ((x > 200) & (y > 120) & (x < 360) & (y < 280)) ? 1 : 0;
	assign sq_c = ((x > 280) & (y > 200) & (x < 440) & (y < 360)) ? 1 : 0;
	assign sq_d = ((x > 360) & (y > 280) & (x < 520) & (y < 440)) ? 1 : 0;

	assign VGA_R[7] = sq_a;        // cuadrado 1
	assign VGA_G[7] = sq_b | sq_c;  		// cuadrado 2
	assign VGA_B[7] = sq_d;        // cuadrado 3*/

endmodule

module VGAControler_tb();

logic clk, RST_BTN;
logic HSYNC1, VSYNC1;  
logic [7:0] VGA_R;
logic [7:0] VGA_G; 
logic [7:0] VGA_B;

logic HSYNC2;
logic VSYNC2;
logic inDisplayArea;
logic [9:0] CounterX;
logic [8:0] CounterY;

VGAControler DUT(clk, RST_BTN, HSYNC1, VSYNC1, VGA_R, VGA_G, VGA_B);  
//VGA640x480 DUT2(clk,RST_BTN, HSYNC2, VSYNC2,inDisplayArea, CounterX, CounterY);

initial begin
	RST_BTN = 0;
	clk = 0;
	#10
	
	RST_BTN = 1;
	#10
	
	RST_BTN = 0;	
	
	end
	always #5 clk=~clk;
endmodule

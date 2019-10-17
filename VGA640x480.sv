module VGA640x480(clk, rst, HSYNC, VSYNC, inDisplayArea, CounterX, CounterY);

	input logic clk;
	input logic rst;
	output logic HSYNC;
	output logic VSYNC;
	output logic inDisplayArea;
	output logic [9:0] CounterX;
	output logic [8:0] CounterY;

	logic CounterXmaxed; 
	logic CounterYmaxed;

	always @(posedge clk)
		if (rst)
			CounterX = 0;
		else
			begin
				if (CounterXmaxed)
					CounterX <= 0;
				else
					CounterX <= CounterX + 1;
			end
			
	always @(posedge clk)
		begin
			if(rst) 				
				CounterY = 0;
			else

			begin
				if (CounterXmaxed)
					begin
						if(CounterYmaxed)
							CounterY <= 0;
						else
							CounterY <= CounterY + 1;
					end
			end
		end

	always @(posedge clk)
		begin
			HSYNC = (CounterX < 96)? 1'b1:1'b0;   // activo por 96 clocks
			VSYNC = (CounterY < 2) ? 1'b1:1'b0;   // activo por 2 clocks
		end

	always @(posedge clk)
		begin
			inDisplayArea = (CounterX < 640) && (CounterY < 480)? 1'b1:1'b0;
		end

	assign CounterXmaxed = (CounterX == 800); // 16 + 48 + 96 + 640
	assign CounterYmaxed = (CounterY == 525); // 10 + 2 + 33 + 480
	
endmodule

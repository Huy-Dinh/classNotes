module led_test(
	input wire clk,			// 50MHz (assumed)
	input wire reset_n, 	// Active low
	output wire [7:0] leds
);

	// ### Time base generation
	
	localparam CLOCK_TICKS = 250;
	
	reg [7:0] time_base_counter = 0;
	always@(posedge clk)
		if (reset_n == 0)
			time_base_counter = 0;
		else
			time_base_counter <= (time_base_counter + 1) % CLOCK_TICKS;
	
	wire enable;
	//assign enable = &time_base_counter; // Multi input AND represented by the operator &
	assign enable = (time_base_counter == (CLOCK_TICKS - 1)) ? 1 : 0;
	
	// ### Application process
	reg [7:0] reg_leds = 0;
	
	always@(posedge clk)
		begin
			if (reset_n == 0)
				reg_leds <= 0; 
			else
				if (enable == 1)
					reg_leds <= reg_leds + 1;
				else
					reg_leds = reg_leds;
		end
	
	assign leds = reg_leds;
	
end module
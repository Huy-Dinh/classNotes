module fancy_counter(
	input wire clk,
	input wire reset_n,
	output wire[7:0] q_led
);

	// ### timebase generation
	reg [22:00] timebase_counter = 0;
	always@(posedge clk)
			if (reset_n == 0)
				timebase_counter <= 0;
			else
				timebase_counter <= timebase_counter + 1;
	
	wire enable;
	assign enable = &timebase_counter;
	
	// ### application part
	
	reg [7:0] count = 0;
	always@(posedge clk)
		if(reset_n == 0)
			count <= 0;
		else
			if (enable)
				count <= {~count[0],count[7:1]};
	assign q_led = count;
	
endmodule
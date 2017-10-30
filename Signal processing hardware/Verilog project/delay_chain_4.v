module delay_chain_4v(
	input wire clk, input wire reset_n,
	input wire d,
	output wire q
	);
	
	reg dff_0, dff_1, dff_2, dff_3;
	
	always@(posedge clk)
		if (reset_n == 0)
			begin
				dff_0 <= 0;
				dff_1 <= 0;
				dff_2 <= 0;
				dff_3 <= 0;
			end
		else
			begin
				dff_0 <= d;
				dff_1 <= dff_0;
				dff_2 <= dff_1;
				dff_3 <= dff_2;
			end
	assign q = dff_3;

endmodule
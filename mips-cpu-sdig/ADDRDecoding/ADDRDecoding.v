module ADDRDecoding (
	input [15:0] adress,
	output reg muxC
);

always @(adress) begin
	if (adress > 16'hEFFF) begin
		if (adress < 16'hF3E7 ) begin
			muxC = 1;
		end
		else muxC = 0;
	end
	else muxC = 0;
end

endmodule

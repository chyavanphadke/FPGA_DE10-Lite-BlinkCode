module DemoBlink (
	input clk,
	output [9:0] LED
);

reg [24:0] cnt;

initial begin
cnt <= 32'h00000000;
end

always @ (posedge clk) begin
cnt <= cnt + 1;
end

assign LED[0] = cnt[24];
assign LED[9:1] = 9'b000000000;

endmodule

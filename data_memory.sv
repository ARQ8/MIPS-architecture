module data_memory(input logic clk, reset,
						 input logic[31:0] A,		// Address
						 input logic[31:0] WD,		// Input data
						 input logic WE,				// Enable input
						 output logic[31:0] RD,
						 output logic[31:0] prode	// To check the data in memory
						 );	// Output Data
						 
logic[31:0] memory[255:0];

assign prode = memory[1];
assign RD = memory[A];

always_ff @ (posedge clk or negedge reset)
	begin
		if (!reset) begin
			for (int i = 0; i < 256; i++) begin
				memory[i] <= i;
			end
		end
		else begin
			memory[A] <= WD;
		end
	end
endmodule

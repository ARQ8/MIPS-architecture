module register_file(input logic clk, rst,
							input logic [4:0] A1, A2, A3,		// A1, A2, A3 are the address
							input logic [31:0] WD3,				// Data from data memory
							input logic WE3,						// WE3 = 1, write register file
							output logic [31:0] RD1,			// Output port one for register file
							output logic [31:0] RD2,			// Output port two for register file
							output logic [31:0] prode			// Prode to check the result in the register file
							);

logic [31:0] rf_regs [31:0];
							
assign prode = rf_regs[1];
assign RD1 = rf_regs[A1];
assign RD2 = rf_regs[A2];

always_ff@ (posedge clk or negedge rst)
begin
	if (!rst) begin
		for (int i = 0; i < 32; i++) begin
			rf_regs[i] <= i;
		end
	end
	else begin
		// write other logics here
		rf_regs[A3] <= WD3;
	end
end

endmodule

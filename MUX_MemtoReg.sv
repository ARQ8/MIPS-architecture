module MUX_MemtoReg(input logic MemtoReg,
						  input logic[31:0] ALUResult,
						  input logic[31:0] RD,					// From data memory
						  output logic[31:0] MemtoReg_out
						  );
						  
always_comb
	begin
		case(MemtoReg)
			0: MemtoReg_out = RD;
			1: MemtoReg_out = ALUResult;
			default: MemtoReg_out = RD;
		endcase
	end
						  
endmodule

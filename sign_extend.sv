module sign_extend(input logic[15:0] Imm,
						 output logic[31:0] Signimm
						 );
						 
assign Signimm = {{16{Imm[15]}}, Imm};
						 
endmodule

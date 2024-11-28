module MUX_ALUSrc(input logic ALUSrc,
						input logic[31:0] RD,
						input logic[31:0] Signimm,
						output logic[31:0] SrcB
						);
						
always_comb
	begin
		case(ALUSrc)
			0: SrcB = Signimm;
			1: SrcB = RD;
			default: SrcB = Signimm;
		endcase
	end						
						
endmodule

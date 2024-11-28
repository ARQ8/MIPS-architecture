module MUX_RegDst(input logic RegDst,
						input logic[20:16] instructionOne,
						input logic[15:11] instructionTwo,
						output logic[4:0] WriteReg
						);
						
always_comb
	begin
		case(RegDst)
			0: WriteReg = instructionTwo;
			1: WriteReg = instructionOne;
			default: WriteReg = instructionTwo;
		endcase
	end
						
						
						
endmodule

module display(input logic [31:0] data_in,
					output logic [6:0] segments
					);

always_comb
	begin
		case(data_in)
			0: segments = 7'b1000000; //0
			1: segments = 7'b1111001; //1					
			2: segments = 7'b0100100; //2
			3: segments = 7'b0110000; //3
			4: segments = 7'b0011001; //4
			5: segments = 7'b0010010; //5
			6: segments = 7'b0000010; //6
			7: segments = 7'b1111000; //7
			8: segments = 7'b0000000; //8
			9: segments = 7'b0011000; //9
			10: segments = 7'b0001000; //A
			11: segments = 7'b0000011; //B
			12: segments = 7'b0100111; //C
			13: segments = 7'b0100001; //D
			14: segments = 7'b0000110; //E
			15: segments = 7'b0001110; //F
			default: segments = 7'b1111111; //Default to 0
		endcase
	end
					
endmodule

module alu(a,b,s,z);//????

input[7:0] a,b;//8bit input a,b
input[2:0] s;//3bit input s
output[7:0] z;//8bit output z
reg[7:0] z;//reg vlaue z

always@(a or b or s or z)//a,b,s,z? ???? ??? ?? 

begin

case(s)//s?? ?? ??
	3'b000: z<=8'b00000000;//s=0? ? clear
	3'b001: z<=b-a;//s=1? ? b-a
	3'b010: z<=a-b;//s=2? ? a-b
	3'b011: z<=a+b;//s=3? ? a+b
	3'b100: z<=a^b;//s=4? ? a xor b
	3'b101: z<=a|b;//s=5? ? a or b
	3'b110: z<=a&b;//s=6? ? a and b
	3'b111: z<=8'b11111111;//s=7? ? preset
endcase
end
endmodule
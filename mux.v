module mux(a,b,c,d,en,sel,z);//?? ??  mux

input[3:0] a,b,c,d;//4bit input a,b,c,d
input en;//input en, enable ??
input[1:0] sel;//2bit input sel, select ??
output[3:0] z;//4bit output z
reg[3:0] z;

always@(a or b or c or d or sel or en)//a,b,c,d,sel,en? ???? ??? always? ??
begin
if(en ==1)
	z=4'b0000;//en=1?? z=0, 
else//en=0? ? ????? ??
	case(sel)
	2'b00:z<=a;//sel=00?? a? ??
	2'b01:z<=b;//sel=01?? b? ??
	2'b10:z<=c;//sel=10?? c? ??
	2'b11:z<=d;//sel=11?? d? ??
endcase

end
endmodule

module priority(a,b,c,z);//??????


input a,b,c;//?? a,b,c
output[1:0] z;//??z
reg[1:0] z; //2?? ?? z reg

always @(a or b or c) //a,b,c ? ?? ??? ?? ??? ?? ??
begin
if(c==0)
	z=2'b11; //c=0? ? a,b? ?? ?? z? 11??
else
	if(b==0)
		z=2'b10;//c=1?? b=0?? a? ?? ?? ?? 10??
else
	if(a==0)
		z=2'b01;//c? b? 1?? a? 0?? 01??
else
	z=2'b00; //a,b,c,?? 1?? 00??

end
endmodule 
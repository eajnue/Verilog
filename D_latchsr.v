module D_latchsr(set_n,reset_n,d,g,q,q_n);//?? ??

input set_n,reset_n,d,g;//input set_n, reset_n, d, g
output q,q_n;//output q, q_n
reg q,q_n;//reg vlaue q, q_n

always@(d)//d? ?? ?? ??? ??
begin

if(set_n) 
begin
	if(reset_n) 
	begin
		if(g) 
		begin
			assign q=d; //set_n=1, reset_n=1, g=1? ? q=d
		end
		else 
		assign q=q;//set_n=1, reset_n=1, g=0? ? q? ? ??
	end
	else
	assign q=0;//set_n=1, reset_n=0? ? q=0
end
else 
assign q=1;//set_n=0? ? q=1

assign q_n=~q;//?? ???? q_n = ~q

end
endmodule
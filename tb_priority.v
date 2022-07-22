`timescale 1ns/100ps //timescale ??

module tb_priority();

reg a,b,c;
reg[1:0] z;

priority pri(a,b,c,z); //?? instatiation

initial
begin
//10 delay ? ??? ??
	a=0;b=0;c=0;
#10	a=1;
#10	a=0;b=1;c=0;
#10	a=1;
#10	a=0;b=0;c=1;
#10	a=1;
#10	a=0;b=1;c=0;
#10	a=1;
#10	$finish;

end
endmodule
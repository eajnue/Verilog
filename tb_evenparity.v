`timescale 1ns/100ps;//timescale ??

module tb_evenparity();//testbench module ??

reg[7:0] a;//8bit reg value a
wire[8:0] z;//9bit reg value z

evenparity evenprty(a,z);//module instantation

initial
begin//a? ? ??
	a=8'b00010001;//1 ??
#10	a=8'b01101100;//1 ??
#10	a=8'b01010111;//1 ??
#10 	$finish;

end
endmodule	
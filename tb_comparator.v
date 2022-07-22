`timescale 1ns/100ps//tiemscale ??

module tb_comparator();//testbench ?? ?

reg[2:0] a1,a2,b1,b2;//register value a1,a2,b1,b2
wire y1,y2;//wire value y1,y2

comparator comp(a1,a2,b1,b2,y1,y2);//comparator ?? instatiation

initial
begin

	a1=3'b000; a2=3'b000; b1=3'b000; b2=3'b000;//a1=a2=b1=b2=0,y1=1,y2=1
#10	a1=3'b001; a2=3'b000; b1=3'b001; b2=3'b000;//a1=1,a2=0,b1=1,b2=0,y1=0,y2=0
#10	a1=3'b101; a2=3'b101; b1=3'b011; b2=3'b011;//a1=5,a2=5,b1=3,b2=3,y1=1,y2=1
#10	a1=3'b101; a2=3'b110; b1=3'b011; b2=3'b100;//a1=5,a2=6,b1=3,b2=4,y1=0,y2=0
#10	a1=3'b110; a2=3'b110; b1=3'b011; b2=3'b100;//a1=6,a2=6,b1=3,b2=4,y1=1,y2=0
#10	$finish;

end
endmodule
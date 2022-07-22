module ffNAND;

wire q,qBar;
reg preset,clear;

nand#1
	g1(q,qBar,preset),
	g2(qBar,q,clear);

initial 
begin
$monitor($time,,
	"preset=%b clear=%b q=%b qBar=%b",
	preset,clear,q,qBar);

#10 preset=0;clear=1;
#10 preset=1;
#10 clear=0;
#10 clear=1;
#10 $finish;

end

endmodule

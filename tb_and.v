`timescale 1ns/100ps

module tb_and();

reg	a,b;
wire	z;

and_module andm(a,b,z);

initial
begin
		a=0;b=0;
	#10	a=0;b=1;
	#10	a=1;b=0;
	#10	a=1;b=1;
end

endmodule


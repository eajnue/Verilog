module gatelogic(a,b,s,z); //?? ?? ??

output z; //?? z
input a,b,s; //?? a,b,s
wire n1,n2,n3; // wire n1,n2,n3

not (n1,s); //not gate? ?? n1, ?? s
and (n2,a,s), (n3,b,n1); //2?? and gate??, ?? ??? a,s ??? n2, ??? b,n1 ??? n3? ???
or (z,n2,n3); // and gate? ?? z, ?? n2,n3 

endmodule

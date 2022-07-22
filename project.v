module gatelogic (a,s,b,z);

input a,b,s;
output z;

wire n1, n2, n3;

and	and_gate1(n2,a,s);

not	not_gate(n1,s);

and	and_gate2(n3,n1,b);

or	or_gate1(z,n2,n3);

endmodule

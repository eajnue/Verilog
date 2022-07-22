module mux(z, a, b, c, d, en, sel);

	input[3:0] a, b, c, d;
	input en;
	input[1:0] sel;
	output[3:0] z;



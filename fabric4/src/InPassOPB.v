//`include "models_pack.v"
// InPassFlop2 and OutPassFlop2 are the same except for changing which side I0,I1 or O0,O1 gets connected to the top entity
// InPassFlop2 and OutPassFlop2 are the same except for changing which side I0,I1 or O0,O1 gets connected to the top entity
// InPassFlop2 and OutPassFlop2 are the same except for changing which side I0,I1 or O0,O1 gets connected to the top entity

module InPassOPB (OPB_I0, OPB_I1, OPB_I2, OPB_I3, OPB_O0, OPB_O1, OPB_O2, OPB_O3, OPB_UserCLK, MODE, CONFin, CONFout, CLK);
    // parameter LUT_SIZE = 4; 
	// Pin0
	input OPB_I0; // EXTERNAL
	input OPB_I1; // EXTERNAL
	input OPB_I2; // EXTERNAL
	input OPB_I3; // EXTERNAL
	output OPB_O0; 
	output OPB_O1; 
	output OPB_O2; 
	output OPB_O3; 
	// Tile IO ports from BELs
	input OPB_UserCLK; // EXTERNAL // the EXTERNAL keyword will send this signal all the way to top
	// GLOBAL all primitive pins that are connected to the switch matrix have to go before the GLOBAL label
	input MODE; // 1 configuration, 0 action
	input CONFin;
	output CONFout;
	input CLK;

//              ______   ___
//    I////+//->|FLOP|-Q-|M|
//         |             |U|//////-> O
//         +////////////-|X|               

// I am instantiating an IOBUF primitive.
// However, it is possible to connect corresponding pins all the way to top, just by adding an "// EXTERNAL" comment (see PAD in the entity)

	wire c0, c1, c2, c3;   // configuration bits ( 0 combinatorial; 1 registered )
	reg Q0, Q1, Q2, Q3;   // FLOPs

	LHQD1 inst_LHQD1a (
	.D(CONFin),
	.E(CLK),
	.Q(c0)
	);
	LHQD1 inst_LHQD1b (
	.D(c0),
	.E(MODE),
	.Q(c1)
	);
	LHQD1 inst_LHQD1c (
	.D(c1),
	.E(CLK),
	.Q(c2)
	);
	LHQD1 inst_LHQD1d (
	.D(c2),
	.E(MODE),
	.Q(c3)
	);
	assign CONFout = c3;


	always @(posedge OPB_UserCLK)
	begin
		Q0 <= OPB_I0;
		Q1 <= OPB_I1;
		Q2 <= OPB_I2;
		Q3 <= OPB_I3;
	end

	assign OPB_O0 = c0 ? Q0 : OPB_I0;
	assign OPB_O1 = c1 ? Q1 : OPB_I1;
	assign OPB_O2 = c2 ? Q2 : OPB_I2;
	assign OPB_O3 = c3 ? Q3 : OPB_I3;

endmodule

	//External IO ports exported directly from the corresponding tiles
module fabric4 (Tile_X0Y1_A_I_top, Tile_X0Y1_A_T_top, Tile_X0Y1_A_O_top, UserCLK, Tile_X0Y1_B_I_top, Tile_X0Y1_B_T_top, Tile_X0Y1_B_O_top, Tile_X5Y1_OPA_I0, Tile_X5Y1_OPA_I1, Tile_X5Y1_OPA_I2, Tile_X5Y1_OPA_I3, Tile_X5Y1_OPB_I0, Tile_X5Y1_OPB_I1, Tile_X5Y1_OPB_I2, Tile_X5Y1_OPB_I3, Tile_X5Y1_RES0_O0, Tile_X5Y1_RES0_O1, Tile_X5Y1_RES0_O2, Tile_X5Y1_RES0_O3, Tile_X5Y1_RES1_O0, Tile_X5Y1_RES1_O1, Tile_X5Y1_RES1_O2, Tile_X5Y1_RES1_O3, Tile_X5Y1_RES2_O0, Tile_X5Y1_RES2_O1, Tile_X5Y1_RES2_O2, Tile_X5Y1_RES2_O3, Tile_X0Y2_A_I_top, Tile_X0Y2_A_T_top, Tile_X0Y2_A_O_top, Tile_X0Y2_B_I_top, Tile_X0Y2_B_T_top, Tile_X0Y2_B_O_top, Tile_X5Y2_OPA_I0, Tile_X5Y2_OPA_I1, Tile_X5Y2_OPA_I2, Tile_X5Y2_OPA_I3, Tile_X5Y2_OPB_I0, Tile_X5Y2_OPB_I1, Tile_X5Y2_OPB_I2, Tile_X5Y2_OPB_I3, Tile_X5Y2_RES0_O0, Tile_X5Y2_RES0_O1, Tile_X5Y2_RES0_O2, Tile_X5Y2_RES0_O3, Tile_X5Y2_RES1_O0, Tile_X5Y2_RES1_O1, Tile_X5Y2_RES1_O2, Tile_X5Y2_RES1_O3, Tile_X5Y2_RES2_O0, Tile_X5Y2_RES2_O1, Tile_X5Y2_RES2_O2, Tile_X5Y2_RES2_O3, Tile_X0Y3_A_I_top, Tile_X0Y3_A_T_top, Tile_X0Y3_A_O_top, Tile_X0Y3_B_I_top, Tile_X0Y3_B_T_top, Tile_X0Y3_B_O_top, Tile_X5Y3_OPA_I0, Tile_X5Y3_OPA_I1, Tile_X5Y3_OPA_I2, Tile_X5Y3_OPA_I3, Tile_X5Y3_OPB_I0, Tile_X5Y3_OPB_I1, Tile_X5Y3_OPB_I2, Tile_X5Y3_OPB_I3, Tile_X5Y3_RES0_O0, Tile_X5Y3_RES0_O1, Tile_X5Y3_RES0_O2, Tile_X5Y3_RES0_O3, Tile_X5Y3_RES1_O0, Tile_X5Y3_RES1_O1, Tile_X5Y3_RES1_O2, Tile_X5Y3_RES1_O3, Tile_X5Y3_RES2_O0, Tile_X5Y3_RES2_O1, Tile_X5Y3_RES2_O2, Tile_X5Y3_RES2_O3, Tile_X0Y4_A_I_top, Tile_X0Y4_A_T_top, Tile_X0Y4_A_O_top, Tile_X0Y4_B_I_top, Tile_X0Y4_B_T_top, Tile_X0Y4_B_O_top, Tile_X5Y4_OPA_I0, Tile_X5Y4_OPA_I1, Tile_X5Y4_OPA_I2, Tile_X5Y4_OPA_I3, Tile_X5Y4_OPB_I0, Tile_X5Y4_OPB_I1, Tile_X5Y4_OPB_I2, Tile_X5Y4_OPB_I3, Tile_X5Y4_RES0_O0, Tile_X5Y4_RES0_O1, Tile_X5Y4_RES0_O2, Tile_X5Y4_RES0_O3, Tile_X5Y4_RES1_O0, Tile_X5Y4_RES1_O1, Tile_X5Y4_RES1_O2, Tile_X5Y4_RES1_O3, Tile_X5Y4_RES2_O0, Tile_X5Y4_RES2_O1, Tile_X5Y4_RES2_O2, Tile_X5Y4_RES2_O3, FrameData, FrameStrobe);
	parameter MaxFramesPerCol = 20;
	parameter FrameBitsPerRow = 32;
	parameter NoConfigBits = 0;
	output Tile_X0Y1_A_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y1_A_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y1_A_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input UserCLK;  //EXTERNAL //SHARED_PORT //## the EXTERNAL keyword will send this signal all the way to top and the --SHARED Allows multiple BELs usg the same port (e.g. for exportg a clock to the top)
	output Tile_X0Y1_B_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y1_B_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y1_B_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X5Y1_OPA_I0;  //EXTERNAL
	input Tile_X5Y1_OPA_I1;  //EXTERNAL
	input Tile_X5Y1_OPA_I2;  //EXTERNAL
	input Tile_X5Y1_OPA_I3;  //EXTERNAL
	input Tile_X5Y1_OPB_I0;  //EXTERNAL
	input Tile_X5Y1_OPB_I1;  //EXTERNAL
	input Tile_X5Y1_OPB_I2;  //EXTERNAL
	input Tile_X5Y1_OPB_I3;  //EXTERNAL
	output Tile_X5Y1_RES0_O0;  //EXTERNAL
	output Tile_X5Y1_RES0_O1;  //EXTERNAL
	output Tile_X5Y1_RES0_O2;  //EXTERNAL
	output Tile_X5Y1_RES0_O3;  //EXTERNAL
	output Tile_X5Y1_RES1_O0;  //EXTERNAL
	output Tile_X5Y1_RES1_O1;  //EXTERNAL
	output Tile_X5Y1_RES1_O2;  //EXTERNAL
	output Tile_X5Y1_RES1_O3;  //EXTERNAL
	output Tile_X5Y1_RES2_O0;  //EXTERNAL
	output Tile_X5Y1_RES2_O1;  //EXTERNAL
	output Tile_X5Y1_RES2_O2;  //EXTERNAL
	output Tile_X5Y1_RES2_O3;  //EXTERNAL
	output Tile_X0Y2_A_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y2_A_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y2_A_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y2_B_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y2_B_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y2_B_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X5Y2_OPA_I0;  //EXTERNAL
	input Tile_X5Y2_OPA_I1;  //EXTERNAL
	input Tile_X5Y2_OPA_I2;  //EXTERNAL
	input Tile_X5Y2_OPA_I3;  //EXTERNAL
	input Tile_X5Y2_OPB_I0;  //EXTERNAL
	input Tile_X5Y2_OPB_I1;  //EXTERNAL
	input Tile_X5Y2_OPB_I2;  //EXTERNAL
	input Tile_X5Y2_OPB_I3;  //EXTERNAL
	output Tile_X5Y2_RES0_O0;  //EXTERNAL
	output Tile_X5Y2_RES0_O1;  //EXTERNAL
	output Tile_X5Y2_RES0_O2;  //EXTERNAL
	output Tile_X5Y2_RES0_O3;  //EXTERNAL
	output Tile_X5Y2_RES1_O0;  //EXTERNAL
	output Tile_X5Y2_RES1_O1;  //EXTERNAL
	output Tile_X5Y2_RES1_O2;  //EXTERNAL
	output Tile_X5Y2_RES1_O3;  //EXTERNAL
	output Tile_X5Y2_RES2_O0;  //EXTERNAL
	output Tile_X5Y2_RES2_O1;  //EXTERNAL
	output Tile_X5Y2_RES2_O2;  //EXTERNAL
	output Tile_X5Y2_RES2_O3;  //EXTERNAL
	output Tile_X0Y3_A_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y3_A_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y3_A_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y3_B_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y3_B_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y3_B_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X5Y3_OPA_I0;  //EXTERNAL
	input Tile_X5Y3_OPA_I1;  //EXTERNAL
	input Tile_X5Y3_OPA_I2;  //EXTERNAL
	input Tile_X5Y3_OPA_I3;  //EXTERNAL
	input Tile_X5Y3_OPB_I0;  //EXTERNAL
	input Tile_X5Y3_OPB_I1;  //EXTERNAL
	input Tile_X5Y3_OPB_I2;  //EXTERNAL
	input Tile_X5Y3_OPB_I3;  //EXTERNAL
	output Tile_X5Y3_RES0_O0;  //EXTERNAL
	output Tile_X5Y3_RES0_O1;  //EXTERNAL
	output Tile_X5Y3_RES0_O2;  //EXTERNAL
	output Tile_X5Y3_RES0_O3;  //EXTERNAL
	output Tile_X5Y3_RES1_O0;  //EXTERNAL
	output Tile_X5Y3_RES1_O1;  //EXTERNAL
	output Tile_X5Y3_RES1_O2;  //EXTERNAL
	output Tile_X5Y3_RES1_O3;  //EXTERNAL
	output Tile_X5Y3_RES2_O0;  //EXTERNAL
	output Tile_X5Y3_RES2_O1;  //EXTERNAL
	output Tile_X5Y3_RES2_O2;  //EXTERNAL
	output Tile_X5Y3_RES2_O3;  //EXTERNAL
	output Tile_X0Y4_A_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y4_A_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y4_A_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y4_B_I_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	output Tile_X0Y4_B_T_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X0Y4_B_O_top;   //EXTERNAL has to ge to top-level entity not the switch matrix
	input Tile_X5Y4_OPA_I0;  //EXTERNAL
	input Tile_X5Y4_OPA_I1;  //EXTERNAL
	input Tile_X5Y4_OPA_I2;  //EXTERNAL
	input Tile_X5Y4_OPA_I3;  //EXTERNAL
	input Tile_X5Y4_OPB_I0;  //EXTERNAL
	input Tile_X5Y4_OPB_I1;  //EXTERNAL
	input Tile_X5Y4_OPB_I2;  //EXTERNAL
	input Tile_X5Y4_OPB_I3;  //EXTERNAL
	output Tile_X5Y4_RES0_O0;  //EXTERNAL
	output Tile_X5Y4_RES0_O1;  //EXTERNAL
	output Tile_X5Y4_RES0_O2;  //EXTERNAL
	output Tile_X5Y4_RES0_O3;  //EXTERNAL
	output Tile_X5Y4_RES1_O0;  //EXTERNAL
	output Tile_X5Y4_RES1_O1;  //EXTERNAL
	output Tile_X5Y4_RES1_O2;  //EXTERNAL
	output Tile_X5Y4_RES1_O3;  //EXTERNAL
	output Tile_X5Y4_RES2_O0;  //EXTERNAL
	output Tile_X5Y4_RES2_O1;  //EXTERNAL
	output Tile_X5Y4_RES2_O2;  //EXTERNAL
	output Tile_X5Y4_RES2_O3;  //EXTERNAL
	input [(FrameBitsPerRow*6)-1:0] FrameData;   // CONFIG_PORT this is a keyword needed to connect the tile to the bitstream frame register
	input [(MaxFramesPerCol*6)-1:0] FrameStrobe;   // CONFIG_PORT this is a keyword needed to connect the tile to the bitstream frame register 
	//global


//signal declarations
//configuration signal declarations

	wire [FrameBitsPerRow-1:0] Tile_Y0_FrameData;
	wire [FrameBitsPerRow-1:0] Tile_Y1_FrameData;
	wire [FrameBitsPerRow-1:0] Tile_Y2_FrameData;
	wire [FrameBitsPerRow-1:0] Tile_Y3_FrameData;
	wire [FrameBitsPerRow-1:0] Tile_Y4_FrameData;
	wire [FrameBitsPerRow-1:0] Tile_Y5_FrameData;
	wire [MaxFramesPerCol-1:0] Tile_X0_FrameStrobe;
	wire [MaxFramesPerCol-1:0] Tile_X1_FrameStrobe;
	wire [MaxFramesPerCol-1:0] Tile_X2_FrameStrobe;
	wire [MaxFramesPerCol-1:0] Tile_X3_FrameStrobe;
	wire [MaxFramesPerCol-1:0] Tile_X4_FrameStrobe;
	wire [MaxFramesPerCol-1:0] Tile_X5_FrameStrobe;

//tile-to-tile signal declarations

	wire [3:0] Tile_X1Y0_S1BEG;
	wire [7:0] Tile_X1Y0_S2BEG;
	wire [7:0] Tile_X1Y0_S2BEGb;
	wire [15:0] Tile_X1Y0_S4BEG;
	wire [3:0] Tile_X2Y0_S1BEG;
	wire [7:0] Tile_X2Y0_S2BEG;
	wire [7:0] Tile_X2Y0_S2BEGb;
	wire [15:0] Tile_X2Y0_S4BEG;
	wire [3:0] Tile_X3Y0_S1BEG;
	wire [7:0] Tile_X3Y0_S2BEG;
	wire [7:0] Tile_X3Y0_S2BEGb;
	wire [15:0] Tile_X3Y0_S4BEG;
	wire [3:0] Tile_X4Y0_S1BEG;
	wire [7:0] Tile_X4Y0_S2BEG;
	wire [7:0] Tile_X4Y0_S2BEGb;
	wire [15:0] Tile_X4Y0_S4BEG;
	wire [3:0] Tile_X0Y1_E1BEG;
	wire [7:0] Tile_X0Y1_E2BEG;
	wire [7:0] Tile_X0Y1_E2BEGb;
	wire [11:0] Tile_X0Y1_E6BEG;
	wire [3:0] Tile_X1Y1_N1BEG;
	wire [7:0] Tile_X1Y1_N2BEG;
	wire [7:0] Tile_X1Y1_N2BEGb;
	wire [15:0] Tile_X1Y1_N4BEG;
	wire [0:0] Tile_X1Y1_Co;
	wire [3:0] Tile_X1Y1_E1BEG;
	wire [7:0] Tile_X1Y1_E2BEG;
	wire [7:0] Tile_X1Y1_E2BEGb;
	wire [11:0] Tile_X1Y1_E6BEG;
	wire [3:0] Tile_X1Y1_S1BEG;
	wire [7:0] Tile_X1Y1_S2BEG;
	wire [7:0] Tile_X1Y1_S2BEGb;
	wire [15:0] Tile_X1Y1_S4BEG;
	wire [3:0] Tile_X1Y1_W1BEG;
	wire [7:0] Tile_X1Y1_W2BEG;
	wire [7:0] Tile_X1Y1_W2BEGb;
	wire [11:0] Tile_X1Y1_W6BEG;
	wire [3:0] Tile_X2Y1_N1BEG;
	wire [7:0] Tile_X2Y1_N2BEG;
	wire [7:0] Tile_X2Y1_N2BEGb;
	wire [15:0] Tile_X2Y1_N4BEG;
	wire [0:0] Tile_X2Y1_Co;
	wire [3:0] Tile_X2Y1_E1BEG;
	wire [7:0] Tile_X2Y1_E2BEG;
	wire [7:0] Tile_X2Y1_E2BEGb;
	wire [11:0] Tile_X2Y1_E6BEG;
	wire [3:0] Tile_X2Y1_S1BEG;
	wire [7:0] Tile_X2Y1_S2BEG;
	wire [7:0] Tile_X2Y1_S2BEGb;
	wire [15:0] Tile_X2Y1_S4BEG;
	wire [3:0] Tile_X2Y1_W1BEG;
	wire [7:0] Tile_X2Y1_W2BEG;
	wire [7:0] Tile_X2Y1_W2BEGb;
	wire [11:0] Tile_X2Y1_W6BEG;
	wire [3:0] Tile_X3Y1_N1BEG;
	wire [7:0] Tile_X3Y1_N2BEG;
	wire [7:0] Tile_X3Y1_N2BEGb;
	wire [15:0] Tile_X3Y1_N4BEG;
	wire [0:0] Tile_X3Y1_Co;
	wire [3:0] Tile_X3Y1_E1BEG;
	wire [7:0] Tile_X3Y1_E2BEG;
	wire [7:0] Tile_X3Y1_E2BEGb;
	wire [11:0] Tile_X3Y1_E6BEG;
	wire [3:0] Tile_X3Y1_S1BEG;
	wire [7:0] Tile_X3Y1_S2BEG;
	wire [7:0] Tile_X3Y1_S2BEGb;
	wire [15:0] Tile_X3Y1_S4BEG;
	wire [3:0] Tile_X3Y1_W1BEG;
	wire [7:0] Tile_X3Y1_W2BEG;
	wire [7:0] Tile_X3Y1_W2BEGb;
	wire [11:0] Tile_X3Y1_W6BEG;
	wire [3:0] Tile_X4Y1_N1BEG;
	wire [7:0] Tile_X4Y1_N2BEG;
	wire [7:0] Tile_X4Y1_N2BEGb;
	wire [15:0] Tile_X4Y1_N4BEG;
	wire [0:0] Tile_X4Y1_Co;
	wire [3:0] Tile_X4Y1_E1BEG;
	wire [7:0] Tile_X4Y1_E2BEG;
	wire [7:0] Tile_X4Y1_E2BEGb;
	wire [11:0] Tile_X4Y1_E6BEG;
	wire [3:0] Tile_X4Y1_S1BEG;
	wire [7:0] Tile_X4Y1_S2BEG;
	wire [7:0] Tile_X4Y1_S2BEGb;
	wire [15:0] Tile_X4Y1_S4BEG;
	wire [3:0] Tile_X4Y1_W1BEG;
	wire [7:0] Tile_X4Y1_W2BEG;
	wire [7:0] Tile_X4Y1_W2BEGb;
	wire [11:0] Tile_X4Y1_W6BEG;
	wire [3:0] Tile_X5Y1_W1BEG;
	wire [7:0] Tile_X5Y1_W2BEG;
	wire [7:0] Tile_X5Y1_W2BEGb;
	wire [11:0] Tile_X5Y1_W6BEG;
	wire [3:0] Tile_X0Y2_E1BEG;
	wire [7:0] Tile_X0Y2_E2BEG;
	wire [7:0] Tile_X0Y2_E2BEGb;
	wire [11:0] Tile_X0Y2_E6BEG;
	wire [3:0] Tile_X1Y2_N1BEG;
	wire [7:0] Tile_X1Y2_N2BEG;
	wire [7:0] Tile_X1Y2_N2BEGb;
	wire [15:0] Tile_X1Y2_N4BEG;
	wire [0:0] Tile_X1Y2_Co;
	wire [3:0] Tile_X1Y2_E1BEG;
	wire [7:0] Tile_X1Y2_E2BEG;
	wire [7:0] Tile_X1Y2_E2BEGb;
	wire [11:0] Tile_X1Y2_E6BEG;
	wire [3:0] Tile_X1Y2_S1BEG;
	wire [7:0] Tile_X1Y2_S2BEG;
	wire [7:0] Tile_X1Y2_S2BEGb;
	wire [15:0] Tile_X1Y2_S4BEG;
	wire [3:0] Tile_X1Y2_W1BEG;
	wire [7:0] Tile_X1Y2_W2BEG;
	wire [7:0] Tile_X1Y2_W2BEGb;
	wire [11:0] Tile_X1Y2_W6BEG;
	wire [3:0] Tile_X2Y2_N1BEG;
	wire [7:0] Tile_X2Y2_N2BEG;
	wire [7:0] Tile_X2Y2_N2BEGb;
	wire [15:0] Tile_X2Y2_N4BEG;
	wire [0:0] Tile_X2Y2_Co;
	wire [3:0] Tile_X2Y2_E1BEG;
	wire [7:0] Tile_X2Y2_E2BEG;
	wire [7:0] Tile_X2Y2_E2BEGb;
	wire [11:0] Tile_X2Y2_E6BEG;
	wire [3:0] Tile_X2Y2_S1BEG;
	wire [7:0] Tile_X2Y2_S2BEG;
	wire [7:0] Tile_X2Y2_S2BEGb;
	wire [15:0] Tile_X2Y2_S4BEG;
	wire [3:0] Tile_X2Y2_W1BEG;
	wire [7:0] Tile_X2Y2_W2BEG;
	wire [7:0] Tile_X2Y2_W2BEGb;
	wire [11:0] Tile_X2Y2_W6BEG;
	wire [3:0] Tile_X3Y2_N1BEG;
	wire [7:0] Tile_X3Y2_N2BEG;
	wire [7:0] Tile_X3Y2_N2BEGb;
	wire [15:0] Tile_X3Y2_N4BEG;
	wire [0:0] Tile_X3Y2_Co;
	wire [3:0] Tile_X3Y2_E1BEG;
	wire [7:0] Tile_X3Y2_E2BEG;
	wire [7:0] Tile_X3Y2_E2BEGb;
	wire [11:0] Tile_X3Y2_E6BEG;
	wire [3:0] Tile_X3Y2_S1BEG;
	wire [7:0] Tile_X3Y2_S2BEG;
	wire [7:0] Tile_X3Y2_S2BEGb;
	wire [15:0] Tile_X3Y2_S4BEG;
	wire [3:0] Tile_X3Y2_W1BEG;
	wire [7:0] Tile_X3Y2_W2BEG;
	wire [7:0] Tile_X3Y2_W2BEGb;
	wire [11:0] Tile_X3Y2_W6BEG;
	wire [3:0] Tile_X4Y2_N1BEG;
	wire [7:0] Tile_X4Y2_N2BEG;
	wire [7:0] Tile_X4Y2_N2BEGb;
	wire [15:0] Tile_X4Y2_N4BEG;
	wire [0:0] Tile_X4Y2_Co;
	wire [3:0] Tile_X4Y2_E1BEG;
	wire [7:0] Tile_X4Y2_E2BEG;
	wire [7:0] Tile_X4Y2_E2BEGb;
	wire [11:0] Tile_X4Y2_E6BEG;
	wire [3:0] Tile_X4Y2_S1BEG;
	wire [7:0] Tile_X4Y2_S2BEG;
	wire [7:0] Tile_X4Y2_S2BEGb;
	wire [15:0] Tile_X4Y2_S4BEG;
	wire [3:0] Tile_X4Y2_W1BEG;
	wire [7:0] Tile_X4Y2_W2BEG;
	wire [7:0] Tile_X4Y2_W2BEGb;
	wire [11:0] Tile_X4Y2_W6BEG;
	wire [3:0] Tile_X5Y2_W1BEG;
	wire [7:0] Tile_X5Y2_W2BEG;
	wire [7:0] Tile_X5Y2_W2BEGb;
	wire [11:0] Tile_X5Y2_W6BEG;
	wire [3:0] Tile_X0Y3_E1BEG;
	wire [7:0] Tile_X0Y3_E2BEG;
	wire [7:0] Tile_X0Y3_E2BEGb;
	wire [11:0] Tile_X0Y3_E6BEG;
	wire [3:0] Tile_X1Y3_N1BEG;
	wire [7:0] Tile_X1Y3_N2BEG;
	wire [7:0] Tile_X1Y3_N2BEGb;
	wire [15:0] Tile_X1Y3_N4BEG;
	wire [0:0] Tile_X1Y3_Co;
	wire [3:0] Tile_X1Y3_E1BEG;
	wire [7:0] Tile_X1Y3_E2BEG;
	wire [7:0] Tile_X1Y3_E2BEGb;
	wire [11:0] Tile_X1Y3_E6BEG;
	wire [3:0] Tile_X1Y3_S1BEG;
	wire [7:0] Tile_X1Y3_S2BEG;
	wire [7:0] Tile_X1Y3_S2BEGb;
	wire [15:0] Tile_X1Y3_S4BEG;
	wire [3:0] Tile_X1Y3_W1BEG;
	wire [7:0] Tile_X1Y3_W2BEG;
	wire [7:0] Tile_X1Y3_W2BEGb;
	wire [11:0] Tile_X1Y3_W6BEG;
	wire [3:0] Tile_X2Y3_N1BEG;
	wire [7:0] Tile_X2Y3_N2BEG;
	wire [7:0] Tile_X2Y3_N2BEGb;
	wire [15:0] Tile_X2Y3_N4BEG;
	wire [0:0] Tile_X2Y3_Co;
	wire [3:0] Tile_X2Y3_E1BEG;
	wire [7:0] Tile_X2Y3_E2BEG;
	wire [7:0] Tile_X2Y3_E2BEGb;
	wire [11:0] Tile_X2Y3_E6BEG;
	wire [3:0] Tile_X2Y3_S1BEG;
	wire [7:0] Tile_X2Y3_S2BEG;
	wire [7:0] Tile_X2Y3_S2BEGb;
	wire [15:0] Tile_X2Y3_S4BEG;
	wire [3:0] Tile_X2Y3_W1BEG;
	wire [7:0] Tile_X2Y3_W2BEG;
	wire [7:0] Tile_X2Y3_W2BEGb;
	wire [11:0] Tile_X2Y3_W6BEG;
	wire [3:0] Tile_X3Y3_N1BEG;
	wire [7:0] Tile_X3Y3_N2BEG;
	wire [7:0] Tile_X3Y3_N2BEGb;
	wire [15:0] Tile_X3Y3_N4BEG;
	wire [0:0] Tile_X3Y3_Co;
	wire [3:0] Tile_X3Y3_E1BEG;
	wire [7:0] Tile_X3Y3_E2BEG;
	wire [7:0] Tile_X3Y3_E2BEGb;
	wire [11:0] Tile_X3Y3_E6BEG;
	wire [3:0] Tile_X3Y3_S1BEG;
	wire [7:0] Tile_X3Y3_S2BEG;
	wire [7:0] Tile_X3Y3_S2BEGb;
	wire [15:0] Tile_X3Y3_S4BEG;
	wire [3:0] Tile_X3Y3_W1BEG;
	wire [7:0] Tile_X3Y3_W2BEG;
	wire [7:0] Tile_X3Y3_W2BEGb;
	wire [11:0] Tile_X3Y3_W6BEG;
	wire [3:0] Tile_X4Y3_N1BEG;
	wire [7:0] Tile_X4Y3_N2BEG;
	wire [7:0] Tile_X4Y3_N2BEGb;
	wire [15:0] Tile_X4Y3_N4BEG;
	wire [0:0] Tile_X4Y3_Co;
	wire [3:0] Tile_X4Y3_E1BEG;
	wire [7:0] Tile_X4Y3_E2BEG;
	wire [7:0] Tile_X4Y3_E2BEGb;
	wire [11:0] Tile_X4Y3_E6BEG;
	wire [3:0] Tile_X4Y3_S1BEG;
	wire [7:0] Tile_X4Y3_S2BEG;
	wire [7:0] Tile_X4Y3_S2BEGb;
	wire [15:0] Tile_X4Y3_S4BEG;
	wire [3:0] Tile_X4Y3_W1BEG;
	wire [7:0] Tile_X4Y3_W2BEG;
	wire [7:0] Tile_X4Y3_W2BEGb;
	wire [11:0] Tile_X4Y3_W6BEG;
	wire [3:0] Tile_X5Y3_W1BEG;
	wire [7:0] Tile_X5Y3_W2BEG;
	wire [7:0] Tile_X5Y3_W2BEGb;
	wire [11:0] Tile_X5Y3_W6BEG;
	wire [3:0] Tile_X0Y4_E1BEG;
	wire [7:0] Tile_X0Y4_E2BEG;
	wire [7:0] Tile_X0Y4_E2BEGb;
	wire [11:0] Tile_X0Y4_E6BEG;
	wire [3:0] Tile_X1Y4_N1BEG;
	wire [7:0] Tile_X1Y4_N2BEG;
	wire [7:0] Tile_X1Y4_N2BEGb;
	wire [15:0] Tile_X1Y4_N4BEG;
	wire [0:0] Tile_X1Y4_Co;
	wire [3:0] Tile_X1Y4_E1BEG;
	wire [7:0] Tile_X1Y4_E2BEG;
	wire [7:0] Tile_X1Y4_E2BEGb;
	wire [11:0] Tile_X1Y4_E6BEG;
	wire [3:0] Tile_X1Y4_S1BEG;
	wire [7:0] Tile_X1Y4_S2BEG;
	wire [7:0] Tile_X1Y4_S2BEGb;
	wire [15:0] Tile_X1Y4_S4BEG;
	wire [3:0] Tile_X1Y4_W1BEG;
	wire [7:0] Tile_X1Y4_W2BEG;
	wire [7:0] Tile_X1Y4_W2BEGb;
	wire [11:0] Tile_X1Y4_W6BEG;
	wire [3:0] Tile_X2Y4_N1BEG;
	wire [7:0] Tile_X2Y4_N2BEG;
	wire [7:0] Tile_X2Y4_N2BEGb;
	wire [15:0] Tile_X2Y4_N4BEG;
	wire [0:0] Tile_X2Y4_Co;
	wire [3:0] Tile_X2Y4_E1BEG;
	wire [7:0] Tile_X2Y4_E2BEG;
	wire [7:0] Tile_X2Y4_E2BEGb;
	wire [11:0] Tile_X2Y4_E6BEG;
	wire [3:0] Tile_X2Y4_S1BEG;
	wire [7:0] Tile_X2Y4_S2BEG;
	wire [7:0] Tile_X2Y4_S2BEGb;
	wire [15:0] Tile_X2Y4_S4BEG;
	wire [3:0] Tile_X2Y4_W1BEG;
	wire [7:0] Tile_X2Y4_W2BEG;
	wire [7:0] Tile_X2Y4_W2BEGb;
	wire [11:0] Tile_X2Y4_W6BEG;
	wire [3:0] Tile_X3Y4_N1BEG;
	wire [7:0] Tile_X3Y4_N2BEG;
	wire [7:0] Tile_X3Y4_N2BEGb;
	wire [15:0] Tile_X3Y4_N4BEG;
	wire [0:0] Tile_X3Y4_Co;
	wire [3:0] Tile_X3Y4_E1BEG;
	wire [7:0] Tile_X3Y4_E2BEG;
	wire [7:0] Tile_X3Y4_E2BEGb;
	wire [11:0] Tile_X3Y4_E6BEG;
	wire [3:0] Tile_X3Y4_S1BEG;
	wire [7:0] Tile_X3Y4_S2BEG;
	wire [7:0] Tile_X3Y4_S2BEGb;
	wire [15:0] Tile_X3Y4_S4BEG;
	wire [3:0] Tile_X3Y4_W1BEG;
	wire [7:0] Tile_X3Y4_W2BEG;
	wire [7:0] Tile_X3Y4_W2BEGb;
	wire [11:0] Tile_X3Y4_W6BEG;
	wire [3:0] Tile_X4Y4_N1BEG;
	wire [7:0] Tile_X4Y4_N2BEG;
	wire [7:0] Tile_X4Y4_N2BEGb;
	wire [15:0] Tile_X4Y4_N4BEG;
	wire [0:0] Tile_X4Y4_Co;
	wire [3:0] Tile_X4Y4_E1BEG;
	wire [7:0] Tile_X4Y4_E2BEG;
	wire [7:0] Tile_X4Y4_E2BEGb;
	wire [11:0] Tile_X4Y4_E6BEG;
	wire [3:0] Tile_X4Y4_S1BEG;
	wire [7:0] Tile_X4Y4_S2BEG;
	wire [7:0] Tile_X4Y4_S2BEGb;
	wire [15:0] Tile_X4Y4_S4BEG;
	wire [3:0] Tile_X4Y4_W1BEG;
	wire [7:0] Tile_X4Y4_W2BEG;
	wire [7:0] Tile_X4Y4_W2BEGb;
	wire [11:0] Tile_X4Y4_W6BEG;
	wire [3:0] Tile_X5Y4_W1BEG;
	wire [7:0] Tile_X5Y4_W2BEG;
	wire [7:0] Tile_X5Y4_W2BEGb;
	wire [11:0] Tile_X5Y4_W6BEG;
	wire [3:0] Tile_X1Y5_N1BEG;
	wire [7:0] Tile_X1Y5_N2BEG;
	wire [7:0] Tile_X1Y5_N2BEGb;
	wire [15:0] Tile_X1Y5_N4BEG;
	wire [0:0] Tile_X1Y5_Co;
	wire [3:0] Tile_X2Y5_N1BEG;
	wire [7:0] Tile_X2Y5_N2BEG;
	wire [7:0] Tile_X2Y5_N2BEGb;
	wire [15:0] Tile_X2Y5_N4BEG;
	wire [0:0] Tile_X2Y5_Co;
	wire [3:0] Tile_X3Y5_N1BEG;
	wire [7:0] Tile_X3Y5_N2BEG;
	wire [7:0] Tile_X3Y5_N2BEGb;
	wire [15:0] Tile_X3Y5_N4BEG;
	wire [0:0] Tile_X3Y5_Co;
	wire [3:0] Tile_X4Y5_N1BEG;
	wire [7:0] Tile_X4Y5_N2BEG;
	wire [7:0] Tile_X4Y5_N2BEGb;
	wire [15:0] Tile_X4Y5_N4BEG;
	wire [0:0] Tile_X4Y5_Co;

	//assign Tile_Y0_FrameData = FrameData[(FrameBitsPerRow*(0+1))-1:FrameBitsPerRow*0];
	assign Tile_Y1_FrameData = FrameData[(FrameBitsPerRow*(1+1))-1:FrameBitsPerRow*1];
	assign Tile_Y2_FrameData = FrameData[(FrameBitsPerRow*(2+1))-1:FrameBitsPerRow*2];
	assign Tile_Y3_FrameData = FrameData[(FrameBitsPerRow*(3+1))-1:FrameBitsPerRow*3];
	assign Tile_Y4_FrameData = FrameData[(FrameBitsPerRow*(4+1))-1:FrameBitsPerRow*4];
	//assign Tile_Y5_FrameData = FrameData[(FrameBitsPerRow*(5+1))-1:FrameBitsPerRow*5];
	assign Tile_X0_FrameStrobe = FrameStrobe[(MaxFramesPerCol*(0+1))-1:MaxFramesPerCol*0];
	assign Tile_X1_FrameStrobe = FrameStrobe[(MaxFramesPerCol*(1+1))-1:MaxFramesPerCol*1];
	assign Tile_X2_FrameStrobe = FrameStrobe[(MaxFramesPerCol*(2+1))-1:MaxFramesPerCol*2];
	assign Tile_X3_FrameStrobe = FrameStrobe[(MaxFramesPerCol*(3+1))-1:MaxFramesPerCol*3];
	assign Tile_X4_FrameStrobe = FrameStrobe[(MaxFramesPerCol*(4+1))-1:MaxFramesPerCol*4];
	assign Tile_X5_FrameStrobe = FrameStrobe[(MaxFramesPerCol*(5+1))-1:MaxFramesPerCol*5];

//tile instantiations

	N_term_single Tile_X1Y0_N_term_single (
	.N1END(Tile_X1Y1_N1BEG[3:0]),
	.N2MID(Tile_X1Y1_N2BEG[7:0]),
	.N2END(Tile_X1Y1_N2BEGb[7:0]),
	.N4END(Tile_X1Y1_N4BEG[15:0]),
	.Ci(Tile_X1Y1_Co[0:0]),
	.S1BEG(Tile_X1Y0_S1BEG[3:0]),
	.S2BEG(Tile_X1Y0_S2BEG[7:0]),
	.S2BEGb(Tile_X1Y0_S2BEGb[7:0]),
	.S4BEG(Tile_X1Y0_S4BEG[15:0]) 
	);

	N_term_single Tile_X2Y0_N_term_single (
	.N1END(Tile_X2Y1_N1BEG[3:0]),
	.N2MID(Tile_X2Y1_N2BEG[7:0]),
	.N2END(Tile_X2Y1_N2BEGb[7:0]),
	.N4END(Tile_X2Y1_N4BEG[15:0]),
	.Ci(Tile_X2Y1_Co[0:0]),
	.S1BEG(Tile_X2Y0_S1BEG[3:0]),
	.S2BEG(Tile_X2Y0_S2BEG[7:0]),
	.S2BEGb(Tile_X2Y0_S2BEGb[7:0]),
	.S4BEG(Tile_X2Y0_S4BEG[15:0]) 
	);

	N_term_single Tile_X3Y0_N_term_single (
	.N1END(Tile_X3Y1_N1BEG[3:0]),
	.N2MID(Tile_X3Y1_N2BEG[7:0]),
	.N2END(Tile_X3Y1_N2BEGb[7:0]),
	.N4END(Tile_X3Y1_N4BEG[15:0]),
	.Ci(Tile_X3Y1_Co[0:0]),
	.S1BEG(Tile_X3Y0_S1BEG[3:0]),
	.S2BEG(Tile_X3Y0_S2BEG[7:0]),
	.S2BEGb(Tile_X3Y0_S2BEGb[7:0]),
	.S4BEG(Tile_X3Y0_S4BEG[15:0]) 
	);

	N_term_single Tile_X4Y0_N_term_single (
	.N1END(Tile_X4Y1_N1BEG[3:0]),
	.N2MID(Tile_X4Y1_N2BEG[7:0]),
	.N2END(Tile_X4Y1_N2BEGb[7:0]),
	.N4END(Tile_X4Y1_N4BEG[15:0]),
	.Ci(Tile_X4Y1_Co[0:0]),
	.S1BEG(Tile_X4Y0_S1BEG[3:0]),
	.S2BEG(Tile_X4Y0_S2BEG[7:0]),
	.S2BEGb(Tile_X4Y0_S2BEGb[7:0]),
	.S4BEG(Tile_X4Y0_S4BEG[15:0]) 
	);

	W_IO Tile_X0Y1_W_IO (
	.W1END(Tile_X1Y1_W1BEG[3:0]),
	.W2MID(Tile_X1Y1_W2BEG[7:0]),
	.W2END(Tile_X1Y1_W2BEGb[7:0]),
	.W6END(Tile_X1Y1_W6BEG[11:0]),
	.E1BEG(Tile_X0Y1_E1BEG[3:0]),
	.E2BEG(Tile_X0Y1_E2BEG[7:0]),
	.E2BEGb(Tile_X0Y1_E2BEGb[7:0]),
	.E6BEG(Tile_X0Y1_E6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.A_I_top(Tile_X0Y1_A_I_top),
	.A_T_top(Tile_X0Y1_A_T_top),
	.A_O_top(Tile_X0Y1_A_O_top),
	.UserCLK(UserCLK),
	.B_I_top(Tile_X0Y1_B_I_top),
	.B_T_top(Tile_X0Y1_B_T_top),
	.B_O_top(Tile_X0Y1_B_O_top),
	.FrameData(Tile_Y1_FrameData), 
	.FrameStrobe(Tile_X0_FrameStrobe)
	);

	LUT4AB Tile_X1Y1_LUT4AB (
	.N1END(Tile_X1Y2_N1BEG[3:0]),
	.N2MID(Tile_X1Y2_N2BEG[7:0]),
	.N2END(Tile_X1Y2_N2BEGb[7:0]),
	.N4END(Tile_X1Y2_N4BEG[15:0]),
	.Ci(Tile_X1Y2_Co[0:0]),
	.E1END(Tile_X0Y1_E1BEG[3:0]),
	.E2MID(Tile_X0Y1_E2BEG[7:0]),
	.E2END(Tile_X0Y1_E2BEGb[7:0]),
	.E6END(Tile_X0Y1_E6BEG[11:0]),
	.S1END(Tile_X1Y0_S1BEG[3:0]),
	.S2MID(Tile_X1Y0_S2BEG[7:0]),
	.S2END(Tile_X1Y0_S2BEGb[7:0]),
	.S4END(Tile_X1Y0_S4BEG[15:0]),
	.W1END(Tile_X2Y1_W1BEG[3:0]),
	.W2MID(Tile_X2Y1_W2BEG[7:0]),
	.W2END(Tile_X2Y1_W2BEGb[7:0]),
	.W6END(Tile_X2Y1_W6BEG[11:0]),
	.N1BEG(Tile_X1Y1_N1BEG[3:0]),
	.N2BEG(Tile_X1Y1_N2BEG[7:0]),
	.N2BEGb(Tile_X1Y1_N2BEGb[7:0]),
	.N4BEG(Tile_X1Y1_N4BEG[15:0]),
	.Co(Tile_X1Y1_Co[0:0]),
	.E1BEG(Tile_X1Y1_E1BEG[3:0]),
	.E2BEG(Tile_X1Y1_E2BEG[7:0]),
	.E2BEGb(Tile_X1Y1_E2BEGb[7:0]),
	.E6BEG(Tile_X1Y1_E6BEG[11:0]),
	.S1BEG(Tile_X1Y1_S1BEG[3:0]),
	.S2BEG(Tile_X1Y1_S2BEG[7:0]),
	.S2BEGb(Tile_X1Y1_S2BEGb[7:0]),
	.S4BEG(Tile_X1Y1_S4BEG[15:0]),
	.W1BEG(Tile_X1Y1_W1BEG[3:0]),
	.W2BEG(Tile_X1Y1_W2BEG[7:0]),
	.W2BEGb(Tile_X1Y1_W2BEGb[7:0]),
	.W6BEG(Tile_X1Y1_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y1_FrameData), 
	.FrameStrobe(Tile_X1_FrameStrobe)
	);

	LUT4AB Tile_X2Y1_LUT4AB (
	.N1END(Tile_X2Y2_N1BEG[3:0]),
	.N2MID(Tile_X2Y2_N2BEG[7:0]),
	.N2END(Tile_X2Y2_N2BEGb[7:0]),
	.N4END(Tile_X2Y2_N4BEG[15:0]),
	.Ci(Tile_X2Y2_Co[0:0]),
	.E1END(Tile_X1Y1_E1BEG[3:0]),
	.E2MID(Tile_X1Y1_E2BEG[7:0]),
	.E2END(Tile_X1Y1_E2BEGb[7:0]),
	.E6END(Tile_X1Y1_E6BEG[11:0]),
	.S1END(Tile_X2Y0_S1BEG[3:0]),
	.S2MID(Tile_X2Y0_S2BEG[7:0]),
	.S2END(Tile_X2Y0_S2BEGb[7:0]),
	.S4END(Tile_X2Y0_S4BEG[15:0]),
	.W1END(Tile_X3Y1_W1BEG[3:0]),
	.W2MID(Tile_X3Y1_W2BEG[7:0]),
	.W2END(Tile_X3Y1_W2BEGb[7:0]),
	.W6END(Tile_X3Y1_W6BEG[11:0]),
	.N1BEG(Tile_X2Y1_N1BEG[3:0]),
	.N2BEG(Tile_X2Y1_N2BEG[7:0]),
	.N2BEGb(Tile_X2Y1_N2BEGb[7:0]),
	.N4BEG(Tile_X2Y1_N4BEG[15:0]),
	.Co(Tile_X2Y1_Co[0:0]),
	.E1BEG(Tile_X2Y1_E1BEG[3:0]),
	.E2BEG(Tile_X2Y1_E2BEG[7:0]),
	.E2BEGb(Tile_X2Y1_E2BEGb[7:0]),
	.E6BEG(Tile_X2Y1_E6BEG[11:0]),
	.S1BEG(Tile_X2Y1_S1BEG[3:0]),
	.S2BEG(Tile_X2Y1_S2BEG[7:0]),
	.S2BEGb(Tile_X2Y1_S2BEGb[7:0]),
	.S4BEG(Tile_X2Y1_S4BEG[15:0]),
	.W1BEG(Tile_X2Y1_W1BEG[3:0]),
	.W2BEG(Tile_X2Y1_W2BEG[7:0]),
	.W2BEGb(Tile_X2Y1_W2BEGb[7:0]),
	.W6BEG(Tile_X2Y1_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y1_FrameData), 
	.FrameStrobe(Tile_X2_FrameStrobe)
	);

	LUT4AB Tile_X3Y1_LUT4AB (
	.N1END(Tile_X3Y2_N1BEG[3:0]),
	.N2MID(Tile_X3Y2_N2BEG[7:0]),
	.N2END(Tile_X3Y2_N2BEGb[7:0]),
	.N4END(Tile_X3Y2_N4BEG[15:0]),
	.Ci(Tile_X3Y2_Co[0:0]),
	.E1END(Tile_X2Y1_E1BEG[3:0]),
	.E2MID(Tile_X2Y1_E2BEG[7:0]),
	.E2END(Tile_X2Y1_E2BEGb[7:0]),
	.E6END(Tile_X2Y1_E6BEG[11:0]),
	.S1END(Tile_X3Y0_S1BEG[3:0]),
	.S2MID(Tile_X3Y0_S2BEG[7:0]),
	.S2END(Tile_X3Y0_S2BEGb[7:0]),
	.S4END(Tile_X3Y0_S4BEG[15:0]),
	.W1END(Tile_X4Y1_W1BEG[3:0]),
	.W2MID(Tile_X4Y1_W2BEG[7:0]),
	.W2END(Tile_X4Y1_W2BEGb[7:0]),
	.W6END(Tile_X4Y1_W6BEG[11:0]),
	.N1BEG(Tile_X3Y1_N1BEG[3:0]),
	.N2BEG(Tile_X3Y1_N2BEG[7:0]),
	.N2BEGb(Tile_X3Y1_N2BEGb[7:0]),
	.N4BEG(Tile_X3Y1_N4BEG[15:0]),
	.Co(Tile_X3Y1_Co[0:0]),
	.E1BEG(Tile_X3Y1_E1BEG[3:0]),
	.E2BEG(Tile_X3Y1_E2BEG[7:0]),
	.E2BEGb(Tile_X3Y1_E2BEGb[7:0]),
	.E6BEG(Tile_X3Y1_E6BEG[11:0]),
	.S1BEG(Tile_X3Y1_S1BEG[3:0]),
	.S2BEG(Tile_X3Y1_S2BEG[7:0]),
	.S2BEGb(Tile_X3Y1_S2BEGb[7:0]),
	.S4BEG(Tile_X3Y1_S4BEG[15:0]),
	.W1BEG(Tile_X3Y1_W1BEG[3:0]),
	.W2BEG(Tile_X3Y1_W2BEG[7:0]),
	.W2BEGb(Tile_X3Y1_W2BEGb[7:0]),
	.W6BEG(Tile_X3Y1_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y1_FrameData), 
	.FrameStrobe(Tile_X3_FrameStrobe)
	);

	LUT4AB Tile_X4Y1_LUT4AB (
	.N1END(Tile_X4Y2_N1BEG[3:0]),
	.N2MID(Tile_X4Y2_N2BEG[7:0]),
	.N2END(Tile_X4Y2_N2BEGb[7:0]),
	.N4END(Tile_X4Y2_N4BEG[15:0]),
	.Ci(Tile_X4Y2_Co[0:0]),
	.E1END(Tile_X3Y1_E1BEG[3:0]),
	.E2MID(Tile_X3Y1_E2BEG[7:0]),
	.E2END(Tile_X3Y1_E2BEGb[7:0]),
	.E6END(Tile_X3Y1_E6BEG[11:0]),
	.S1END(Tile_X4Y0_S1BEG[3:0]),
	.S2MID(Tile_X4Y0_S2BEG[7:0]),
	.S2END(Tile_X4Y0_S2BEGb[7:0]),
	.S4END(Tile_X4Y0_S4BEG[15:0]),
	.W1END(Tile_X5Y1_W1BEG[3:0]),
	.W2MID(Tile_X5Y1_W2BEG[7:0]),
	.W2END(Tile_X5Y1_W2BEGb[7:0]),
	.W6END(Tile_X5Y1_W6BEG[11:0]),
	.N1BEG(Tile_X4Y1_N1BEG[3:0]),
	.N2BEG(Tile_X4Y1_N2BEG[7:0]),
	.N2BEGb(Tile_X4Y1_N2BEGb[7:0]),
	.N4BEG(Tile_X4Y1_N4BEG[15:0]),
	.Co(Tile_X4Y1_Co[0:0]),
	.E1BEG(Tile_X4Y1_E1BEG[3:0]),
	.E2BEG(Tile_X4Y1_E2BEG[7:0]),
	.E2BEGb(Tile_X4Y1_E2BEGb[7:0]),
	.E6BEG(Tile_X4Y1_E6BEG[11:0]),
	.S1BEG(Tile_X4Y1_S1BEG[3:0]),
	.S2BEG(Tile_X4Y1_S2BEG[7:0]),
	.S2BEGb(Tile_X4Y1_S2BEGb[7:0]),
	.S4BEG(Tile_X4Y1_S4BEG[15:0]),
	.W1BEG(Tile_X4Y1_W1BEG[3:0]),
	.W2BEG(Tile_X4Y1_W2BEG[7:0]),
	.W2BEGb(Tile_X4Y1_W2BEGb[7:0]),
	.W6BEG(Tile_X4Y1_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y1_FrameData), 
	.FrameStrobe(Tile_X4_FrameStrobe)
	);

	CPU_IO Tile_X5Y1_CPU_IO (
	.E1END(Tile_X4Y1_E1BEG[3:0]),
	.E2MID(Tile_X4Y1_E2BEG[7:0]),
	.E2END(Tile_X4Y1_E2BEGb[7:0]),
	.E6END(Tile_X4Y1_E6BEG[11:0]),
	.W1BEG(Tile_X5Y1_W1BEG[3:0]),
	.W2BEG(Tile_X5Y1_W2BEG[7:0]),
	.W2BEGb(Tile_X5Y1_W2BEGb[7:0]),
	.W6BEG(Tile_X5Y1_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.OPA_I0(Tile_X5Y1_OPA_I0),
	.OPA_I1(Tile_X5Y1_OPA_I1),
	.OPA_I2(Tile_X5Y1_OPA_I2),
	.OPA_I3(Tile_X5Y1_OPA_I3),
	.UserCLK(UserCLK),
	.OPB_I0(Tile_X5Y1_OPB_I0),
	.OPB_I1(Tile_X5Y1_OPB_I1),
	.OPB_I2(Tile_X5Y1_OPB_I2),
	.OPB_I3(Tile_X5Y1_OPB_I3),
	.RES0_O0(Tile_X5Y1_RES0_O0),
	.RES0_O1(Tile_X5Y1_RES0_O1),
	.RES0_O2(Tile_X5Y1_RES0_O2),
	.RES0_O3(Tile_X5Y1_RES0_O3),
	.RES1_O0(Tile_X5Y1_RES1_O0),
	.RES1_O1(Tile_X5Y1_RES1_O1),
	.RES1_O2(Tile_X5Y1_RES1_O2),
	.RES1_O3(Tile_X5Y1_RES1_O3),
	.RES2_O0(Tile_X5Y1_RES2_O0),
	.RES2_O1(Tile_X5Y1_RES2_O1),
	.RES2_O2(Tile_X5Y1_RES2_O2),
	.RES2_O3(Tile_X5Y1_RES2_O3),
	.FrameData(Tile_Y1_FrameData), 
	.FrameStrobe(Tile_X5_FrameStrobe)
	);

	W_IO Tile_X0Y2_W_IO (
	.W1END(Tile_X1Y2_W1BEG[3:0]),
	.W2MID(Tile_X1Y2_W2BEG[7:0]),
	.W2END(Tile_X1Y2_W2BEGb[7:0]),
	.W6END(Tile_X1Y2_W6BEG[11:0]),
	.E1BEG(Tile_X0Y2_E1BEG[3:0]),
	.E2BEG(Tile_X0Y2_E2BEG[7:0]),
	.E2BEGb(Tile_X0Y2_E2BEGb[7:0]),
	.E6BEG(Tile_X0Y2_E6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.A_I_top(Tile_X0Y2_A_I_top),
	.A_T_top(Tile_X0Y2_A_T_top),
	.A_O_top(Tile_X0Y2_A_O_top),
	.UserCLK(UserCLK),
	.B_I_top(Tile_X0Y2_B_I_top),
	.B_T_top(Tile_X0Y2_B_T_top),
	.B_O_top(Tile_X0Y2_B_O_top),
	.FrameData(Tile_Y2_FrameData), 
	.FrameStrobe(Tile_X0_FrameStrobe)
	);

	LUT4AB Tile_X1Y2_LUT4AB (
	.N1END(Tile_X1Y3_N1BEG[3:0]),
	.N2MID(Tile_X1Y3_N2BEG[7:0]),
	.N2END(Tile_X1Y3_N2BEGb[7:0]),
	.N4END(Tile_X1Y3_N4BEG[15:0]),
	.Ci(Tile_X1Y3_Co[0:0]),
	.E1END(Tile_X0Y2_E1BEG[3:0]),
	.E2MID(Tile_X0Y2_E2BEG[7:0]),
	.E2END(Tile_X0Y2_E2BEGb[7:0]),
	.E6END(Tile_X0Y2_E6BEG[11:0]),
	.S1END(Tile_X1Y1_S1BEG[3:0]),
	.S2MID(Tile_X1Y1_S2BEG[7:0]),
	.S2END(Tile_X1Y1_S2BEGb[7:0]),
	.S4END(Tile_X1Y1_S4BEG[15:0]),
	.W1END(Tile_X2Y2_W1BEG[3:0]),
	.W2MID(Tile_X2Y2_W2BEG[7:0]),
	.W2END(Tile_X2Y2_W2BEGb[7:0]),
	.W6END(Tile_X2Y2_W6BEG[11:0]),
	.N1BEG(Tile_X1Y2_N1BEG[3:0]),
	.N2BEG(Tile_X1Y2_N2BEG[7:0]),
	.N2BEGb(Tile_X1Y2_N2BEGb[7:0]),
	.N4BEG(Tile_X1Y2_N4BEG[15:0]),
	.Co(Tile_X1Y2_Co[0:0]),
	.E1BEG(Tile_X1Y2_E1BEG[3:0]),
	.E2BEG(Tile_X1Y2_E2BEG[7:0]),
	.E2BEGb(Tile_X1Y2_E2BEGb[7:0]),
	.E6BEG(Tile_X1Y2_E6BEG[11:0]),
	.S1BEG(Tile_X1Y2_S1BEG[3:0]),
	.S2BEG(Tile_X1Y2_S2BEG[7:0]),
	.S2BEGb(Tile_X1Y2_S2BEGb[7:0]),
	.S4BEG(Tile_X1Y2_S4BEG[15:0]),
	.W1BEG(Tile_X1Y2_W1BEG[3:0]),
	.W2BEG(Tile_X1Y2_W2BEG[7:0]),
	.W2BEGb(Tile_X1Y2_W2BEGb[7:0]),
	.W6BEG(Tile_X1Y2_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y2_FrameData), 
	.FrameStrobe(Tile_X1_FrameStrobe)
	);

	LUT4AB Tile_X2Y2_LUT4AB (
	.N1END(Tile_X2Y3_N1BEG[3:0]),
	.N2MID(Tile_X2Y3_N2BEG[7:0]),
	.N2END(Tile_X2Y3_N2BEGb[7:0]),
	.N4END(Tile_X2Y3_N4BEG[15:0]),
	.Ci(Tile_X2Y3_Co[0:0]),
	.E1END(Tile_X1Y2_E1BEG[3:0]),
	.E2MID(Tile_X1Y2_E2BEG[7:0]),
	.E2END(Tile_X1Y2_E2BEGb[7:0]),
	.E6END(Tile_X1Y2_E6BEG[11:0]),
	.S1END(Tile_X2Y1_S1BEG[3:0]),
	.S2MID(Tile_X2Y1_S2BEG[7:0]),
	.S2END(Tile_X2Y1_S2BEGb[7:0]),
	.S4END(Tile_X2Y1_S4BEG[15:0]),
	.W1END(Tile_X3Y2_W1BEG[3:0]),
	.W2MID(Tile_X3Y2_W2BEG[7:0]),
	.W2END(Tile_X3Y2_W2BEGb[7:0]),
	.W6END(Tile_X3Y2_W6BEG[11:0]),
	.N1BEG(Tile_X2Y2_N1BEG[3:0]),
	.N2BEG(Tile_X2Y2_N2BEG[7:0]),
	.N2BEGb(Tile_X2Y2_N2BEGb[7:0]),
	.N4BEG(Tile_X2Y2_N4BEG[15:0]),
	.Co(Tile_X2Y2_Co[0:0]),
	.E1BEG(Tile_X2Y2_E1BEG[3:0]),
	.E2BEG(Tile_X2Y2_E2BEG[7:0]),
	.E2BEGb(Tile_X2Y2_E2BEGb[7:0]),
	.E6BEG(Tile_X2Y2_E6BEG[11:0]),
	.S1BEG(Tile_X2Y2_S1BEG[3:0]),
	.S2BEG(Tile_X2Y2_S2BEG[7:0]),
	.S2BEGb(Tile_X2Y2_S2BEGb[7:0]),
	.S4BEG(Tile_X2Y2_S4BEG[15:0]),
	.W1BEG(Tile_X2Y2_W1BEG[3:0]),
	.W2BEG(Tile_X2Y2_W2BEG[7:0]),
	.W2BEGb(Tile_X2Y2_W2BEGb[7:0]),
	.W6BEG(Tile_X2Y2_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y2_FrameData), 
	.FrameStrobe(Tile_X2_FrameStrobe)
	);

	LUT4AB Tile_X3Y2_LUT4AB (
	.N1END(Tile_X3Y3_N1BEG[3:0]),
	.N2MID(Tile_X3Y3_N2BEG[7:0]),
	.N2END(Tile_X3Y3_N2BEGb[7:0]),
	.N4END(Tile_X3Y3_N4BEG[15:0]),
	.Ci(Tile_X3Y3_Co[0:0]),
	.E1END(Tile_X2Y2_E1BEG[3:0]),
	.E2MID(Tile_X2Y2_E2BEG[7:0]),
	.E2END(Tile_X2Y2_E2BEGb[7:0]),
	.E6END(Tile_X2Y2_E6BEG[11:0]),
	.S1END(Tile_X3Y1_S1BEG[3:0]),
	.S2MID(Tile_X3Y1_S2BEG[7:0]),
	.S2END(Tile_X3Y1_S2BEGb[7:0]),
	.S4END(Tile_X3Y1_S4BEG[15:0]),
	.W1END(Tile_X4Y2_W1BEG[3:0]),
	.W2MID(Tile_X4Y2_W2BEG[7:0]),
	.W2END(Tile_X4Y2_W2BEGb[7:0]),
	.W6END(Tile_X4Y2_W6BEG[11:0]),
	.N1BEG(Tile_X3Y2_N1BEG[3:0]),
	.N2BEG(Tile_X3Y2_N2BEG[7:0]),
	.N2BEGb(Tile_X3Y2_N2BEGb[7:0]),
	.N4BEG(Tile_X3Y2_N4BEG[15:0]),
	.Co(Tile_X3Y2_Co[0:0]),
	.E1BEG(Tile_X3Y2_E1BEG[3:0]),
	.E2BEG(Tile_X3Y2_E2BEG[7:0]),
	.E2BEGb(Tile_X3Y2_E2BEGb[7:0]),
	.E6BEG(Tile_X3Y2_E6BEG[11:0]),
	.S1BEG(Tile_X3Y2_S1BEG[3:0]),
	.S2BEG(Tile_X3Y2_S2BEG[7:0]),
	.S2BEGb(Tile_X3Y2_S2BEGb[7:0]),
	.S4BEG(Tile_X3Y2_S4BEG[15:0]),
	.W1BEG(Tile_X3Y2_W1BEG[3:0]),
	.W2BEG(Tile_X3Y2_W2BEG[7:0]),
	.W2BEGb(Tile_X3Y2_W2BEGb[7:0]),
	.W6BEG(Tile_X3Y2_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y2_FrameData), 
	.FrameStrobe(Tile_X3_FrameStrobe)
	);

	LUT4AB Tile_X4Y2_LUT4AB (
	.N1END(Tile_X4Y3_N1BEG[3:0]),
	.N2MID(Tile_X4Y3_N2BEG[7:0]),
	.N2END(Tile_X4Y3_N2BEGb[7:0]),
	.N4END(Tile_X4Y3_N4BEG[15:0]),
	.Ci(Tile_X4Y3_Co[0:0]),
	.E1END(Tile_X3Y2_E1BEG[3:0]),
	.E2MID(Tile_X3Y2_E2BEG[7:0]),
	.E2END(Tile_X3Y2_E2BEGb[7:0]),
	.E6END(Tile_X3Y2_E6BEG[11:0]),
	.S1END(Tile_X4Y1_S1BEG[3:0]),
	.S2MID(Tile_X4Y1_S2BEG[7:0]),
	.S2END(Tile_X4Y1_S2BEGb[7:0]),
	.S4END(Tile_X4Y1_S4BEG[15:0]),
	.W1END(Tile_X5Y2_W1BEG[3:0]),
	.W2MID(Tile_X5Y2_W2BEG[7:0]),
	.W2END(Tile_X5Y2_W2BEGb[7:0]),
	.W6END(Tile_X5Y2_W6BEG[11:0]),
	.N1BEG(Tile_X4Y2_N1BEG[3:0]),
	.N2BEG(Tile_X4Y2_N2BEG[7:0]),
	.N2BEGb(Tile_X4Y2_N2BEGb[7:0]),
	.N4BEG(Tile_X4Y2_N4BEG[15:0]),
	.Co(Tile_X4Y2_Co[0:0]),
	.E1BEG(Tile_X4Y2_E1BEG[3:0]),
	.E2BEG(Tile_X4Y2_E2BEG[7:0]),
	.E2BEGb(Tile_X4Y2_E2BEGb[7:0]),
	.E6BEG(Tile_X4Y2_E6BEG[11:0]),
	.S1BEG(Tile_X4Y2_S1BEG[3:0]),
	.S2BEG(Tile_X4Y2_S2BEG[7:0]),
	.S2BEGb(Tile_X4Y2_S2BEGb[7:0]),
	.S4BEG(Tile_X4Y2_S4BEG[15:0]),
	.W1BEG(Tile_X4Y2_W1BEG[3:0]),
	.W2BEG(Tile_X4Y2_W2BEG[7:0]),
	.W2BEGb(Tile_X4Y2_W2BEGb[7:0]),
	.W6BEG(Tile_X4Y2_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y2_FrameData), 
	.FrameStrobe(Tile_X4_FrameStrobe)
	);

	CPU_IO Tile_X5Y2_CPU_IO (
	.E1END(Tile_X4Y2_E1BEG[3:0]),
	.E2MID(Tile_X4Y2_E2BEG[7:0]),
	.E2END(Tile_X4Y2_E2BEGb[7:0]),
	.E6END(Tile_X4Y2_E6BEG[11:0]),
	.W1BEG(Tile_X5Y2_W1BEG[3:0]),
	.W2BEG(Tile_X5Y2_W2BEG[7:0]),
	.W2BEGb(Tile_X5Y2_W2BEGb[7:0]),
	.W6BEG(Tile_X5Y2_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.OPA_I0(Tile_X5Y2_OPA_I0),
	.OPA_I1(Tile_X5Y2_OPA_I1),
	.OPA_I2(Tile_X5Y2_OPA_I2),
	.OPA_I3(Tile_X5Y2_OPA_I3),
	.UserCLK(UserCLK),
	.OPB_I0(Tile_X5Y2_OPB_I0),
	.OPB_I1(Tile_X5Y2_OPB_I1),
	.OPB_I2(Tile_X5Y2_OPB_I2),
	.OPB_I3(Tile_X5Y2_OPB_I3),
	.RES0_O0(Tile_X5Y2_RES0_O0),
	.RES0_O1(Tile_X5Y2_RES0_O1),
	.RES0_O2(Tile_X5Y2_RES0_O2),
	.RES0_O3(Tile_X5Y2_RES0_O3),
	.RES1_O0(Tile_X5Y2_RES1_O0),
	.RES1_O1(Tile_X5Y2_RES1_O1),
	.RES1_O2(Tile_X5Y2_RES1_O2),
	.RES1_O3(Tile_X5Y2_RES1_O3),
	.RES2_O0(Tile_X5Y2_RES2_O0),
	.RES2_O1(Tile_X5Y2_RES2_O1),
	.RES2_O2(Tile_X5Y2_RES2_O2),
	.RES2_O3(Tile_X5Y2_RES2_O3),
	.FrameData(Tile_Y2_FrameData), 
	.FrameStrobe(Tile_X5_FrameStrobe)
	);

	W_IO Tile_X0Y3_W_IO (
	.W1END(Tile_X1Y3_W1BEG[3:0]),
	.W2MID(Tile_X1Y3_W2BEG[7:0]),
	.W2END(Tile_X1Y3_W2BEGb[7:0]),
	.W6END(Tile_X1Y3_W6BEG[11:0]),
	.E1BEG(Tile_X0Y3_E1BEG[3:0]),
	.E2BEG(Tile_X0Y3_E2BEG[7:0]),
	.E2BEGb(Tile_X0Y3_E2BEGb[7:0]),
	.E6BEG(Tile_X0Y3_E6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.A_I_top(Tile_X0Y3_A_I_top),
	.A_T_top(Tile_X0Y3_A_T_top),
	.A_O_top(Tile_X0Y3_A_O_top),
	.UserCLK(UserCLK),
	.B_I_top(Tile_X0Y3_B_I_top),
	.B_T_top(Tile_X0Y3_B_T_top),
	.B_O_top(Tile_X0Y3_B_O_top),
	.FrameData(Tile_Y3_FrameData), 
	.FrameStrobe(Tile_X0_FrameStrobe)
	);

	LUT4AB Tile_X1Y3_LUT4AB (
	.N1END(Tile_X1Y4_N1BEG[3:0]),
	.N2MID(Tile_X1Y4_N2BEG[7:0]),
	.N2END(Tile_X1Y4_N2BEGb[7:0]),
	.N4END(Tile_X1Y4_N4BEG[15:0]),
	.Ci(Tile_X1Y4_Co[0:0]),
	.E1END(Tile_X0Y3_E1BEG[3:0]),
	.E2MID(Tile_X0Y3_E2BEG[7:0]),
	.E2END(Tile_X0Y3_E2BEGb[7:0]),
	.E6END(Tile_X0Y3_E6BEG[11:0]),
	.S1END(Tile_X1Y2_S1BEG[3:0]),
	.S2MID(Tile_X1Y2_S2BEG[7:0]),
	.S2END(Tile_X1Y2_S2BEGb[7:0]),
	.S4END(Tile_X1Y2_S4BEG[15:0]),
	.W1END(Tile_X2Y3_W1BEG[3:0]),
	.W2MID(Tile_X2Y3_W2BEG[7:0]),
	.W2END(Tile_X2Y3_W2BEGb[7:0]),
	.W6END(Tile_X2Y3_W6BEG[11:0]),
	.N1BEG(Tile_X1Y3_N1BEG[3:0]),
	.N2BEG(Tile_X1Y3_N2BEG[7:0]),
	.N2BEGb(Tile_X1Y3_N2BEGb[7:0]),
	.N4BEG(Tile_X1Y3_N4BEG[15:0]),
	.Co(Tile_X1Y3_Co[0:0]),
	.E1BEG(Tile_X1Y3_E1BEG[3:0]),
	.E2BEG(Tile_X1Y3_E2BEG[7:0]),
	.E2BEGb(Tile_X1Y3_E2BEGb[7:0]),
	.E6BEG(Tile_X1Y3_E6BEG[11:0]),
	.S1BEG(Tile_X1Y3_S1BEG[3:0]),
	.S2BEG(Tile_X1Y3_S2BEG[7:0]),
	.S2BEGb(Tile_X1Y3_S2BEGb[7:0]),
	.S4BEG(Tile_X1Y3_S4BEG[15:0]),
	.W1BEG(Tile_X1Y3_W1BEG[3:0]),
	.W2BEG(Tile_X1Y3_W2BEG[7:0]),
	.W2BEGb(Tile_X1Y3_W2BEGb[7:0]),
	.W6BEG(Tile_X1Y3_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y3_FrameData), 
	.FrameStrobe(Tile_X1_FrameStrobe)
	);

	LUT4AB Tile_X2Y3_LUT4AB (
	.N1END(Tile_X2Y4_N1BEG[3:0]),
	.N2MID(Tile_X2Y4_N2BEG[7:0]),
	.N2END(Tile_X2Y4_N2BEGb[7:0]),
	.N4END(Tile_X2Y4_N4BEG[15:0]),
	.Ci(Tile_X2Y4_Co[0:0]),
	.E1END(Tile_X1Y3_E1BEG[3:0]),
	.E2MID(Tile_X1Y3_E2BEG[7:0]),
	.E2END(Tile_X1Y3_E2BEGb[7:0]),
	.E6END(Tile_X1Y3_E6BEG[11:0]),
	.S1END(Tile_X2Y2_S1BEG[3:0]),
	.S2MID(Tile_X2Y2_S2BEG[7:0]),
	.S2END(Tile_X2Y2_S2BEGb[7:0]),
	.S4END(Tile_X2Y2_S4BEG[15:0]),
	.W1END(Tile_X3Y3_W1BEG[3:0]),
	.W2MID(Tile_X3Y3_W2BEG[7:0]),
	.W2END(Tile_X3Y3_W2BEGb[7:0]),
	.W6END(Tile_X3Y3_W6BEG[11:0]),
	.N1BEG(Tile_X2Y3_N1BEG[3:0]),
	.N2BEG(Tile_X2Y3_N2BEG[7:0]),
	.N2BEGb(Tile_X2Y3_N2BEGb[7:0]),
	.N4BEG(Tile_X2Y3_N4BEG[15:0]),
	.Co(Tile_X2Y3_Co[0:0]),
	.E1BEG(Tile_X2Y3_E1BEG[3:0]),
	.E2BEG(Tile_X2Y3_E2BEG[7:0]),
	.E2BEGb(Tile_X2Y3_E2BEGb[7:0]),
	.E6BEG(Tile_X2Y3_E6BEG[11:0]),
	.S1BEG(Tile_X2Y3_S1BEG[3:0]),
	.S2BEG(Tile_X2Y3_S2BEG[7:0]),
	.S2BEGb(Tile_X2Y3_S2BEGb[7:0]),
	.S4BEG(Tile_X2Y3_S4BEG[15:0]),
	.W1BEG(Tile_X2Y3_W1BEG[3:0]),
	.W2BEG(Tile_X2Y3_W2BEG[7:0]),
	.W2BEGb(Tile_X2Y3_W2BEGb[7:0]),
	.W6BEG(Tile_X2Y3_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y3_FrameData), 
	.FrameStrobe(Tile_X2_FrameStrobe)
	);

	LUT4AB Tile_X3Y3_LUT4AB (
	.N1END(Tile_X3Y4_N1BEG[3:0]),
	.N2MID(Tile_X3Y4_N2BEG[7:0]),
	.N2END(Tile_X3Y4_N2BEGb[7:0]),
	.N4END(Tile_X3Y4_N4BEG[15:0]),
	.Ci(Tile_X3Y4_Co[0:0]),
	.E1END(Tile_X2Y3_E1BEG[3:0]),
	.E2MID(Tile_X2Y3_E2BEG[7:0]),
	.E2END(Tile_X2Y3_E2BEGb[7:0]),
	.E6END(Tile_X2Y3_E6BEG[11:0]),
	.S1END(Tile_X3Y2_S1BEG[3:0]),
	.S2MID(Tile_X3Y2_S2BEG[7:0]),
	.S2END(Tile_X3Y2_S2BEGb[7:0]),
	.S4END(Tile_X3Y2_S4BEG[15:0]),
	.W1END(Tile_X4Y3_W1BEG[3:0]),
	.W2MID(Tile_X4Y3_W2BEG[7:0]),
	.W2END(Tile_X4Y3_W2BEGb[7:0]),
	.W6END(Tile_X4Y3_W6BEG[11:0]),
	.N1BEG(Tile_X3Y3_N1BEG[3:0]),
	.N2BEG(Tile_X3Y3_N2BEG[7:0]),
	.N2BEGb(Tile_X3Y3_N2BEGb[7:0]),
	.N4BEG(Tile_X3Y3_N4BEG[15:0]),
	.Co(Tile_X3Y3_Co[0:0]),
	.E1BEG(Tile_X3Y3_E1BEG[3:0]),
	.E2BEG(Tile_X3Y3_E2BEG[7:0]),
	.E2BEGb(Tile_X3Y3_E2BEGb[7:0]),
	.E6BEG(Tile_X3Y3_E6BEG[11:0]),
	.S1BEG(Tile_X3Y3_S1BEG[3:0]),
	.S2BEG(Tile_X3Y3_S2BEG[7:0]),
	.S2BEGb(Tile_X3Y3_S2BEGb[7:0]),
	.S4BEG(Tile_X3Y3_S4BEG[15:0]),
	.W1BEG(Tile_X3Y3_W1BEG[3:0]),
	.W2BEG(Tile_X3Y3_W2BEG[7:0]),
	.W2BEGb(Tile_X3Y3_W2BEGb[7:0]),
	.W6BEG(Tile_X3Y3_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y3_FrameData), 
	.FrameStrobe(Tile_X3_FrameStrobe)
	);

	LUT4AB Tile_X4Y3_LUT4AB (
	.N1END(Tile_X4Y4_N1BEG[3:0]),
	.N2MID(Tile_X4Y4_N2BEG[7:0]),
	.N2END(Tile_X4Y4_N2BEGb[7:0]),
	.N4END(Tile_X4Y4_N4BEG[15:0]),
	.Ci(Tile_X4Y4_Co[0:0]),
	.E1END(Tile_X3Y3_E1BEG[3:0]),
	.E2MID(Tile_X3Y3_E2BEG[7:0]),
	.E2END(Tile_X3Y3_E2BEGb[7:0]),
	.E6END(Tile_X3Y3_E6BEG[11:0]),
	.S1END(Tile_X4Y2_S1BEG[3:0]),
	.S2MID(Tile_X4Y2_S2BEG[7:0]),
	.S2END(Tile_X4Y2_S2BEGb[7:0]),
	.S4END(Tile_X4Y2_S4BEG[15:0]),
	.W1END(Tile_X5Y3_W1BEG[3:0]),
	.W2MID(Tile_X5Y3_W2BEG[7:0]),
	.W2END(Tile_X5Y3_W2BEGb[7:0]),
	.W6END(Tile_X5Y3_W6BEG[11:0]),
	.N1BEG(Tile_X4Y3_N1BEG[3:0]),
	.N2BEG(Tile_X4Y3_N2BEG[7:0]),
	.N2BEGb(Tile_X4Y3_N2BEGb[7:0]),
	.N4BEG(Tile_X4Y3_N4BEG[15:0]),
	.Co(Tile_X4Y3_Co[0:0]),
	.E1BEG(Tile_X4Y3_E1BEG[3:0]),
	.E2BEG(Tile_X4Y3_E2BEG[7:0]),
	.E2BEGb(Tile_X4Y3_E2BEGb[7:0]),
	.E6BEG(Tile_X4Y3_E6BEG[11:0]),
	.S1BEG(Tile_X4Y3_S1BEG[3:0]),
	.S2BEG(Tile_X4Y3_S2BEG[7:0]),
	.S2BEGb(Tile_X4Y3_S2BEGb[7:0]),
	.S4BEG(Tile_X4Y3_S4BEG[15:0]),
	.W1BEG(Tile_X4Y3_W1BEG[3:0]),
	.W2BEG(Tile_X4Y3_W2BEG[7:0]),
	.W2BEGb(Tile_X4Y3_W2BEGb[7:0]),
	.W6BEG(Tile_X4Y3_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y3_FrameData), 
	.FrameStrobe(Tile_X4_FrameStrobe)
	);

	CPU_IO Tile_X5Y3_CPU_IO (
	.E1END(Tile_X4Y3_E1BEG[3:0]),
	.E2MID(Tile_X4Y3_E2BEG[7:0]),
	.E2END(Tile_X4Y3_E2BEGb[7:0]),
	.E6END(Tile_X4Y3_E6BEG[11:0]),
	.W1BEG(Tile_X5Y3_W1BEG[3:0]),
	.W2BEG(Tile_X5Y3_W2BEG[7:0]),
	.W2BEGb(Tile_X5Y3_W2BEGb[7:0]),
	.W6BEG(Tile_X5Y3_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.OPA_I0(Tile_X5Y3_OPA_I0),
	.OPA_I1(Tile_X5Y3_OPA_I1),
	.OPA_I2(Tile_X5Y3_OPA_I2),
	.OPA_I3(Tile_X5Y3_OPA_I3),
	.UserCLK(UserCLK),
	.OPB_I0(Tile_X5Y3_OPB_I0),
	.OPB_I1(Tile_X5Y3_OPB_I1),
	.OPB_I2(Tile_X5Y3_OPB_I2),
	.OPB_I3(Tile_X5Y3_OPB_I3),
	.RES0_O0(Tile_X5Y3_RES0_O0),
	.RES0_O1(Tile_X5Y3_RES0_O1),
	.RES0_O2(Tile_X5Y3_RES0_O2),
	.RES0_O3(Tile_X5Y3_RES0_O3),
	.RES1_O0(Tile_X5Y3_RES1_O0),
	.RES1_O1(Tile_X5Y3_RES1_O1),
	.RES1_O2(Tile_X5Y3_RES1_O2),
	.RES1_O3(Tile_X5Y3_RES1_O3),
	.RES2_O0(Tile_X5Y3_RES2_O0),
	.RES2_O1(Tile_X5Y3_RES2_O1),
	.RES2_O2(Tile_X5Y3_RES2_O2),
	.RES2_O3(Tile_X5Y3_RES2_O3),
	.FrameData(Tile_Y3_FrameData), 
	.FrameStrobe(Tile_X5_FrameStrobe)
	);

	W_IO Tile_X0Y4_W_IO (
	.W1END(Tile_X1Y4_W1BEG[3:0]),
	.W2MID(Tile_X1Y4_W2BEG[7:0]),
	.W2END(Tile_X1Y4_W2BEGb[7:0]),
	.W6END(Tile_X1Y4_W6BEG[11:0]),
	.E1BEG(Tile_X0Y4_E1BEG[3:0]),
	.E2BEG(Tile_X0Y4_E2BEG[7:0]),
	.E2BEGb(Tile_X0Y4_E2BEGb[7:0]),
	.E6BEG(Tile_X0Y4_E6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.A_I_top(Tile_X0Y4_A_I_top),
	.A_T_top(Tile_X0Y4_A_T_top),
	.A_O_top(Tile_X0Y4_A_O_top),
	.UserCLK(UserCLK),
	.B_I_top(Tile_X0Y4_B_I_top),
	.B_T_top(Tile_X0Y4_B_T_top),
	.B_O_top(Tile_X0Y4_B_O_top),
	.FrameData(Tile_Y4_FrameData), 
	.FrameStrobe(Tile_X0_FrameStrobe)
	);

	LUT4AB Tile_X1Y4_LUT4AB (
	.N1END(Tile_X1Y5_N1BEG[3:0]),
	.N2MID(Tile_X1Y5_N2BEG[7:0]),
	.N2END(Tile_X1Y5_N2BEGb[7:0]),
	.N4END(Tile_X1Y5_N4BEG[15:0]),
	.Ci(Tile_X1Y5_Co[0:0]),
	.E1END(Tile_X0Y4_E1BEG[3:0]),
	.E2MID(Tile_X0Y4_E2BEG[7:0]),
	.E2END(Tile_X0Y4_E2BEGb[7:0]),
	.E6END(Tile_X0Y4_E6BEG[11:0]),
	.S1END(Tile_X1Y3_S1BEG[3:0]),
	.S2MID(Tile_X1Y3_S2BEG[7:0]),
	.S2END(Tile_X1Y3_S2BEGb[7:0]),
	.S4END(Tile_X1Y3_S4BEG[15:0]),
	.W1END(Tile_X2Y4_W1BEG[3:0]),
	.W2MID(Tile_X2Y4_W2BEG[7:0]),
	.W2END(Tile_X2Y4_W2BEGb[7:0]),
	.W6END(Tile_X2Y4_W6BEG[11:0]),
	.N1BEG(Tile_X1Y4_N1BEG[3:0]),
	.N2BEG(Tile_X1Y4_N2BEG[7:0]),
	.N2BEGb(Tile_X1Y4_N2BEGb[7:0]),
	.N4BEG(Tile_X1Y4_N4BEG[15:0]),
	.Co(Tile_X1Y4_Co[0:0]),
	.E1BEG(Tile_X1Y4_E1BEG[3:0]),
	.E2BEG(Tile_X1Y4_E2BEG[7:0]),
	.E2BEGb(Tile_X1Y4_E2BEGb[7:0]),
	.E6BEG(Tile_X1Y4_E6BEG[11:0]),
	.S1BEG(Tile_X1Y4_S1BEG[3:0]),
	.S2BEG(Tile_X1Y4_S2BEG[7:0]),
	.S2BEGb(Tile_X1Y4_S2BEGb[7:0]),
	.S4BEG(Tile_X1Y4_S4BEG[15:0]),
	.W1BEG(Tile_X1Y4_W1BEG[3:0]),
	.W2BEG(Tile_X1Y4_W2BEG[7:0]),
	.W2BEGb(Tile_X1Y4_W2BEGb[7:0]),
	.W6BEG(Tile_X1Y4_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y4_FrameData), 
	.FrameStrobe(Tile_X1_FrameStrobe)
	);

	LUT4AB Tile_X2Y4_LUT4AB (
	.N1END(Tile_X2Y5_N1BEG[3:0]),
	.N2MID(Tile_X2Y5_N2BEG[7:0]),
	.N2END(Tile_X2Y5_N2BEGb[7:0]),
	.N4END(Tile_X2Y5_N4BEG[15:0]),
	.Ci(Tile_X2Y5_Co[0:0]),
	.E1END(Tile_X1Y4_E1BEG[3:0]),
	.E2MID(Tile_X1Y4_E2BEG[7:0]),
	.E2END(Tile_X1Y4_E2BEGb[7:0]),
	.E6END(Tile_X1Y4_E6BEG[11:0]),
	.S1END(Tile_X2Y3_S1BEG[3:0]),
	.S2MID(Tile_X2Y3_S2BEG[7:0]),
	.S2END(Tile_X2Y3_S2BEGb[7:0]),
	.S4END(Tile_X2Y3_S4BEG[15:0]),
	.W1END(Tile_X3Y4_W1BEG[3:0]),
	.W2MID(Tile_X3Y4_W2BEG[7:0]),
	.W2END(Tile_X3Y4_W2BEGb[7:0]),
	.W6END(Tile_X3Y4_W6BEG[11:0]),
	.N1BEG(Tile_X2Y4_N1BEG[3:0]),
	.N2BEG(Tile_X2Y4_N2BEG[7:0]),
	.N2BEGb(Tile_X2Y4_N2BEGb[7:0]),
	.N4BEG(Tile_X2Y4_N4BEG[15:0]),
	.Co(Tile_X2Y4_Co[0:0]),
	.E1BEG(Tile_X2Y4_E1BEG[3:0]),
	.E2BEG(Tile_X2Y4_E2BEG[7:0]),
	.E2BEGb(Tile_X2Y4_E2BEGb[7:0]),
	.E6BEG(Tile_X2Y4_E6BEG[11:0]),
	.S1BEG(Tile_X2Y4_S1BEG[3:0]),
	.S2BEG(Tile_X2Y4_S2BEG[7:0]),
	.S2BEGb(Tile_X2Y4_S2BEGb[7:0]),
	.S4BEG(Tile_X2Y4_S4BEG[15:0]),
	.W1BEG(Tile_X2Y4_W1BEG[3:0]),
	.W2BEG(Tile_X2Y4_W2BEG[7:0]),
	.W2BEGb(Tile_X2Y4_W2BEGb[7:0]),
	.W6BEG(Tile_X2Y4_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y4_FrameData), 
	.FrameStrobe(Tile_X2_FrameStrobe)
	);

	LUT4AB Tile_X3Y4_LUT4AB (
	.N1END(Tile_X3Y5_N1BEG[3:0]),
	.N2MID(Tile_X3Y5_N2BEG[7:0]),
	.N2END(Tile_X3Y5_N2BEGb[7:0]),
	.N4END(Tile_X3Y5_N4BEG[15:0]),
	.Ci(Tile_X3Y5_Co[0:0]),
	.E1END(Tile_X2Y4_E1BEG[3:0]),
	.E2MID(Tile_X2Y4_E2BEG[7:0]),
	.E2END(Tile_X2Y4_E2BEGb[7:0]),
	.E6END(Tile_X2Y4_E6BEG[11:0]),
	.S1END(Tile_X3Y3_S1BEG[3:0]),
	.S2MID(Tile_X3Y3_S2BEG[7:0]),
	.S2END(Tile_X3Y3_S2BEGb[7:0]),
	.S4END(Tile_X3Y3_S4BEG[15:0]),
	.W1END(Tile_X4Y4_W1BEG[3:0]),
	.W2MID(Tile_X4Y4_W2BEG[7:0]),
	.W2END(Tile_X4Y4_W2BEGb[7:0]),
	.W6END(Tile_X4Y4_W6BEG[11:0]),
	.N1BEG(Tile_X3Y4_N1BEG[3:0]),
	.N2BEG(Tile_X3Y4_N2BEG[7:0]),
	.N2BEGb(Tile_X3Y4_N2BEGb[7:0]),
	.N4BEG(Tile_X3Y4_N4BEG[15:0]),
	.Co(Tile_X3Y4_Co[0:0]),
	.E1BEG(Tile_X3Y4_E1BEG[3:0]),
	.E2BEG(Tile_X3Y4_E2BEG[7:0]),
	.E2BEGb(Tile_X3Y4_E2BEGb[7:0]),
	.E6BEG(Tile_X3Y4_E6BEG[11:0]),
	.S1BEG(Tile_X3Y4_S1BEG[3:0]),
	.S2BEG(Tile_X3Y4_S2BEG[7:0]),
	.S2BEGb(Tile_X3Y4_S2BEGb[7:0]),
	.S4BEG(Tile_X3Y4_S4BEG[15:0]),
	.W1BEG(Tile_X3Y4_W1BEG[3:0]),
	.W2BEG(Tile_X3Y4_W2BEG[7:0]),
	.W2BEGb(Tile_X3Y4_W2BEGb[7:0]),
	.W6BEG(Tile_X3Y4_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y4_FrameData), 
	.FrameStrobe(Tile_X3_FrameStrobe)
	);

	LUT4AB Tile_X4Y4_LUT4AB (
	.N1END(Tile_X4Y5_N1BEG[3:0]),
	.N2MID(Tile_X4Y5_N2BEG[7:0]),
	.N2END(Tile_X4Y5_N2BEGb[7:0]),
	.N4END(Tile_X4Y5_N4BEG[15:0]),
	.Ci(Tile_X4Y5_Co[0:0]),
	.E1END(Tile_X3Y4_E1BEG[3:0]),
	.E2MID(Tile_X3Y4_E2BEG[7:0]),
	.E2END(Tile_X3Y4_E2BEGb[7:0]),
	.E6END(Tile_X3Y4_E6BEG[11:0]),
	.S1END(Tile_X4Y3_S1BEG[3:0]),
	.S2MID(Tile_X4Y3_S2BEG[7:0]),
	.S2END(Tile_X4Y3_S2BEGb[7:0]),
	.S4END(Tile_X4Y3_S4BEG[15:0]),
	.W1END(Tile_X5Y4_W1BEG[3:0]),
	.W2MID(Tile_X5Y4_W2BEG[7:0]),
	.W2END(Tile_X5Y4_W2BEGb[7:0]),
	.W6END(Tile_X5Y4_W6BEG[11:0]),
	.N1BEG(Tile_X4Y4_N1BEG[3:0]),
	.N2BEG(Tile_X4Y4_N2BEG[7:0]),
	.N2BEGb(Tile_X4Y4_N2BEGb[7:0]),
	.N4BEG(Tile_X4Y4_N4BEG[15:0]),
	.Co(Tile_X4Y4_Co[0:0]),
	.E1BEG(Tile_X4Y4_E1BEG[3:0]),
	.E2BEG(Tile_X4Y4_E2BEG[7:0]),
	.E2BEGb(Tile_X4Y4_E2BEGb[7:0]),
	.E6BEG(Tile_X4Y4_E6BEG[11:0]),
	.S1BEG(Tile_X4Y4_S1BEG[3:0]),
	.S2BEG(Tile_X4Y4_S2BEG[7:0]),
	.S2BEGb(Tile_X4Y4_S2BEGb[7:0]),
	.S4BEG(Tile_X4Y4_S4BEG[15:0]),
	.W1BEG(Tile_X4Y4_W1BEG[3:0]),
	.W2BEG(Tile_X4Y4_W2BEG[7:0]),
	.W2BEGb(Tile_X4Y4_W2BEGb[7:0]),
	.W6BEG(Tile_X4Y4_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.UserCLK(UserCLK),
	.FrameData(Tile_Y4_FrameData), 
	.FrameStrobe(Tile_X4_FrameStrobe)
	);

	CPU_IO Tile_X5Y4_CPU_IO (
	.E1END(Tile_X4Y4_E1BEG[3:0]),
	.E2MID(Tile_X4Y4_E2BEG[7:0]),
	.E2END(Tile_X4Y4_E2BEGb[7:0]),
	.E6END(Tile_X4Y4_E6BEG[11:0]),
	.W1BEG(Tile_X5Y4_W1BEG[3:0]),
	.W2BEG(Tile_X5Y4_W2BEG[7:0]),
	.W2BEGb(Tile_X5Y4_W2BEGb[7:0]),
	.W6BEG(Tile_X5Y4_W6BEG[11:0]),
	//tile IO port which gets directly connected to top-level tile module
	.OPA_I0(Tile_X5Y4_OPA_I0),
	.OPA_I1(Tile_X5Y4_OPA_I1),
	.OPA_I2(Tile_X5Y4_OPA_I2),
	.OPA_I3(Tile_X5Y4_OPA_I3),
	.UserCLK(UserCLK),
	.OPB_I0(Tile_X5Y4_OPB_I0),
	.OPB_I1(Tile_X5Y4_OPB_I1),
	.OPB_I2(Tile_X5Y4_OPB_I2),
	.OPB_I3(Tile_X5Y4_OPB_I3),
	.RES0_O0(Tile_X5Y4_RES0_O0),
	.RES0_O1(Tile_X5Y4_RES0_O1),
	.RES0_O2(Tile_X5Y4_RES0_O2),
	.RES0_O3(Tile_X5Y4_RES0_O3),
	.RES1_O0(Tile_X5Y4_RES1_O0),
	.RES1_O1(Tile_X5Y4_RES1_O1),
	.RES1_O2(Tile_X5Y4_RES1_O2),
	.RES1_O3(Tile_X5Y4_RES1_O3),
	.RES2_O0(Tile_X5Y4_RES2_O0),
	.RES2_O1(Tile_X5Y4_RES2_O1),
	.RES2_O2(Tile_X5Y4_RES2_O2),
	.RES2_O3(Tile_X5Y4_RES2_O3),
	.FrameData(Tile_Y4_FrameData), 
	.FrameStrobe(Tile_X5_FrameStrobe)
	);

	S_term_single Tile_X1Y5_S_term_single (
	.S1END(Tile_X1Y4_S1BEG[3:0]),
	.S2MID(Tile_X1Y4_S2BEG[7:0]),
	.S2END(Tile_X1Y4_S2BEGb[7:0]),
	.S4END(Tile_X1Y4_S4BEG[15:0]),
	.N1BEG(Tile_X1Y5_N1BEG[3:0]),
	.N2BEG(Tile_X1Y5_N2BEG[7:0]),
	.N2BEGb(Tile_X1Y5_N2BEGb[7:0]),
	.N4BEG(Tile_X1Y5_N4BEG[15:0]),
	.Co(Tile_X1Y5_Co[0:0]) 
	);

	S_term_single Tile_X2Y5_S_term_single (
	.S1END(Tile_X2Y4_S1BEG[3:0]),
	.S2MID(Tile_X2Y4_S2BEG[7:0]),
	.S2END(Tile_X2Y4_S2BEGb[7:0]),
	.S4END(Tile_X2Y4_S4BEG[15:0]),
	.N1BEG(Tile_X2Y5_N1BEG[3:0]),
	.N2BEG(Tile_X2Y5_N2BEG[7:0]),
	.N2BEGb(Tile_X2Y5_N2BEGb[7:0]),
	.N4BEG(Tile_X2Y5_N4BEG[15:0]),
	.Co(Tile_X2Y5_Co[0:0]) 
	);

	S_term_single Tile_X3Y5_S_term_single (
	.S1END(Tile_X3Y4_S1BEG[3:0]),
	.S2MID(Tile_X3Y4_S2BEG[7:0]),
	.S2END(Tile_X3Y4_S2BEGb[7:0]),
	.S4END(Tile_X3Y4_S4BEG[15:0]),
	.N1BEG(Tile_X3Y5_N1BEG[3:0]),
	.N2BEG(Tile_X3Y5_N2BEG[7:0]),
	.N2BEGb(Tile_X3Y5_N2BEGb[7:0]),
	.N4BEG(Tile_X3Y5_N4BEG[15:0]),
	.Co(Tile_X3Y5_Co[0:0]) 
	);

	S_term_single Tile_X4Y5_S_term_single (
	.S1END(Tile_X4Y4_S1BEG[3:0]),
	.S2MID(Tile_X4Y4_S2BEG[7:0]),
	.S2END(Tile_X4Y4_S2BEGb[7:0]),
	.S4END(Tile_X4Y4_S4BEG[15:0]),
	.N1BEG(Tile_X4Y5_N1BEG[3:0]),
	.N2BEG(Tile_X4Y5_N2BEG[7:0]),
	.N2BEGb(Tile_X4Y5_N2BEGb[7:0]),
	.N4BEG(Tile_X4Y5_N4BEG[15:0]),
	.Co(Tile_X4Y5_Co[0:0]) 
	);


endmodule

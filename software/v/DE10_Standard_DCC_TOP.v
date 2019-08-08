module DE10_Standard_DCC_TOP

(
   CLK,
   KEY,
	SW,
	LED,
   AD_SCLK,
	AD_SDIO,
	ADA_D,
	ADA_DCO,
	ADA_OE,
	ADA_OR,
	ADA_SPI_CS,
	ADB_D,
	ADB_DCO,
	ADB_OE,
	ADB_OR,
	ADB_SPI_CS,
	AIC_BCLK,
	AIC_DIN,
	AIC_DOUT,
	AIC_LRCIN,
	AIC_LRCOUT,
	AIC_SPI_CS,
	AIC_XCLK,
	CLKIN1,
	CLKOUT0,
	DA,
	DB,
	FPGA_CLK_A_N,
	FPGA_CLK_A_P,
	FPGA_CLK_B_N,
	FPGA_CLK_B_P,
	J1_152,
	XT_IN_N,
	XT_IN_P
	);
input                      CLK;
input           [3:0]      KEY;
input           [3:0]      SW;
output          [7:0]      LED;
inout 		          		AD_SCLK;
inout 		          		AD_SDIO;
input 		    [13:0]		ADA_D;
input 		          		ADA_DCO;
output		          		ADA_OE;
input 		          		ADA_OR;
output		          		ADA_SPI_CS;
input 		    [13:0]		ADB_D;
input 		          		ADB_DCO;
output		          		ADB_OE;
input 		          		ADB_OR;
output		          		ADB_SPI_CS;
inout 		          		AIC_BCLK;
output		          		AIC_DIN;
input 		          		AIC_DOUT;
inout 		          		AIC_LRCIN;
inout 		          		AIC_LRCOUT;
output		          		AIC_SPI_CS;
output		          		AIC_XCLK;
input 		          		CLKIN1;
output		          		CLKOUT0;
output		    [13:0]		DA;
output		    [13:0]		DB;
inout 		          		FPGA_CLK_A_N;
inout 		          		FPGA_CLK_A_P;
inout 		          		FPGA_CLK_B_N;
inout 		          		FPGA_CLK_B_P;
inout 		          		J1_152;
input 		          		XT_IN_N;
input 		          		XT_IN_P;

wire						      reset_n;
wire						      sys_clk;
wire						      sys_clk_90deg;
wire						      sys_clk_180deg;
wire						      sys_clk_270deg;
wire						      pll_locked;


reg			[13:0]			per_a2da_d;
reg			[13:0]			per_a2db_d;
reg			[13:0]			a2da_data;
reg			[13:0]			a2db_data;

wire		   [13:0]			fir_in_data;
wire		   [13:0]			fir_data;

assign	reset_n			= KEY[3];

assign	FAN_CTRL		   = 1'bz;

assign	FPGA_CLK_A_P	=  sys_clk_180deg;
assign	FPGA_CLK_A_N	= ~sys_clk_180deg;
assign	FPGA_CLK_B_P	=  sys_clk_270deg;
assign	FPGA_CLK_B_N	= ~sys_clk_270deg;

assign	LED[0]			= pll_locked;		// pll locked
assign	LED[1]			= SW[0];		// (DFS)Data Format Select indicator
assign	LED[2]			= SW[1];		// (DCS)Duty Cycle Stabilizer Select indicator
assign	LED[3]			= !SW[2] ? ADA_OR : ADB_OR;	// Out-of-Range indicator
assign	LED[4]			= KEY[0];		// reset 1MHz NCO output indicator
assign	LED[5]			= KEY[1];		// reset 10MHz NCO output indicator
assign	LED[6] 			= SW[3];		// channel A or B indicator
assign	LED[7] 			= count[24];		// heartbeat

 // assign for ADC control signal
assign	AD_SCLK			= SW[0];		// (DFS)Data Format Select
assign	AD_SDIO			= SW[1];		// (DCS)Duty Cycle Stabilizer Select
assign	ADA_OE			= 1'b0;				// enable ADA output
assign	ADA_SPI_CS		= 1'b1;				// disable ADA_SPI_CS (CSB)
assign	ADB_OE			= 1'b0;				// enable ADB output
assign	ADB_SPI_CS		= 1'b1;				// disable ADB_SPI_CS (CSB)



//--- pll
lpm_pll		pll_inst(
			.refclk(CLK),
			.outclk_0(sys_clk),
			.outclk_1(sys_clk_90deg),
			.outclk_2(sys_clk_180deg),
			.outclk_3(sys_clk_270deg),
			.locked(pll_locked)
			);



//--- analog to digital converter capture and sync
	//--- Channel A
always @(negedge reset_n or posedge ADA_DCO)
begin
	if (!reset_n) begin
		per_a2da_d	<= 14'd0;
	end
	else begin
		per_a2da_d	<= ADA_D;
	end
end

always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		a2da_data	<= 14'd0;
	end
	else begin
		a2da_data	<= per_a2da_d;
	end
end

	//--- Channel B
always @(negedge reset_n or posedge ADB_DCO)
begin
	if (!reset_n) begin
		per_a2db_d	<= 14'd0;
	end
	else begin
		per_a2db_d	<= ADB_D;
	end
end

always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		a2db_data	<= 14'd0;
	end
	else begin
		a2db_data	<= per_a2db_d;
	end
end



//--- count for Heartbeat
reg		[31:0]				count;
always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		count	<= 0;
	end
	else begin
		count	<= count + 1'b1;
	end
end


//--- probe points for data capture

a2d_data_a	a2d_data_a_inst(
			.probe(a2da_data),
			.source());

a2d_data_b	a2d_data_b_inst(
			.probe(a2db_data),
			.source());

endmodule

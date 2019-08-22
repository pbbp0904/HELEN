`define ENABLE_HPS
`define ENABLE_HSMC
//`define ENABLE_OTHER

module DE10_Standard_FB(

    ///////// CLOCK /////////
    input              CLOCK2_50,
    input              CLOCK3_50,
    input              CLOCK4_50,
    input              CLOCK_50,

    ///////// SW /////////
    input    [ 9: 0]   SW,

    ///////// LED /////////
    output   [ 9: 0]   LEDR,

    ///////// SDRAM /////////
    output             DRAM_CLK,
    output             DRAM_CKE,
    output   [12: 0]   DRAM_ADDR,
    output   [ 1: 0]   DRAM_BA,
    inout    [15: 0]   DRAM_DQ,
    output             DRAM_LDQM,
    output             DRAM_UDQM,
    output             DRAM_CS_N,
    output             DRAM_WE_N,
    output             DRAM_CAS_N,
    output             DRAM_RAS_N,
	 
	 ///////// KEY /////////
    input    [ 3: 0]   KEY,

	 
`ifdef ENABLE_HSMC
    ///////// HSMC /////////
	input 		          		ADA_DCO,
	input 		    [13:0]		ADA_D,
	output		          		ADA_OE,
	input 		          		ADA_OR,
	output		          		ADA_SPI_CS,
	input 		          		ADB_DCO,
	input 		    [13:0]		ADB_D,
	output		          		ADB_OE,
	input 		          		ADB_OR,
	output		          		ADB_SPI_CS,
	inout 		          		AD_SCLK,
	inout 		          		AD_SDIO,
	inout 		          		AIC_BCLK,
	output		          		AIC_DIN,
	input 		          		AIC_DOUT,
	inout 		          		AIC_LRCIN,
	inout 		          		AIC_LRCOUT,
	output		          		AIC_SPI_CS,
	output		          		AIC_XCLK,
	input 		          		CLKIN1,
	output		          		CLKOUT0,
	output		    [13:0]		DA,
	output		    [13:0]		DB,
	inout 		          		FPGA_CLK_A_N,
	inout 		          		FPGA_CLK_A_P,
	inout 		          		FPGA_CLK_B_N,
	inout 		          		FPGA_CLK_B_P,
	inout 		          		J1_152,
	output		          		SCL,
	inout 		          		SDA,
	input 		          		XT_IN_N,
	input 		          		XT_IN_P,
`endif /*ENABLE_HSMC*/


`ifdef ENABLE_HPS
    ///////// HPS /////////
    inout              HPS_CONV_USB_N,
    output   [14: 0]   HPS_DDR3_ADDR,
    output   [ 2: 0]   HPS_DDR3_BA,
    output             HPS_DDR3_CAS_N,
    output             HPS_DDR3_CKE,
    output             HPS_DDR3_CK_N,
    output             HPS_DDR3_CK_P,
    output             HPS_DDR3_CS_N,
    output   [ 3: 0]   HPS_DDR3_DM,
    inout    [31: 0]   HPS_DDR3_DQ,
    inout    [ 3: 0]   HPS_DDR3_DQS_N,
    inout    [ 3: 0]   HPS_DDR3_DQS_P,
    output             HPS_DDR3_ODT,
    output             HPS_DDR3_RAS_N,
    output             HPS_DDR3_RESET_N,
    input              HPS_DDR3_RZQ,
    output             HPS_DDR3_WE_N,
    output             HPS_ENET_GTX_CLK,
    inout              HPS_ENET_INT_N,
    output             HPS_ENET_MDC,
    inout              HPS_ENET_MDIO,
    input              HPS_ENET_RX_CLK,
    input    [ 3: 0]   HPS_ENET_RX_DATA,
    input              HPS_ENET_RX_DV,
    output   [ 3: 0]   HPS_ENET_TX_DATA,
    output             HPS_ENET_TX_EN,
    inout    [ 3: 0]   HPS_FLASH_DATA,
    output             HPS_FLASH_DCLK,
    output             HPS_FLASH_NCSO,
    inout              HPS_GSENSOR_INT,
    inout              HPS_I2C1_SCLK,
    inout              HPS_I2C1_SDAT,
    inout              HPS_I2C2_SCLK,
    inout              HPS_I2C2_SDAT,
    inout              HPS_I2C_CONTROL,
    inout              HPS_KEY,
    inout              HPS_LCM_BK,
    inout              HPS_LCM_D_C,
    inout              HPS_LCM_RST_N,
    output             HPS_LCM_SPIM_CLK,
    output             HPS_LCM_SPIM_MOSI,
    input              HPS_LCM_SPIM_MISO,
    output             HPS_LCM_SPIM_SS,
    inout              HPS_LED,
    inout              HPS_LTC_GPIO,
    output             HPS_SD_CLK,
    inout              HPS_SD_CMD,
    inout    [ 3: 0]   HPS_SD_DATA,
    output             HPS_SPIM_CLK,
    input              HPS_SPIM_MISO,
    output             HPS_SPIM_MOSI,
    output             HPS_SPIM_SS,
    input              HPS_UART_RX,
    output             HPS_UART_TX,
    input              HPS_USB_CLKOUT,
    inout    [ 7: 0]   HPS_USB_DATA,
    input              HPS_USB_DIR,
    input              HPS_USB_NXT,
    output             HPS_USB_STP,
`endif /*ENABLE_HPS*/


`ifdef ENABLE_OTHER
    ///////// Video-In /////////
    input              TD_CLK27,
    input              TD_HS,
    input              TD_VS,
    input    [ 7: 0]   TD_DATA,
    output             TD_RESET_N,

    ///////// Audio /////////
    inout              AUD_BCLK,
    output             AUD_XCK,
    inout              AUD_ADCLRCK,
    input              AUD_ADCDAT,
    inout              AUD_DACLRCK,
    output             AUD_DACDAT,

    ///////// PS2 /////////
    inout              PS2_CLK,
    inout              PS2_CLK2,
    inout              PS2_DAT,
    inout              PS2_DAT2,

    ///////// ADC /////////
    output             ADC_SCLK,
    input              ADC_DOUT,
    output             ADC_DIN,
    output             ADC_CONVST,

    ///////// I2C for Audio and Video-In /////////
    output             FPGA_I2C_SCLK,
    inout              FPGA_I2C_SDAT,
	 
	 ///////// Seg7 /////////
    output   [ 6: 0]   HEX0,
    output   [ 6: 0]   HEX1,
    output   [ 6: 0]   HEX2,
    output   [ 6: 0]   HEX3,
    output   [ 6: 0]   HEX4,
    output   [ 6: 0]   HEX5,
	

    ///////// IR /////////
    output             IRDA_TXD,
    input              IRDA_RXD,
	 
	 
    ///////// VGA /////////
    output             VGA_CLK,
    output             VGA_HS,
    output             VGA_VS,
    output   [ 7: 0]   VGA_R,
    output   [ 7: 0]   VGA_G,
    output   [ 7: 0]   VGA_B,
    output             VGA_BLANK_N,
    output             VGA_SYNC_N,
`endif /*ENABLE_OTHER*/




    ///////// GPIO /////////
    inout    [35: 0]   GPIO

);


wire               clk_65, clk_vip;
wire [7:0]         vid_r,vid_g,vid_b;
wire               vid_v_sync;
wire               vid_h_sync;
wire               vid_datavalid;


//=======================================================
//  REG/WIRE declarations
//=======================================================

wire        hps_read;
wire [31:0] data_peak_out;
wire [31:0] data_tail_out;
wire [25:0] data_time_out;

wire        hps_fpga_reset_n;
wire [9:0]  fpga_led_internal;
wire [2:0]  hps_reset_req;
wire        hps_cold_reset;
wire        hps_warm_reset;
wire        hps_debug_reset;
wire [27:0] stm_hw_events;
wire        fpga_clk_50;
// connection of internal logics
//assign LEDR[9:1] = fpga_led_internal[9:1];
assign stm_hw_events = {{4{1'b0}}, SW, fpga_led_internal[8:0]};
assign fpga_clk_50 = CLOCK_50;

wire hps_0_f2h_dma_req0_dma_req;
wire hps_0_f2h_dma_req0_dma_single;
wire hps_0_f2h_dma_req0_dma_ack;
wire hps_0_f2h_dma_req1_dma_req;
wire hps_0_f2h_dma_req1_dma_single;
wire hps_0_f2h_dma_req1_dma_ack;
wire hps_0_f2h_dma_req2_dma_req;
wire hps_0_f2h_dma_req2_dma_single;
wire hps_0_f2h_dma_req2_dma_ack;
wire hps_0_f2h_dma_req3_dma_req;
wire hps_0_f2h_dma_req3_dma_single;
wire hps_0_f2h_dma_req3_dma_ack;


 // assign for ADC control signal
//assign	AD_SCLK			= SW[8];		// (DFS)Data Format Select
//assign	AD_SDIO			= SW[9];		// (DCS)Duty Cycle Stabilizer Select
//assign	ADA_OE			= 1'b0;				// enable ADA output
//assign	ADA_SPI_CS		= 1'b1;				// disable ADA_SPI_CS (CSB)











//wire clk_48, clk_44;
//=======================================================
//  Structural coding
//=======================================================


soc_system u0 (
        .clk_clk                               (CLOCK_50),              //                            clk.clk
        .reset_reset_n                         (1'b1),                  //                          reset.reset_n
       //HPS ddr3
        .memory_mem_a                          (HPS_DDR3_ADDR),         //                         memory.mem_a
        .memory_mem_ba                         (HPS_DDR3_BA),           //                               .mem_ba
        .memory_mem_ck                         (HPS_DDR3_CK_P),         //                               .mem_ck
        .memory_mem_ck_n                       (HPS_DDR3_CK_N),         //                               .mem_ck_n
        .memory_mem_cke                        (HPS_DDR3_CKE),          //                               .mem_cke
        .memory_mem_cs_n                       (HPS_DDR3_CS_N),         //                               .mem_cs_n
        .memory_mem_ras_n                      (HPS_DDR3_RAS_N),        //                               .mem_ras_n
        .memory_mem_cas_n                      (HPS_DDR3_CAS_N),        //                               .mem_cas_n
        .memory_mem_we_n                       (HPS_DDR3_WE_N),         //                               .mem_we_n
        .memory_mem_reset_n                    (HPS_DDR3_RESET_N),      //                               .mem_reset_n
        .memory_mem_dq                         (HPS_DDR3_DQ),           //                               .mem_dq
        .memory_mem_dqs                        (HPS_DDR3_DQS_P),        //                               .mem_dqs
        .memory_mem_dqs_n                      (HPS_DDR3_DQS_N),        //                               .mem_dqs_n
        .memory_mem_odt                        (HPS_DDR3_ODT),          //                               .mem_odt
        .memory_mem_dm                         (HPS_DDR3_DM),           //                               .mem_dm
        .memory_oct_rzqin                      (HPS_DDR3_RZQ),          //                               .oct_rzqin
       //HPS ethernet
        .hps_0_hps_io_hps_io_emac1_inst_TX_CLK (HPS_ENET_GTX_CLK),      //                   hps_0_hps_io.hps_io_emac1_inst_TX_CLK
        .hps_0_hps_io_hps_io_emac1_inst_TXD0   (HPS_ENET_TX_DATA[0]),   //                               .hps_io_emac1_inst_TXD0
        .hps_0_hps_io_hps_io_emac1_inst_TXD1   (HPS_ENET_TX_DATA[1]),   //                               .hps_io_emac1_inst_TXD1
        .hps_0_hps_io_hps_io_emac1_inst_TXD2   (HPS_ENET_TX_DATA[2]),   //                               .hps_io_emac1_inst_TXD2
        .hps_0_hps_io_hps_io_emac1_inst_TXD3   (HPS_ENET_TX_DATA[3]),   //                               .hps_io_emac1_inst_TXD3
        .hps_0_hps_io_hps_io_emac1_inst_RXD0   (HPS_ENET_RX_DATA[0]),   //                               .hps_io_emac1_inst_RXD0
        .hps_0_hps_io_hps_io_emac1_inst_MDIO   (HPS_ENET_MDIO),         //                               .hps_io_emac1_inst_MDIO
        .hps_0_hps_io_hps_io_emac1_inst_MDC    (HPS_ENET_MDC),          //                               .hps_io_emac1_inst_MDC
        .hps_0_hps_io_hps_io_emac1_inst_RX_CTL (HPS_ENET_RX_DV),        //                               .hps_io_emac1_inst_RX_CTL
        .hps_0_hps_io_hps_io_emac1_inst_TX_CTL (HPS_ENET_TX_EN),        //                               .hps_io_emac1_inst_TX_CTL
        .hps_0_hps_io_hps_io_emac1_inst_RX_CLK (HPS_ENET_RX_CLK),       //                               .hps_io_emac1_inst_RX_CLK
        .hps_0_hps_io_hps_io_emac1_inst_RXD1   (HPS_ENET_RX_DATA[1]),   //                               .hps_io_emac1_inst_RXD1
        .hps_0_hps_io_hps_io_emac1_inst_RXD2   (HPS_ENET_RX_DATA[2]),   //                               .hps_io_emac1_inst_RXD2
        .hps_0_hps_io_hps_io_emac1_inst_RXD3   (HPS_ENET_RX_DATA[3]),   //                               .hps_io_emac1_inst_RXD3
       //HPS QSPI
        .hps_0_hps_io_hps_io_qspi_inst_IO0     (HPS_FLASH_DATA[0]),     //                               .hps_io_qspi_inst_IO0
        .hps_0_hps_io_hps_io_qspi_inst_IO1     (HPS_FLASH_DATA[1]),     //                               .hps_io_qspi_inst_IO1
        .hps_0_hps_io_hps_io_qspi_inst_IO2     (HPS_FLASH_DATA[2]),     //                               .hps_io_qspi_inst_IO2
        .hps_0_hps_io_hps_io_qspi_inst_IO3     (HPS_FLASH_DATA[3]),     //                               .hps_io_qspi_inst_IO3
        .hps_0_hps_io_hps_io_qspi_inst_SS0     (HPS_FLASH_NCSO),        //                               .hps_io_qspi_inst_SS0
        .hps_0_hps_io_hps_io_qspi_inst_CLK     (HPS_FLASH_DCLK),        //                               .hps_io_qspi_inst_CLK
       //HPS SD card
        .hps_0_hps_io_hps_io_sdio_inst_CMD     (HPS_SD_CMD),            //                               .hps_io_sdio_inst_CMD
        .hps_0_hps_io_hps_io_sdio_inst_D0      (HPS_SD_DATA[0]),        //                               .hps_io_sdio_inst_D0
        .hps_0_hps_io_hps_io_sdio_inst_D1      (HPS_SD_DATA[1]),        //                               .hps_io_sdio_inst_D1
        .hps_0_hps_io_hps_io_sdio_inst_CLK     (HPS_SD_CLK),            //                               .hps_io_sdio_inst_CLK
        .hps_0_hps_io_hps_io_sdio_inst_D2      (HPS_SD_DATA[2]),        //                               .hps_io_sdio_inst_D2
        .hps_0_hps_io_hps_io_sdio_inst_D3      (HPS_SD_DATA[3]),        //                               .hps_io_sdio_inst_D3
       //HPS USB
        .hps_0_hps_io_hps_io_usb1_inst_D0      (HPS_USB_DATA[0]),       //                               .hps_io_usb1_inst_D0
        .hps_0_hps_io_hps_io_usb1_inst_D1      (HPS_USB_DATA[1]),       //                               .hps_io_usb1_inst_D1
        .hps_0_hps_io_hps_io_usb1_inst_D2      (HPS_USB_DATA[2]),       //                               .hps_io_usb1_inst_D2
        .hps_0_hps_io_hps_io_usb1_inst_D3      (HPS_USB_DATA[3]),       //                               .hps_io_usb1_inst_D3
        .hps_0_hps_io_hps_io_usb1_inst_D4      (HPS_USB_DATA[4]),       //                               .hps_io_usb1_inst_D4
        .hps_0_hps_io_hps_io_usb1_inst_D5      (HPS_USB_DATA[5]),       //                               .hps_io_usb1_inst_D5
        .hps_0_hps_io_hps_io_usb1_inst_D6      (HPS_USB_DATA[6]),       //                               .hps_io_usb1_inst_D6
        .hps_0_hps_io_hps_io_usb1_inst_D7      (HPS_USB_DATA[7]),       //                               .hps_io_usb1_inst_D7
        .hps_0_hps_io_hps_io_usb1_inst_CLK     (HPS_USB_CLKOUT),        //                               .hps_io_usb1_inst_CLK
        .hps_0_hps_io_hps_io_usb1_inst_STP     (HPS_USB_STP),           //                               .hps_io_usb1_inst_STP
        .hps_0_hps_io_hps_io_usb1_inst_DIR     (HPS_USB_DIR),           //                               .hps_io_usb1_inst_DIR
        .hps_0_hps_io_hps_io_usb1_inst_NXT     (HPS_USB_NXT),           //                               .hps_io_usb1_inst_NXT
       //HPS LCD
        .hps_0_hps_io_hps_io_spim0_inst_CLK    (HPS_LCM_SPIM_CLK),      //                               .hps_io_spim0_inst_CLK
        .hps_0_hps_io_hps_io_spim0_inst_MOSI   (HPS_LCM_SPIM_MOSI),     //                               .hps_io_spim0_inst_MOSI
        .hps_0_hps_io_hps_io_spim0_inst_MISO   (HPS_LCM_SPIM_MISO),     //                               .hps_io_spim0_inst_MISO
        .hps_0_hps_io_hps_io_spim0_inst_SS0    (HPS_LCM_SPIM_SS),       //                               .hps_io_spim0_inst_SS0
       //HPS SPI
        .hps_0_hps_io_hps_io_spim1_inst_CLK    (HPS_SPIM_CLK),          //                               .hps_io_spim1_inst_CLK
        .hps_0_hps_io_hps_io_spim1_inst_MOSI   (HPS_SPIM_MOSI),         //                               .hps_io_spim1_inst_MOSI
        .hps_0_hps_io_hps_io_spim1_inst_MISO   (HPS_SPIM_MISO),         //                               .hps_io_spim1_inst_MISO
        .hps_0_hps_io_hps_io_spim1_inst_SS0    (HPS_SPIM_SS),           //                               .hps_io_spim1_inst_SS0
       //HPS UART
        .hps_0_hps_io_hps_io_uart0_inst_RX     (HPS_UART_RX),           //                               .hps_io_uart0_inst_RX
        .hps_0_hps_io_hps_io_uart0_inst_TX     (HPS_UART_TX),           //                               .hps_io_uart0_inst_TX
       //HPS I2C1
        .hps_0_hps_io_hps_io_i2c0_inst_SDA     (HPS_I2C1_SDAT),         //                               .hps_io_i2c0_inst_SDA
        .hps_0_hps_io_hps_io_i2c0_inst_SCL     (HPS_I2C1_SCLK),         //                               .hps_io_i2c0_inst_SCL
       //HPS I2C2
        .hps_0_hps_io_hps_io_i2c1_inst_SDA     (HPS_I2C2_SDAT),         //                               .hps_io_i2c1_inst_SDA
        .hps_0_hps_io_hps_io_i2c1_inst_SCL     (HPS_I2C2_SCLK),         //                               .hps_io_i2c1_inst_SCL
       //HPS GPIO
        .hps_0_hps_io_hps_io_gpio_inst_GPIO09  (HPS_CONV_USB_N),        //                               .hps_io_gpio_inst_GPIO09
        .hps_0_hps_io_hps_io_gpio_inst_GPIO35  (HPS_ENET_INT_N),        //                               .hps_io_gpio_inst_GPIO35
        .hps_0_hps_io_hps_io_gpio_inst_GPIO37  (HPS_LCM_BK),            //                               .hps_io_gpio_inst_GPIO37
        .hps_0_hps_io_hps_io_gpio_inst_GPIO40  (HPS_LTC_GPIO),          //                               .hps_io_gpio_inst_GPIO40
        .hps_0_hps_io_hps_io_gpio_inst_GPIO41  (HPS_LCM_D_C),           //                               .hps_io_gpio_inst_GPIO41
        .hps_0_hps_io_hps_io_gpio_inst_GPIO44  (HPS_LCM_RST_N),         //                               .hps_io_gpio_inst_GPIO44
        .hps_0_hps_io_hps_io_gpio_inst_GPIO48  (HPS_I2C_CONTROL),       //                               .hps_io_gpio_inst_GPIO48
        .hps_0_hps_io_hps_io_gpio_inst_GPIO53  (HPS_LED),               //                               .hps_io_gpio_inst_GPIO53
        .hps_0_hps_io_hps_io_gpio_inst_GPIO54  (HPS_KEY),               //                               .hps_io_gpio_inst_GPIO54
        .hps_0_hps_io_hps_io_gpio_inst_GPIO61  (HPS_GSENSOR_INT),       //                               .hps_io_gpio_inst_GPIO61
       //HPS reset output
        .hps_0_h2f_reset_reset_n               (hps_fpga_reset_n),      //                hps_0_h2f_reset.reset_n
        .hps_0_f2h_cold_reset_req_reset_n      (~hps_cold_reset),       //       hps_0_f2h_cold_reset_req.reset_n
        .hps_0_f2h_debug_reset_req_reset_n     (~hps_debug_reset),      //      hps_0_f2h_debug_reset_req.reset_n
        .hps_0_f2h_stm_hw_events_stm_hwevents  (stm_hw_events),         //        hps_0_f2h_stm_hw_events.stm_hwevents
        .hps_0_f2h_warm_reset_req_reset_n      (~hps_warm_reset),       //       hps_0_f2h_warm_reset_req.reset_n
		  
        ////////////////////////
        // FPGA
        // pio
        .ledr_external_connection_export            (fpga_led_internal),           //               ledr_external_connection.export
        .sw_external_connection_export              (SW),                          //               sw_external_connection.export
		  
		  // ADC Data
		  .ddc_peak_out_external_connection_export	 (data_peak_out),               //               ddc_peak_out_external_connection.export
		  .ddc_tail_out_external_connection_export	 (data_tail_out),               //               ddc_tail_out_external_connection.export
		  .ddc_time_out_external_connection_export	 (data_time_out),               //               ddc_time_out_external_connection.export
		  .hps_read_bit_external_connection_export    (hps_read)                     //               hps_read_bit_external_connection.export

);



// Imported from DCC Demo
DE10_Standard_DCC_TOP DCC_TOP_ins(
   .CLK(CLOCK_50),
   .KEY(KEY),
	.SW(SW),
	.LED(LEDR),
   .AD_SCLK(AD_SCLK),
	.AD_SDIO(AD_SDIO),
	.ADA_D(ADA_D),
	.ADA_DCO(ADA_DCO),
	.ADA_OE(ADA_OE),
	.ADA_OR(ADA_OR),
	.ADA_SPI_CS(ADA_SPI_CS),
	.ADB_D(ADB_D),
	.ADB_DCO(ADB_DCO),
	.ADB_OE(ADB_OE),
	.ADB_OR(ADB_OR),
	.ADB_SPI_CS(ADB_SPI_CS),
	.AIC_BCLK(AIC_BCLK),
	.AIC_DIN(AIC_DIN),
	.AIC_DOUT(AIC_DOUT),
	.AIC_LRCIN(AIC_LRCIN),
	.AIC_LRCOUT(AIC_LRCOUT),
	.AIC_SPI_CS(AIC_SPI_CS),
	.AIC_XCLK(AIC_XCLK),
	.CLKIN1(CLKIN1),
	.CLKOUT0(CLKOUT0),
	.DA(DA),
	.DB(DB),
	.FPGA_CLK_A_N(FPGA_CLK_A_N),
	.FPGA_CLK_A_P(FPGA_CLK_A_P),
	.FPGA_CLK_B_N(FPGA_CLK_B_N),
	.FPGA_CLK_B_P(FPGA_CLK_B_P),
	.J1_152(J1_152),
	.XT_IN_N(XT_IN_N),
	.XT_IN_P(XT_IN_P)
	);

	
	

// Source/Probe megawizard instance
hps_reset hps_reset_inst (
        .source_clk (fpga_clk_50),
        .source     (hps_reset_req)
);

altera_edge_detector pulse_cold_reset (
        .clk       (fpga_clk_50),
        .rst_n     (hps_fpga_reset_n),
        .signal_in (hps_reset_req[0]),
        .pulse_out (hps_cold_reset)
);
defparam pulse_cold_reset.PULSE_EXT = 6;
defparam pulse_cold_reset.EDGE_TYPE = 1;
defparam pulse_cold_reset.IGNORE_RST_WHILE_BUSY = 1;

altera_edge_detector pulse_warm_reset (
        .clk       (fpga_clk_50),
        .rst_n     (hps_fpga_reset_n),
        .signal_in (hps_reset_req[1]),
        .pulse_out (hps_warm_reset)
);
defparam pulse_warm_reset.PULSE_EXT = 2;
defparam pulse_warm_reset.EDGE_TYPE = 1;
defparam pulse_warm_reset.IGNORE_RST_WHILE_BUSY = 1;

altera_edge_detector pulse_debug_reset (
        .clk       (fpga_clk_50),
        .rst_n     (hps_fpga_reset_n),
        .signal_in (hps_reset_req[2]),
        .pulse_out (hps_debug_reset)
);
defparam pulse_debug_reset.PULSE_EXT = 32;
defparam pulse_debug_reset.EDGE_TYPE = 1;
defparam pulse_debug_reset.IGNORE_RST_WHILE_BUSY = 1;

reg [25:0] counter;
reg  led_level;
always @(posedge fpga_clk_50 or negedge hps_fpga_reset_n)
begin
    if(~hps_fpga_reset_n)
    begin
        counter<=0;
        led_level<=0;
    end

    else if(counter==49999999)
    begin
        counter<=0;
        led_level<=~led_level;
    end
	 else
        counter<=counter+1'b1;
		  
end

assign LEDR[9]=led_level;

	
	
	
// Custom code for triggering
integer i;
reg			[25:0]			ddc_time;


// A Data
reg			[13:0]			per_a2da_d[20:0];
reg			[13:0]			a2da_peak;
reg			[13:0]			a2da_tail;

wire			[13:0]			a_pre_peak;
wire			[13:0]			a_post_peak;
wire			[13:0]			a_peak;

wire			[13:0]			a_pre_tail;
wire			[13:0]			a_post_tail;
wire			[13:0]			a_tail;

assign a_pre_peak 	= per_a2da_d[20];
assign a_post_peak 	= per_a2da_d[20-2];
assign a_peak 			= per_a2da_d[20-1];

assign a_pre_tail 	= per_a2da_d[2];
assign a_post_tail 	= per_a2da_d[0];
assign a_tail 			= per_a2da_d[1];


always @(posedge ADA_DCO)
begin
	if(ADA_D >= 8192) // If value is negative
	begin
		if (a_pre_peak <= a_peak)
		begin
			if (a_peak >= a_post_peak)
			begin
				if(a_peak > 2760) //Threshold
				begin
					if (a_peak < 8000) //If less than max
					begin
						a2da_peak	<= a_peak;
						a2da_tail   <= a_tail;
					end
					else
					begin
						a2da_peak	<= 0;
						a2da_tail   <= 0;
					end
				end
			end
		end
		for(i=20;i>0;i=i-1)
		begin
			per_a2da_d[i] <= per_a2da_d[i-1];
		end
		per_a2da_d[0]	<= 16384-ADA_D;
	end
end


// B Data
reg			[13:0]			per_a2db_d[20:0];
reg			[13:0]			a2db_peak;
reg			[13:0]			a2db_tail;

wire			[13:0]			b_pre_peak;
wire			[13:0]			b_post_peak;
wire			[13:0]			b_peak;

wire			[13:0]			b_pre_tail;
wire			[13:0]			b_post_tail;
wire			[13:0]			b_tail;

assign b_pre_peak 	= per_a2db_d[20];
assign b_post_peak 	= per_a2db_d[20-2];
assign b_peak 			= per_a2db_d[20-1];

assign b_pre_tail 	= per_a2db_d[2];
assign b_post_tail 	= per_a2db_d[0];
assign b_tail 			= per_a2db_d[1];

always @(posedge ADB_DCO)
begin
	if(ADB_D >= 8192)
	begin
		if (b_pre_peak <= b_peak)
		begin
			if (b_peak >= b_post_peak)
			begin
				if(b_peak*12 > 2760)
				begin
					ddc_time		<= counter;
					if (b_peak < 8000)
					begin
						a2db_peak	<= b_peak;
						a2db_tail   <= b_tail;
					end
					else
					begin
						a2db_peak	<= 0;
						a2db_tail   <= 0;
					end
				end
			end
		end
		for(i=20;i>0;i=i-1)
		begin
			per_a2db_d[i] <= per_a2db_d[i-1];
		end
		per_a2db_d[0]	<= 16384-ADB_D;
	end
end


// Sending out
reg			[13:0]			data_peak_a;
reg			[13:0]			data_peak_b;
reg			[13:0]			data_tail_a;
reg			[13:0]			data_tail_b;
reg			[25:0]			data_time;
always @(posedge hps_read)
begin
	data_peak_a	<= a2da_peak;
	data_peak_b <= a2db_peak;
	data_tail_a <= a2da_tail;
	data_tail_b <= a2db_tail;
	data_time	<= ddc_time;
end

assign data_peak_out[13:0] = data_peak_a;
assign data_peak_out[14] = 0;
assign data_peak_out[15] = 0;
assign data_peak_out[29:16] = data_peak_b;
assign data_peak_out[30] = 0;
assign data_peak_out[31] = 0;

assign data_tail_out[13:0] = data_tail_a;
assign data_tail_out[14] = 0;
assign data_tail_out[15] = 0;
assign data_tail_out[29:16] = data_tail_b;
assign data_tail_out[30] = 0;
assign data_tail_out[31] = 0;

assign data_time_out = data_time;






endmodule


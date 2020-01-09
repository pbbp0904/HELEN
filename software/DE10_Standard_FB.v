`define ENABLE_HPS
`define ENABLE_HSMC
//`define ENABLE_OTHER

////////////////////////////////////////////
//
//
// SYSTEM SETUP CODE - PLEASE DON'T MODIFY
//
//
///////////////////////////////////////////

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
wire [31:0] ddc_data_0;
wire [31:0] ddc_data_1;
wire [31:0] ddc_data_2;
wire [31:0] dcc_data_3;
wire [31:0] dcc_data_4;
wire [31:0] dcc_data_5;
wire [31:0] dcc_data_6;
wire [31:0] dcc_data_7;
wire [31:0] dcc_data_8;
wire [31:0] dcc_data_9;
wire [31:0] dcc_data_10;
wire [31:0] dcc_data_11;
wire [31:0] dcc_data_12;
wire [31:0] dcc_data_13;
wire [31:0] dcc_data_14;
wire [31:0] dcc_data_15;
wire [31:0] dcc_data_16;
wire [31:0] dcc_data_17;
wire [31:0] dcc_data_18;
wire [31:0] dcc_data_19;
wire [31:0] dcc_data_20;
wire [31:0] dcc_data_21;
wire [31:0] dcc_data_22;
wire [31:0] dcc_data_23;
wire [31:0] dcc_data_24;
wire [31:0] dcc_data_25;
wire [31:0] dcc_data_26;
wire [31:0] dcc_data_27;
wire [31:0] dcc_data_28;
wire [31:0] dcc_data_29;
wire [31:0] dcc_data_30;
wire [31:0] dcc_data_31;
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
        .dcc_data_0_external_connection_export	 (ddc_data_0),               //               ddc_peak_out_external_connection.export
        .dcc_data_1_external_connection_export	 (ddc_data_1),               //               ddc_tail_out_external_connection.export
        .ddc_data_2_external_connection_export	 (ddc_data_2),               //               ddc_tail_out_external_connection.export
        .ddc_data_3_external_connection_export	 (ddc_data_3),               //               ddc_tail_out_external_connection.export
        .ddc_data_4_external_connection_export	 (ddc_data_4),               //               ddc_tail_out_external_connection.export
        .ddc_data_5_external_connection_export	 (ddc_data_5),               //               ddc_tail_out_external_connection.export
        .ddc_data_6_external_connection_export	 (ddc_data_6),               //               ddc_tail_out_external_connection.export
        .ddc_data_7_external_connection_export	 (ddc_data_7),               //               ddc_tail_out_external_connection.export
        .ddc_data_8_external_connection_export	 (ddc_data_8),               //               ddc_tail_out_external_connection.export
        .ddc_data_9_external_connection_export	 (ddc_data_9),               //               ddc_tail_out_external_connection.export
        .ddc_data_10_external_connection_export	 (ddc_data_10),               //               ddc_tail_out_external_connection.export
        .ddc_data_11_external_connection_export	 (ddc_data_11),               //               ddc_tail_out_external_connection.export
        .ddc_data_12_external_connection_export	 (ddc_data_12),               //               ddc_tail_out_external_connection.export
        .ddc_data_13_external_connection_export	 (ddc_data_13),               //               ddc_tail_out_external_connection.export
        .ddc_data_14_external_connection_export	 (ddc_data_14),               //               ddc_tail_out_external_connection.export
        .ddc_data_15_external_connection_export	 (ddc_data_15),               //               ddc_tail_out_external_connection.export
        .ddc_data_16_external_connection_export	 (ddc_data_16),               //               ddc_tail_out_external_connection.export
        .ddc_data_17_external_connection_export	 (ddc_data_17),               //               ddc_tail_out_external_connection.export
        .ddc_data_18_external_connection_export	 (ddc_data_18),               //               ddc_tail_out_external_connection.export
        .ddc_data_19_external_connection_export	 (ddc_data_19),               //               ddc_tail_out_external_connection.export
        .ddc_data_20_external_connection_export	 (ddc_data_20),               //               ddc_tail_out_external_connection.export
        .ddc_data_21_external_connection_export	 (ddc_data_21),               //               ddc_tail_out_external_connection.export
        .ddc_data_22_external_connection_export	 (ddc_data_22),               //               ddc_tail_out_external_connection.export
        .ddc_data_23_external_connection_export	 (ddc_data_23),               //               ddc_tail_out_external_connection.export
        .ddc_data_24_external_connection_export	 (ddc_data_24),               //               ddc_tail_out_external_connection.export
        .ddc_data_25_external_connection_export	 (ddc_data_25),               //               ddc_tail_out_external_connection.export
        .ddc_data_26_external_connection_export	 (ddc_data_26),               //               ddc_tail_out_external_connection.export
        .ddc_data_27_external_connection_export	 (ddc_data_27),               //               ddc_tail_out_external_connection.export
        .ddc_data_28_external_connection_export	 (ddc_data_28),               //               ddc_tail_out_external_connection.export
        .ddc_data_29_external_connection_export	 (ddc_data_29),               //               ddc_tail_out_external_connection.export
        .ddc_data_30_external_connection_export	 (ddc_data_30),               //               ddc_tail_out_external_connection.export
        .ddc_data_31_external_connection_export	 (ddc_data_31),               //               ddc_tail_out_external_connection.export
        .ddc_time_out_external_connection_export	 (data_time_out),               //               ddc_time_out_external_connection.export
        .hps_read_bit_external_connection_export    (hps_read),                     //               hps_read_bit_external_connection.export
        .pps_count_out_external_connection_export   (pps_count_out)
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

/* HEARTBEAT */
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

////////////////////////////////////////////
//
//
// END OF SYSTEM SETUP CODE
//
//
///////////////////////////////////////////

////////////////////////////////////////////
//
//
// HELEN CODE - PLEASE MODIFY
//
//
///////////////////////////////////////////
parameter NUM_WINDOWS = 10;
parameter BUFFER_SIZE = 32*NUM_WINDOWS-1;

integer post_window_count, store_flag, data_count, time_index, a_index, b_index, pre_index, post_index;
integer send_count;
reg			[31:0]			ddc_time;
reg         [31:0]          pps_count;

// a channel and b channel data
reg			[15:0]			a_data;
reg			[15:0]			b_data;

reg		 	[15:0]			a_pre_window[3:0];
reg		 	[15:0]			b_pre_window[3:0];

reg		 	[15:0]			a_post_window[27:0];
reg		 	[15:0]			b_post_window[27:0];


reg								triggered;

// combined data register
reg         [31:0]          full_data[BUFFER_SIZE:0];
// time array, corresponds to every 32 entries in full_data
reg         [31:0]          times[9:0];


always @(posedge ADA_DCO)
begin	
	if(ADA_D <= -2170) // If value is negative and below the trigger value
	begin
		triggered = 1;
		post_window_count = 0;
	end
	
	if(triggered)
	begin
		a_post_window[post_window_count] = ADA_D;
		b_post_window[post_window_count] = ADB_D;
		post_window_count=post_window_count+1;
		
		if(post_window_count>27)
		begin
			triggered = 0;
			store_flag = 1;
		end
	end
	else
	begin
	
		// Shifting A data
		for(a_index=0;a_index<3;a_index=a_index+1)
		begin
			a_pre_window[a_index] = a_pre_window[a_index+1];
		end
		a_pre_window[3] = ADA_D;
		
		// Shifting B data
		for(b_index=0;b_index<3;b_index=b_index+1)
		begin
			b_pre_window[b_index] = b_pre_window[b_index+1];
		end
		b_pre_window[3] = ADB_D;
	end
	
end

always @(negedge ADA_DCO)
begin
	if (store_flag)
	begin
		// Storing to full_data buffer
		
		// Pre trigger window
		for(pre_index=0;pre_index<4;pre_index=pre_index+1)
		begin
			full_data[data_count*32+pre_index] = {a_pre_window[pre_index], b_pre_window[pre_index]};
		end
		
		// Post trigger window
		for(post_index=0;post_index<28;post_index=post_index+1)
		begin
			full_data[data_count*32+post_index+4] = {a_post_window[post_index], b_post_window[post_index]};
		end
		
		// Time of last measurement plus 1/2 clock cycle
		times[data_count] = counter;
		
		data_count = data_count + 1;
        if(data_count >= NUM_WINDOWS)
        begin  
            data_count = 0;
        end
		if(data_count == send_count)
        begin
            data_count=data_count-1;
        end
        if(data_count == -1)
        begin
            data_count = NUM_WINDOWS-1;
        end
        
        store_flag = 0;
	end
end

always @(posedge GPIO[0])
begin
    pps_count = pps_count + 1;
end



// Sending out
//reg			[13:0]			data_peak_a;
//reg			[13:0]			data_peak_b;
//reg			[13:0]			data_tail_a;
//reg			[13:0]			data_tail_b;
reg         [31:0]          data_0;
reg         [31:0]          data_1;
reg         [31:0]          data_2;
reg         [31:0]          data_3;
reg         [31:0]          data_4;
reg         [31:0]          data_5;
reg         [31:0]          data_6;
reg         [31:0]          data_7;
reg         [31:0]          data_8;
reg         [31:0]          data_9;
reg         [31:0]          data_10;
reg         [31:0]          data_11;
reg         [31:0]          data_12;
reg         [31:0]          data_13;
reg         [31:0]          data_14;
reg         [31:0]          data_15;
reg         [31:0]          data_16;
reg         [31:0]          data_17;
reg         [31:0]          data_18;
reg         [31:0]          data_19;
reg         [31:0]          data_20;
reg         [31:0]          data_21;
reg         [31:0]          data_22;
reg         [31:0]          data_23;
reg         [31:0]          data_24;
reg         [31:0]          data_25;
reg         [31:0]          data_26;
reg         [31:0]          data_27;
reg         [31:0]          data_28;
reg         [31:0]          data_29;
reg         [31:0]          data_30;
reg         [31:0]          data_31;
reg			[25:0]			data_time;
//
always @(posedge hps_read)
begin
    if(send_count != data_count)
    begin
        data_0 <= full_data[send_count*32];
        data_1 <= full_data[send_count*32+1];
        data_2 <= full_data[send_count*32+2];
        data_3 <= full_data[send_count*32+3];
        data_4 <= full_data[send_count*32+4];
        data_5 <= full_data[send_count*32+5];
        data_6 <= full_data[send_count*32+6];
        data_7 <= full_data[send_count*32+7];
        data_8 <= full_data[send_count*32+8];
        data_9 <= full_data[send_count*32+9];
        data_10 <= full_data[send_count*32+10]; 
        data_11 <= full_data[send_count*32+11];
        data_12 <= full_data[send_count*32+12];
        data_13 <= full_data[send_count*32+13];
        data_14 <= full_data[send_count*32+14];
        data_15 <= full_data[send_count*32+15];
        data_16 <= full_data[send_count*32+16];
        data_17 <= full_data[send_count*32+17];
        data_18 <= full_data[send_count*32+18];
        data_19 <= full_data[send_count*32+19];
        data_20 <= full_data[send_count*32+20];
        data_21 <= full_data[send_count*32+21];
        data_22 <= full_data[send_count*32+22];
        data_23 <= full_data[send_count*32+23];
        data_24 <= full_data[send_count*32+24];
        data_25 <= full_data[send_count*32+25];
        data_26 <= full_data[send_count*32+26];
        data_27 <= full_data[send_count*32+27];
        data_28 <= full_data[send_count*32+28];
        data_29 <= full_data[send_count*32+29];
        data_30 <= full_data[send_count*32+30];
        data_31 <= full_data[send_count*32+31];
        data_time	<= times[send_count];

        send_count = send_count + 1;
        if(send_count >= NUM_WINDOWS)
        begin
            send_count = 0;
        end
    end
end

assign ddc_data_0 = data_0;
assign ddc_data_1 = data_1;
assign ddc_data_2 = data_2;
assign ddc_data_3 = data_3;
assign ddc_data_4 = data_4;
assign ddc_data_5 = data_5;
assign ddc_data_6 = data_6;
assign ddc_data_7 = data_7;
assign ddc_data_8 = data_8;
assign ddc_data_9 = data_9;
assign ddc_data_10 = data_10;
assign ddc_data_11 = data_11;
assign ddc_data_12 = data_12;
assign ddc_data_13 = data_13;
assign ddc_data_14 = data_14;
assign ddc_data_15 = data_15;
assign ddc_data_16 = data_16;
assign ddc_data_17 = data_17;
assign ddc_data_18 = data_18;
assign ddc_data_19 = data_19;
assign ddc_data_20 = data_20;
assign ddc_data_21 = data_21;
assign ddc_data_22 = data_22;
assign ddc_data_23 = data_23;
assign ddc_data_24 = data_24;
assign ddc_data_25 = data_25;
assign ddc_data_26 = data_26;
assign ddc_data_27 = data_27;
assign ddc_data_28 = data_28;
assign ddc_data_29 = data_29;
assign ddc_data_30 = data_30;
assign ddc_data_31 = data_31;

assign data_time_out = data_time;
assign pps_count_out = pps_count;
//
//assign data_peak_out[13:0]  = data_peak_a;
//assign data_peak_out[14]    = 0;
//assign data_peak_out[15]    = 0;
//assign data_peak_out[29:16] = data_peak_b;
//assign data_peak_out[30]    = 0;
//assign data_peak_out[31]    = 0;
//
//assign data_tail_out[13:0]  = data_tail_a;
//assign data_tail_out[14]    = 0;
//assign data_tail_out[15]    = 0;
//assign data_tail_out[29:16] = data_tail_b;
//assign data_tail_out[30]    = 0;
//assign data_tail_out[31]    = 0;
//
//assign data_time_out = data_time;

endmodule
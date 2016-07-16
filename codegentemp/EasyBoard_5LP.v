// ======================================================================
// EasyBoard_5LP.v generated from TopDesign.cysch
// 07/16/2016 at 16:46
// This file is auto generated. ANY EDITS YOU MAKE MAY BE LOST WHEN THIS FILE IS REGENERATED!!!
// ======================================================================

/* -- WARNING: The following section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_DIE_LEOPARD 1
`define CYDEV_CHIP_REV_LEOPARD_PRODUCTION 3
`define CYDEV_CHIP_REV_LEOPARD_ES3 3
`define CYDEV_CHIP_REV_LEOPARD_ES2 1
`define CYDEV_CHIP_REV_LEOPARD_ES1 0
`define CYDEV_CHIP_DIE_TMA4 2
`define CYDEV_CHIP_REV_TMA4_PRODUCTION 17
`define CYDEV_CHIP_REV_TMA4_ES 17
`define CYDEV_CHIP_REV_TMA4_ES2 33
`define CYDEV_CHIP_DIE_PSOC4A 3
`define CYDEV_CHIP_REV_PSOC4A_PRODUCTION 17
`define CYDEV_CHIP_REV_PSOC4A_ES0 17
`define CYDEV_CHIP_DIE_PSOC5LP 4
`define CYDEV_CHIP_REV_PSOC5LP_PRODUCTION 0
`define CYDEV_CHIP_REV_PSOC5LP_ES0 0
`define CYDEV_CHIP_DIE_PANTHER 5
`define CYDEV_CHIP_REV_PANTHER_PRODUCTION 1
`define CYDEV_CHIP_REV_PANTHER_ES1 1
`define CYDEV_CHIP_REV_PANTHER_ES0 0
`define CYDEV_CHIP_DIE_EXPECT 4
`define CYDEV_CHIP_REV_EXPECT 0
`define CYDEV_CHIP_DIE_ACTUAL 4
/* -- WARNING: The previous section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_FAMILY_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_UNKNOWN 0
`define CYDEV_CHIP_FAMILY_PSOC3 1
`define CYDEV_CHIP_MEMBER_3A 1
`define CYDEV_CHIP_REVISION_3A_PRODUCTION 3
`define CYDEV_CHIP_REVISION_3A_ES3 3
`define CYDEV_CHIP_REVISION_3A_ES2 1
`define CYDEV_CHIP_REVISION_3A_ES1 0
`define CYDEV_CHIP_FAMILY_PSOC4 2
`define CYDEV_CHIP_MEMBER_4G 2
`define CYDEV_CHIP_REVISION_4G_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4G_ES 17
`define CYDEV_CHIP_REVISION_4G_ES2 33
`define CYDEV_CHIP_MEMBER_4U 3
`define CYDEV_CHIP_REVISION_4U_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4E 4
`define CYDEV_CHIP_REVISION_4E_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4N 5
`define CYDEV_CHIP_REVISION_4N_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4D 6
`define CYDEV_CHIP_REVISION_4D_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4J 7
`define CYDEV_CHIP_REVISION_4J_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4K 8
`define CYDEV_CHIP_REVISION_4K_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4H 9
`define CYDEV_CHIP_REVISION_4H_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4A 10
`define CYDEV_CHIP_REVISION_4A_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4A_ES0 17
`define CYDEV_CHIP_MEMBER_4F 11
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4F 12
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4M 13
`define CYDEV_CHIP_REVISION_4M_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4L 14
`define CYDEV_CHIP_REVISION_4L_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4I 15
`define CYDEV_CHIP_REVISION_4I_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4C 16
`define CYDEV_CHIP_REVISION_4C_PRODUCTION 0
`define CYDEV_CHIP_FAMILY_PSOC5 3
`define CYDEV_CHIP_MEMBER_5B 17
`define CYDEV_CHIP_REVISION_5B_PRODUCTION 0
`define CYDEV_CHIP_REVISION_5B_ES0 0
`define CYDEV_CHIP_MEMBER_5A 18
`define CYDEV_CHIP_REVISION_5A_PRODUCTION 1
`define CYDEV_CHIP_REVISION_5A_ES1 1
`define CYDEV_CHIP_REVISION_5A_ES0 0
`define CYDEV_CHIP_FAMILY_USED 3
`define CYDEV_CHIP_MEMBER_USED 17
`define CYDEV_CHIP_REVISION_USED 0
// CharLCD_v2_20(ConversionRoutines=true, CUSTOM0=0,E,8,8,8,E,0, CUSTOM1=0,A,A,4,4,4,0, CUSTOM2=0,E,A,E,8,8,0, CUSTOM3=0,E,A,C,A,A,0, CUSTOM4=0,E,8,C,8,E,0, CUSTOM5=0,E,8,E,2,E,0, CUSTOM6=0,E,8,E,2,E,0, CUSTOM7=0,4,4,4,0,4,0, CustomCharacterSet=0, TypeReplacementString=uint8, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=CharLCD_v2_20, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=LCD, CY_INSTANCE_SHORT_NAME=LCD, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=20, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP2, INSTANCE_NAME=LCD, )
module CharLCD_v2_20_0 ;



	wire [6:0] tmpOE__LCDPort_net;
	wire [6:0] tmpFB_6__LCDPort_net;
	wire [6:0] tmpIO_6__LCDPort_net;
	wire [0:0] tmpINTERRUPT_0__LCDPort_net;
	electrical [0:0] tmpSIOVREF__LCDPort_net;

	cy_psoc3_pins_v1_10
		#(.id("8808d97d-8a01-48a8-8b93-0d5fee8bd985/ed092b9b-d398-4703-be89-cebf998501f6"),
		  .drive_mode(21'b110_110_110_110_110_110_110),
		  .ibuf_enabled(7'b1_1_1_1_1_1_1),
		  .init_dr_st(7'b0_0_0_0_0_0_0),
		  .input_clk_en(0),
		  .input_sync(7'b1_1_1_1_1_1_1),
		  .input_sync_mode(7'b0_0_0_0_0_0_0),
		  .intr_mode(14'b00_00_00_00_00_00_00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(",,,,,,"),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(7'b0_0_0_0_0_0_0),
		  .oe_reset(0),
		  .oe_sync(7'b0_0_0_0_0_0_0),
		  .output_clk_en(0),
		  .output_clock_mode(7'b0_0_0_0_0_0_0),
		  .output_conn(7'b0_0_0_0_0_0_0),
		  .output_mode(7'b0_0_0_0_0_0_0),
		  .output_reset(0),
		  .output_sync(7'b0_0_0_0_0_0_0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(",,,,,,"),
		  .pin_mode("OOOOOOO"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(7'b1_1_1_1_1_1_1),
		  .sio_ibuf(""),
		  .sio_info(14'b00_00_00_00_00_00_00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(7'b0_0_0_0_0_0_0),
		  .spanning(0),
		  .use_annotation(7'b0_0_0_0_0_0_0),
		  .vtrip(14'b10_10_10_10_10_10_10),
		  .width(7),
		  .ovt_hyst_trim(7'b0_0_0_0_0_0_0),
		  .ovt_needed(7'b0_0_0_0_0_0_0),
		  .ovt_slew_control(14'b00_00_00_00_00_00_00),
		  .input_buffer_sel(14'b00_00_00_00_00_00_00))
		LCDPort
		 (.oe(tmpOE__LCDPort_net),
		  .y({7'b0}),
		  .fb({tmpFB_6__LCDPort_net[6:0]}),
		  .io({tmpIO_6__LCDPort_net[6:0]}),
		  .siovref(tmpSIOVREF__LCDPort_net),
		  .interrupt({tmpINTERRUPT_0__LCDPort_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__LCDPort_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{7'b1111111} : {7'b1111111};



endmodule

// Component: AMux_v1_80
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\AMux_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\AMux_v1_80\AMux_v1_80.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\AMux_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\AMux_v1_80\AMux_v1_80.v"
`endif

// Component: cy_analog_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`endif

// Component: demux_v1_10
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\demux_v1_10"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\demux_v1_10\demux_v1_10.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\demux_v1_10"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\demux_v1_10\demux_v1_10.v"
`endif

// Component: cy_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`endif

// Component: ZeroTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`endif

// VDAC8_v1_90(Data_Source=0, Initial_Value=100, Strobe_Mode=1, VDAC_Range=0, VDAC_Speed=2, Voltage=400, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=VDAC8_v1_90, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=WaveDAC_1:VDAC8, CY_INSTANCE_SHORT_NAME=VDAC8, CY_MAJOR_VERSION=1, CY_MINOR_VERSION=90, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP2, INSTANCE_NAME=WaveDAC_1_VDAC8, )
module VDAC8_v1_90_1 (
    strobe,
    data,
    vOut);
    input       strobe;
    input      [7:0] data;
    inout       vOut;
    electrical  vOut;

    parameter Data_Source = 0;
    parameter Initial_Value = 100;
    parameter Strobe_Mode = 1;

    electrical  Net_77;
          wire  Net_83;
          wire  Net_82;
          wire  Net_81;

    cy_psoc3_vidac8_v1_0 viDAC8 (
        .reset(Net_83),
        .idir(Net_81),
        .data(data[7:0]),
        .strobe(strobe),
        .vout(vOut),
        .iout(Net_77),
        .ioff(Net_82),
        .strobe_udb(strobe));
    defparam viDAC8.is_all_if_any = 0;
    defparam viDAC8.reg_data = 0;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_81));

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_82));

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_83));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_77));



endmodule

// Component: or_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0\or_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\or_v1_0\or_v1_0.v"
`endif

// Component: cydff_v1_30
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cydff_v1_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cydff_v1_30\cydff_v1_30.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cydff_v1_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cydff_v1_30\cydff_v1_30.v"
`endif

// WaveDAC8_v2_10(Clock_SRC=0, DAC_Range=0, DacModeReplString=VDAC8, Sample_Clock_Freq=100000, Wave1_Amplitude=1, Wave1_Data=128u,135u,143u,151u,159u,166u,174u,181u,188u,194u,201u,207u,213u,219u,224u,229u,233u,237u,241u,244u,246u,249u,250u,252u,252u,252u,252u,252u,250u,249u,246u,244u,241u,237u,233u,229u,224u,219u,213u,207u,201u,194u,188u,181u,174u,166u,159u,151u,143u,135u,128u,120u,112u,104u,96u,89u,81u,74u,67u,61u,54u,48u,42u,36u,31u,26u,22u,18u,14u,11u,9u,6u,5u,3u,3u,3u,3u,3u,5u,6u,9u,11u,14u,18u,22u,26u,31u,36u,42u,48u,54u,61u,67u,74u,81u,89u,96u,104u,112u,120u, Wave1_DCOffset=0.51, Wave1_Length=100, Wave1_PhaseShift=0, Wave1_Type=0, Wave2_Amplitude=1, Wave2_Data=128u,132u,138u,143u,148u,152u,158u,162u,168u,172u,178u,182u,188u,192u,198u,202u,208u,213u,218u,222u,228u,232u,238u,242u,248u,252u,248u,242u,238u,232u,228u,222u,218u,212u,208u,202u,198u,192u,188u,182u,178u,173u,168u,162u,158u,152u,148u,143u,138u,132u,128u,122u,118u,112u,107u,102u,97u,93u,88u,83u,78u,73u,68u,62u,57u,52u,47u,42u,37u,33u,28u,23u,18u,13u,8u,3u,8u,13u,18u,23u,28u,33u,37u,42u,47u,52u,57u,62u,68u,73u,78u,83u,88u,93u,97u,102u,107u,112u,118u,122u, Wave2_DCOffset=0.51, Wave2_Length=100, Wave2_PhaseShift=0, Wave2_Type=2, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=WaveDAC8_v2_10, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=WaveDAC_1, CY_INSTANCE_SHORT_NAME=WaveDAC_1, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=10, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP2, INSTANCE_NAME=WaveDAC_1, )
module WaveDAC8_v2_10_2 (
    Wave,
    ws,
    clock,
    wc1,
    wc2);
    inout       Wave;
    electrical  Wave;
    input       ws;
    input       clock;
    output      wc1;
    output      wc2;


          wire  Net_280;
    electrical  Net_273;
          wire  Net_202;
          wire  Net_201;
          wire [7:0] Net_171;
          wire [7:0] Net_170;
          wire  Net_339;
          wire  Net_341;
          wire  Net_153;
    electrical  Net_211;
          wire  Net_134;
          wire  Net_107;
          wire  Net_183;
          wire  Net_336;
          wire  Net_279;
          wire  Net_80;
    electrical  Net_247;
    electrical  Net_254;
    electrical  Net_256;
    electrical  Net_190;
    electrical  Net_189;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_211));

	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(Net_189, Net_256);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

	// cy_analog_virtualmux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_2_connect(Net_190, Net_211);
	defparam cy_analog_virtualmux_2_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_2 (
        .noconnect(Net_254));


	cy_dma_v1_0
		#(.drq_type(2'b10))
		Wave1_DMA
		 (.drq(Net_183),
		  .trq(1'b0),
		  .nrq(wc1));



	cy_dma_v1_0
		#(.drq_type(2'b10))
		Wave2_DMA
		 (.drq(Net_107),
		  .trq(1'b0),
		  .nrq(wc2));


    // -- De Mux start --
    if (1)
    begin : demux
        reg  tmp__demux_0_reg;
        reg  tmp__demux_1_reg;
        always @(Net_336 or Net_134)
        begin
            case (Net_134)
                1'b0:
                begin
                    tmp__demux_0_reg = Net_336;
                    tmp__demux_1_reg = 1'b0;
                end
                1'b1:
                begin
                    tmp__demux_0_reg = 1'b0;
                    tmp__demux_1_reg = Net_336;
                end
            endcase
        end
        assign Net_183 = tmp__demux_0_reg;
        assign Net_107 = tmp__demux_1_reg;
    end
    // -- De Mux end --

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_336 = clock;

    VDAC8_v1_90_1 VDAC8 (
        .strobe(Net_336),
        .data(8'b00000000),
        .vOut(Net_189));
    defparam VDAC8.Data_Source = 0;
    defparam VDAC8.Initial_Value = 100;
    defparam VDAC8.Strobe_Mode = 1;

	// cy_analog_virtualmux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_3_connect(Wave, Net_256);
	defparam cy_analog_virtualmux_3_connect.sig_width = 1;


    assign Net_280 = Net_279 | Net_80;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_80));

    // -- DFF Start --
    reg  cydff_1;
    always @(posedge Net_336)
    begin
        cydff_1 <= ws;
    end
    assign Net_134 = cydff_1;
    // -- DFF End --



endmodule

// USBFS_v3_0(AudioDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Audio">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, CDCDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="CDC">\r\n      <Nodes>\r\n        <DescriptorNode Key="Interface60">\r\n          <m_value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>ALTERNATE</bDescriptorType>\r\n            <bLength>0</bLength>\r\n            <DisplayName>CDC Interface 1</DisplayName>\r\n          </m_value>\r\n          <Value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>ALTERNATE</bDescriptorType>\r\n            <bLength>0</bLength>\r\n            <DisplayName>CDC Interface 1</DisplayName>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor61">\r\n              <m_value d8p1:type="CyCommunicationsInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>INTERFACE</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwInterface>49</iwInterface>\r\n                <bInterfaceClass>2</bInterfaceClass>\r\n                <bAlternateSetting>0</bAlternateSetting>\r\n                <bInterfaceNumber>0</bInterfaceNumber>\r\n                <bNumEndpoints>1</bNumEndpoints>\r\n                <bInterfaceSubClass>2</bInterfaceSubClass>\r\n                <bInterfaceProtocol>1</bInterfaceProtocol>\r\n                <iInterface>3</iInterface>\r\n                <sInterface>CDC Communication Interface</sInterface>\r\n              </m_value>\r\n              <Value d8p1:type="CyCommunicationsInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>INTERFACE</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwInterface>49</iwInterface>\r\n                <bInterfaceClass>2</bInterfaceClass>\r\n                <bAlternateSetting>0</bAlternateSetting>\r\n                <bInterfaceNumber>0</bInterfaceNumber>\r\n                <bNumEndpoints>1</bNumEndpoints>\r\n                <bInterfaceSubClass>2</bInterfaceSubClass>\r\n                <bInterfaceProtocol>1</bInterfaceProtocol>\r\n                <iInterface>3</iInterface>\r\n                <sInterface>CDC Communication Interface</sInterface>\r\n              </Value>\r\n              <Nodes>\r\n                <DescriptorNode Key="USBDescriptor63">\r\n                  <m_value d10p1:type="CyCDCHeaderDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>HEADER</bDescriptorSubtype>\r\n                    <bcdADC>272</bcdADC>\r\n                  </m_value>\r\n                  <Value d10p1:type="CyCDCHeaderDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>HEADER</bDescriptorSubtype>\r\n                    <bcdADC>272</bcdADC>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor64">\r\n                  <m_value d10p1:type="CyCDCAbstractControlMgmtDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>4</bLength>\r\n                    <bDescriptorSubtype>ABSTRACT_CONTROL_MANAGEMENT</bDescriptorSubtype>\r\n                    <bmCapabilities>2</bmCapabilities>\r\n                  </m_value>\r\n                  <Value d10p1:type="CyCDCAbstractControlMgmtDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>4</bLength>\r\n                    <bDescriptorSubtype>ABSTRACT_CONTROL_MANAGEMENT</bDescriptorSubtype>\r\n                    <bmCapabilities>2</bmCapabilities>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor65">\r\n                  <m_value d10p1:type="CyCDCUnionDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>UNION</bDescriptorSubtype>\r\n                    <bSubordinateInterface>AQ==</bSubordinateInterface>\r\n                  </m_value>\r\n                  <Value d10p1:type="CyCDCUnionDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>UNION</bDescriptorSubtype>\r\n                    <bSubordinateInterface>AQ==</bSubordinateInterface>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor66">\r\n                  <m_value d10p1:type="CyCDCCallManagementDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>CALL_MANAGEMENT</bDescriptorSubtype>\r\n                    <bDataInterface>1</bDataInterface>\r\n                  </m_value>\r\n                  <Value d10p1:type="CyCDCCallManagementDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>CDC</bDescriptorType>\r\n                    <bLength>5</bLength>\r\n                    <bDescriptorSubtype>CALL_MANAGEMENT</bDescriptorSubtype>\r\n                    <bDataInterface>1</bDataInterface>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor67">\r\n                  <m_value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>129</bEndpointAddress>\r\n                    <bmAttributes>3</bmAttributes>\r\n                  </m_value>\r\n                  <Value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>129</bEndpointAddress>\r\n                    <bmAttributes>3</bmAttributes>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n              </Nodes>\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="Interface68">\r\n          <m_value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>ALTERNATE</bDescriptorType>\r\n            <bLength>0</bLength>\r\n            <DisplayName>CDC Interface 2</DisplayName>\r\n          </m_value>\r\n          <Value d6p1:type="InterfaceGeneralDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>ALTERNATE</bDescriptorType>\r\n            <bLength>0</bLength>\r\n            <DisplayName>CDC Interface 2</DisplayName>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor69">\r\n              <m_value d8p1:type="CyDataInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>INTERFACE</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwInterface>50</iwInterface>\r\n                <bInterfaceClass>10</bInterfaceClass>\r\n                <bAlternateSetting>0</bAlternateSetting>\r\n                <bInterfaceNumber>1</bInterfaceNumber>\r\n                <bNumEndpoints>2</bNumEndpoints>\r\n                <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                <iInterface>4</iInterface>\r\n                <sInterface>CDC Data Interface</sInterface>\r\n              </m_value>\r\n              <Value d8p1:type="CyDataInterfaceDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>INTERFACE</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwInterface>50</iwInterface>\r\n                <bInterfaceClass>10</bInterfaceClass>\r\n                <bAlternateSetting>0</bAlternateSetting>\r\n                <bInterfaceNumber>1</bInterfaceNumber>\r\n                <bNumEndpoints>2</bNumEndpoints>\r\n                <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                <iInterface>4</iInterface>\r\n                <sInterface>CDC Data Interface</sInterface>\r\n              </Value>\r\n              <Nodes>\r\n                <DescriptorNode Key="USBDescriptor71">\r\n                  <m_value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>130</bEndpointAddress>\r\n                    <bmAttributes>2</bmAttributes>\r\n                    <wMaxPacketSize>64</wMaxPacketSize>\r\n                  </m_value>\r\n                  <Value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>130</bEndpointAddress>\r\n                    <bmAttributes>2</bmAttributes>\r\n                    <wMaxPacketSize>64</wMaxPacketSize>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="USBDescriptor72">\r\n                  <m_value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>3</bEndpointAddress>\r\n                    <bmAttributes>2</bmAttributes>\r\n                    <wMaxPacketSize>64</wMaxPacketSize>\r\n                  </m_value>\r\n                  <Value d10p1:type="EndpointDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                    <bLength>7</bLength>\r\n                    <DoubleBuffer>false</DoubleBuffer>\r\n                    <bEndpointAddress>3</bEndpointAddress>\r\n                    <bmAttributes>2</bmAttributes>\r\n                    <wMaxPacketSize>64</wMaxPacketSize>\r\n                  </Value>\r\n                  <Nodes />\r\n                </DescriptorNode>\r\n              </Nodes>\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, DeviceDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Device">\r\n      <Nodes>\r\n        <DescriptorNode Key="USBDescriptor51">\r\n          <m_value d6p1:type="DeviceDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>DEVICE</bDescriptorType>\r\n            <bLength>18</bLength>\r\n            <iwManufacturer>47</iwManufacturer>\r\n            <iwProduct>48</iwProduct>\r\n            <sManufacturer>Cypress Semiconductor</sManufacturer>\r\n            <sProduct>USBUART</sProduct>\r\n            <sSerialNumber />\r\n            <bDeviceClass>2</bDeviceClass>\r\n            <bDeviceSubClass>0</bDeviceSubClass>\r\n            <bDeviceProtocol>0</bDeviceProtocol>\r\n            <bMaxPacketSize0>0</bMaxPacketSize0>\r\n            <idVendor>1204</idVendor>\r\n            <idProduct>62002</idProduct>\r\n            <bcdDevice>1</bcdDevice>\r\n            <bcdUSB>512</bcdUSB>\r\n            <iManufacturer>1</iManufacturer>\r\n            <iProduct>2</iProduct>\r\n            <iSerialNumber>0</iSerialNumber>\r\n            <bNumConfigurations>1</bNumConfigurations>\r\n            <bMemoryMgmt>0</bMemoryMgmt>\r\n            <bMemoryAlloc>0</bMemoryAlloc>\r\n          </m_value>\r\n          <Value d6p1:type="DeviceDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>DEVICE</bDescriptorType>\r\n            <bLength>18</bLength>\r\n            <iwManufacturer>47</iwManufacturer>\r\n            <iwProduct>48</iwProduct>\r\n            <sManufacturer>Cypress Semiconductor</sManufacturer>\r\n            <sProduct>USBUART</sProduct>\r\n            <sSerialNumber />\r\n            <bDeviceClass>2</bDeviceClass>\r\n            <bDeviceSubClass>0</bDeviceSubClass>\r\n            <bDeviceProtocol>0</bDeviceProtocol>\r\n            <bMaxPacketSize0>0</bMaxPacketSize0>\r\n            <idVendor>1204</idVendor>\r\n            <idProduct>62002</idProduct>\r\n            <bcdDevice>1</bcdDevice>\r\n            <bcdUSB>512</bcdUSB>\r\n            <iManufacturer>1</iManufacturer>\r\n            <iProduct>2</iProduct>\r\n            <iSerialNumber>0</iSerialNumber>\r\n            <bNumConfigurations>1</bNumConfigurations>\r\n            <bMemoryMgmt>0</bMemoryMgmt>\r\n            <bMemoryAlloc>0</bMemoryAlloc>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor56">\r\n              <m_value d8p1:type="ConfigDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>CONFIGURATION</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwConfiguration>47</iwConfiguration>\r\n                <sConfiguration>Cypress Semiconductor</sConfiguration>\r\n                <wTotalLength>67</wTotalLength>\r\n                <bNumInterfaces>2</bNumInterfaces>\r\n                <bConfigurationValue>0</bConfigurationValue>\r\n                <iConfiguration>1</iConfiguration>\r\n                <bmAttributes>128</bmAttributes>\r\n                <bMaxPower>50</bMaxPower>\r\n              </m_value>\r\n              <Value d8p1:type="ConfigDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>CONFIGURATION</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwConfiguration>47</iwConfiguration>\r\n                <sConfiguration>Cypress Semiconductor</sConfiguration>\r\n                <wTotalLength>67</wTotalLength>\r\n                <bNumInterfaces>2</bNumInterfaces>\r\n                <bConfigurationValue>0</bConfigurationValue>\r\n                <iConfiguration>1</iConfiguration>\r\n                <bmAttributes>128</bmAttributes>\r\n                <bMaxPower>50</bMaxPower>\r\n              </Value>\r\n              <Nodes>\r\n                <DescriptorNode Key="Interface60">\r\n                  <m_value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName>CDC Interface 1</DisplayName>\r\n                  </m_value>\r\n                  <Value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName>CDC Interface 1</DisplayName>\r\n                  </Value>\r\n                  <Nodes>\r\n                    <DescriptorNode Key="USBDescriptor61">\r\n                      <m_value d12p1:type="CyCommunicationsInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>49</iwInterface>\r\n                        <bInterfaceClass>2</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>0</bInterfaceNumber>\r\n                        <bNumEndpoints>1</bNumEndpoints>\r\n                        <bInterfaceSubClass>2</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>1</bInterfaceProtocol>\r\n                        <iInterface>3</iInterface>\r\n                        <sInterface>CDC Communication Interface</sInterface>\r\n                      </m_value>\r\n                      <Value d12p1:type="CyCommunicationsInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>49</iwInterface>\r\n                        <bInterfaceClass>2</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>0</bInterfaceNumber>\r\n                        <bNumEndpoints>1</bNumEndpoints>\r\n                        <bInterfaceSubClass>2</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>1</bInterfaceProtocol>\r\n                        <iInterface>3</iInterface>\r\n                        <sInterface>CDC Communication Interface</sInterface>\r\n                      </Value>\r\n                      <Nodes>\r\n                        <DescriptorNode Key="USBDescriptor63">\r\n                          <m_value d14p1:type="CyCDCHeaderDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>HEADER</bDescriptorSubtype>\r\n                            <bcdADC>272</bcdADC>\r\n                          </m_value>\r\n                          <Value d14p1:type="CyCDCHeaderDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>HEADER</bDescriptorSubtype>\r\n                            <bcdADC>272</bcdADC>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor64">\r\n                          <m_value d14p1:type="CyCDCAbstractControlMgmtDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>4</bLength>\r\n                            <bDescriptorSubtype>ABSTRACT_CONTROL_MANAGEMENT</bDescriptorSubtype>\r\n                            <bmCapabilities>2</bmCapabilities>\r\n                          </m_value>\r\n                          <Value d14p1:type="CyCDCAbstractControlMgmtDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>4</bLength>\r\n                            <bDescriptorSubtype>ABSTRACT_CONTROL_MANAGEMENT</bDescriptorSubtype>\r\n                            <bmCapabilities>2</bmCapabilities>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor65">\r\n                          <m_value d14p1:type="CyCDCUnionDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>UNION</bDescriptorSubtype>\r\n                            <bSubordinateInterface>AQ==</bSubordinateInterface>\r\n                          </m_value>\r\n                          <Value d14p1:type="CyCDCUnionDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>UNION</bDescriptorSubtype>\r\n                            <bSubordinateInterface>AQ==</bSubordinateInterface>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor66">\r\n                          <m_value d14p1:type="CyCDCCallManagementDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>CALL_MANAGEMENT</bDescriptorSubtype>\r\n                            <bDataInterface>1</bDataInterface>\r\n                          </m_value>\r\n                          <Value d14p1:type="CyCDCCallManagementDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>CDC</bDescriptorType>\r\n                            <bLength>5</bLength>\r\n                            <bDescriptorSubtype>CALL_MANAGEMENT</bDescriptorSubtype>\r\n                            <bDataInterface>1</bDataInterface>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor67">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>129</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>129</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                      </Nodes>\r\n                    </DescriptorNode>\r\n                  </Nodes>\r\n                </DescriptorNode>\r\n                <DescriptorNode Key="Interface68">\r\n                  <m_value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName>CDC Interface 2</DisplayName>\r\n                  </m_value>\r\n                  <Value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName>CDC Interface 2</DisplayName>\r\n                  </Value>\r\n                  <Nodes>\r\n                    <DescriptorNode Key="USBDescriptor69">\r\n                      <m_value d12p1:type="CyDataInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>50</iwInterface>\r\n                        <bInterfaceClass>10</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>1</bInterfaceNumber>\r\n                        <bNumEndpoints>2</bNumEndpoints>\r\n                        <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                        <iInterface>4</iInterface>\r\n                        <sInterface>CDC Data Interface</sInterface>\r\n                      </m_value>\r\n                      <Value d12p1:type="CyDataInterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>50</iwInterface>\r\n                        <bInterfaceClass>10</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>1</bInterfaceNumber>\r\n                        <bNumEndpoints>2</bNumEndpoints>\r\n                        <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                        <iInterface>4</iInterface>\r\n                        <sInterface>CDC Data Interface</sInterface>\r\n                      </Value>\r\n                      <Nodes>\r\n                        <DescriptorNode Key="USBDescriptor71">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>130</bEndpointAddress>\r\n                            <bmAttributes>2</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>130</bEndpointAddress>\r\n                            <bmAttributes>2</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor72">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>3</bEndpointAddress>\r\n                            <bmAttributes>2</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>3</bEndpointAddress>\r\n                            <bmAttributes>2</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                      </Nodes>\r\n                    </DescriptorNode>\r\n                  </Nodes>\r\n                </DescriptorNode>\r\n              </Nodes>\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, DmaChannelPriority=3, DW_Hide_DmaAuto=true, DW_Hide_Usbv2Regs=true, DW_RegSize=8, DW_USB_CHGDET_CTRL=CR0, DW_USB_INTR_CAUSE_HI=CR0, DW_USB_INTR_CAUSE_LO=CR0, DW_USB_INTR_CAUSE_MED=CR0, DW_USB_INTR_LVL_SEL=CR0, DW_USB_INTR_SIE=CR0, DW_USB_INTR_SIE_MASK=CR0, DW_USB_LPM_CTRL=CR0, DW_USB_LPM_STAT=CR0, DW_USB_POWER_CTRL=CR0, EnableBatteryChargDetect=false, EnableCDCApi=true, EnableMidiApi=true, endpointMA=0, endpointMM=0, epDMAautoOptimization=false, extern_cls=false, extern_vbus=false, extern_vnd=false, extJackCount=0, Gen16bitEpAccessApi=true, HandleMscRequests=true, HIDReportDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="HIDReport">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, isrGroupArbiter=0, isrGroupBusReset=2, isrGroupEp0=1, isrGroupEp1=1, isrGroupEp2=1, isrGroupEp3=1, isrGroupEp4=1, isrGroupEp5=1, isrGroupEp6=1, isrGroupEp7=1, isrGroupEp8=1, isrGroupLpm=0, isrGroupSof=2, M0S8USBDSS_BLOCK_COUNT_1=0, max_interfaces_num=2, MidiDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Midi">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, Mode=false, mon_vbus=false, MscDescriptors=, MscLogicalUnitsNum=1, out_sof=false, Pid=F232, powerpad_vbus=false, PRIMITIVE_INSTANCE=USB, ProdactName=, ProdactRevision=, REG_SIZE=reg8, RemoveDmaAutoOpt=true, RemoveVbusPin=true, rm_arb_int=false, rm_dma_1=true, rm_dma_2=true, rm_dma_3=true, rm_dma_4=true, rm_dma_5=true, rm_dma_6=true, rm_dma_7=true, rm_dma_8=true, rm_dp_int=false, rm_ep_isr_0=false, rm_ep_isr_1=false, rm_ep_isr_2=false, rm_ep_isr_3=false, rm_ep_isr_4=true, rm_ep_isr_5=true, rm_ep_isr_6=true, rm_ep_isr_7=true, rm_ep_isr_8=true, rm_lpm_int=true, rm_ord_int=true, rm_sof_int=false, rm_usb_int=false, SofTermEnable=false, StringDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_0">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="String">\r\n      <Nodes>\r\n        <DescriptorNode Key="LANGID">\r\n          <m_value d6p1:type="StringZeroDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>4</bLength>\r\n            <wLANGID>1033</wLANGID>\r\n          </m_value>\r\n          <Value d6p1:type="StringZeroDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>4</bLength>\r\n            <wLANGID>1033</wLANGID>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor47">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>44</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Cypress Semiconductor</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>44</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Cypress Semiconductor</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor48">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>USBUART</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>USBUART</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor49">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>56</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>CDC Communication Interface</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>56</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>CDC Communication Interface</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor50">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>38</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>CDC Data Interface</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>38</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>CDC Data Interface</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n    <DescriptorNode Key="SpecialString">\r\n      <Nodes>\r\n        <DescriptorNode Key="Serial">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>2</bLength>\r\n            <snType>SILICON_NUMBER</snType>\r\n            <bString />\r\n            <bUsed>true</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>2</bLength>\r\n            <snType>SILICON_NUMBER</snType>\r\n            <bString />\r\n            <bUsed>true</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="EE">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>MSFT100</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>MSFT100</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, UINT_TYPE=uint8, VbusDetectTermEnable=false, VendorName=, Vid=04B4, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=USBFS_v3_0, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=USBUART, CY_INSTANCE_SHORT_NAME=USBUART, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=0, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP2, INSTANCE_NAME=USBUART, )
module USBFS_v3_0_3 (
    sof,
    vbusdet);
    output      sof;
    input       vbusdet;

    parameter epDMAautoOptimization = 0;

          wire  Net_1914;
          wire  Net_1915;
          wire  Net_1916;
          wire  Net_1917;
          wire  Net_1918;
          wire  Net_1919;
          wire [7:0] dma_request;
          wire  Net_1920;
          wire  Net_1921;
          wire  Net_1922;
          wire [7:0] Net_2039;
          wire  Net_2038;
          wire  Net_2037;
          wire  EPs_1_to_7_dma_complete;
          wire  Net_2036;
          wire  Net_2035;
          wire  Net_2034;
          wire  Net_2033;
          wire  Net_2032;
          wire  Net_2031;
          wire  Net_2030;
          wire  Net_2029;
          wire  Net_2028;
          wire  Net_2027;
          wire  Net_2026;
          wire  Net_2025;
          wire  Net_2024;
          wire [7:0] Net_1940;
          wire  Net_1939;
          wire  Net_1938;
          wire  Net_1937;
          wire  Net_1936;
          wire  Net_1935;
          wire  Net_1934;
          wire  Net_1933;
          wire  Net_1932;
          wire  Net_2047;
          wire  Net_1202;
          wire  dma_terminate;
          wire [7:0] Net_2040;
          wire  Net_1010;
    electrical  Net_1000;
    electrical  Net_597;
          wire  Net_1495;
          wire  Net_1498;
          wire  Net_1559;
          wire  Net_1567;
          wire  Net_1576;
          wire  Net_1579;
          wire  Net_1591;
          wire [7:0] dma_complete;
          wire  Net_1588;
          wire  Net_1876;
          wire [8:0] ep_int;
          wire  Net_1889;
          wire  busClk;
          wire  Net_95;


	cy_isr_v1_0
		#(.int_type(2'b10))
		dp_int
		 (.int_signal(Net_1010));


	wire [0:0] tmpOE__Dm_net;
	wire [0:0] tmpFB_0__Dm_net;
	wire [0:0] tmpIO_0__Dm_net;
	wire [0:0] tmpINTERRUPT_0__Dm_net;
	electrical [0:0] tmpSIOVREF__Dm_net;

	cy_psoc3_pins_v1_10
		#(.id("beca5e2d-f70f-4900-a4db-7eca1ed3126e/8b77a6c4-10a0-4390-971c-672353e2a49c"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("NONCONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(1),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Dm
		 (.oe(tmpOE__Dm_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Dm_net[0:0]}),
		  .analog({Net_597}),
		  .io({tmpIO_0__Dm_net[0:0]}),
		  .siovref(tmpSIOVREF__Dm_net),
		  .interrupt({tmpINTERRUPT_0__Dm_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Dm_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Dp_net;
	wire [0:0] tmpFB_0__Dp_net;
	wire [0:0] tmpIO_0__Dp_net;
	electrical [0:0] tmpSIOVREF__Dp_net;

	cy_psoc3_pins_v1_10
		#(.id("beca5e2d-f70f-4900-a4db-7eca1ed3126e/618a72fc-5ddd-4df5-958f-a3d55102db42"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b10),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Dp
		 (.oe(tmpOE__Dp_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Dp_net[0:0]}),
		  .analog({Net_1000}),
		  .io({tmpIO_0__Dp_net[0:0]}),
		  .siovref(tmpSIOVREF__Dp_net),
		  .interrupt({Net_1010}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Dp_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    cy_psoc3_usb_v1_0 USB (
        .dp(Net_1000),
        .dm(Net_597),
        .sof_int(sof),
        .arb_int(Net_1889),
        .usb_int(Net_1876),
        .ept_int(ep_int[8:0]),
        .ord_int(Net_95),
        .dma_req(dma_request[7:0]),
        .dma_termin(dma_terminate));


	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_3
		 (.int_signal(ep_int[3]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_2
		 (.int_signal(ep_int[2]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_1
		 (.int_signal(ep_int[1]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_0
		 (.int_signal(ep_int[0]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		bus_reset
		 (.int_signal(Net_1876));



	cy_isr_v1_0
		#(.int_type(2'b10))
		arb_int
		 (.int_signal(Net_1889));



	cy_isr_v1_0
		#(.int_type(2'b10))
		sof_int
		 (.int_signal(sof));


	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign dma_complete[0] = Net_1922;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_1922));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign dma_complete[1] = Net_1921;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_1921));

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign dma_complete[2] = Net_1920;

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_1920));

	// VirtualMux_4 (cy_virtualmux_v1_0)
	assign dma_complete[3] = Net_1919;

    ZeroTerminal ZeroTerminal_4 (
        .z(Net_1919));

	// VirtualMux_5 (cy_virtualmux_v1_0)
	assign dma_complete[4] = Net_1918;

	// VirtualMux_6 (cy_virtualmux_v1_0)
	assign dma_complete[5] = Net_1917;

    ZeroTerminal ZeroTerminal_5 (
        .z(Net_1918));

    ZeroTerminal ZeroTerminal_6 (
        .z(Net_1917));

	// VirtualMux_7 (cy_virtualmux_v1_0)
	assign dma_complete[6] = Net_1916;

	// VirtualMux_8 (cy_virtualmux_v1_0)
	assign dma_complete[7] = Net_1915;

    ZeroTerminal ZeroTerminal_7 (
        .z(Net_1916));

    ZeroTerminal ZeroTerminal_8 (
        .z(Net_1915));



endmodule

// Component: cy_constant_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`endif

// VDAC8_v1_90(Data_Source=0, Initial_Value=100, Strobe_Mode=1, VDAC_Range=0, VDAC_Speed=2, Voltage=400, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=VDAC8_v1_90, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=WaveDAC_0:VDAC8, CY_INSTANCE_SHORT_NAME=VDAC8, CY_MAJOR_VERSION=1, CY_MINOR_VERSION=90, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP2, INSTANCE_NAME=WaveDAC_0_VDAC8, )
module VDAC8_v1_90_4 (
    strobe,
    data,
    vOut);
    input       strobe;
    input      [7:0] data;
    inout       vOut;
    electrical  vOut;

    parameter Data_Source = 0;
    parameter Initial_Value = 100;
    parameter Strobe_Mode = 1;

    electrical  Net_77;
          wire  Net_83;
          wire  Net_82;
          wire  Net_81;

    cy_psoc3_vidac8_v1_0 viDAC8 (
        .reset(Net_83),
        .idir(Net_81),
        .data(data[7:0]),
        .strobe(strobe),
        .vout(vOut),
        .iout(Net_77),
        .ioff(Net_82),
        .strobe_udb(strobe));
    defparam viDAC8.is_all_if_any = 0;
    defparam viDAC8.reg_data = 0;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_81));

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_82));

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_83));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_77));



endmodule

// WaveDAC8_v2_10(Clock_SRC=0, DAC_Range=0, DacModeReplString=VDAC8, Sample_Clock_Freq=250000, Wave1_Amplitude=1, Wave1_Data=128u,128u,128u,128u,128u,128u,129u,129u,129u,129u,129u,130u,130u,130u,130u,130u,131u,131u,131u,131u,131u,132u,132u,132u,132u,132u,133u,133u,133u,133u,133u,134u,134u,134u,134u,134u,135u,135u,135u,135u,135u,136u,136u,136u,136u,136u,137u,137u,137u,137u,137u,138u,138u,138u,138u,138u,138u,139u,139u,139u,139u,139u,140u,140u,140u,140u,140u,141u,141u,141u,141u,141u,142u,142u,142u,142u,142u,143u,143u,143u,143u,143u,144u,144u,144u,144u,144u,145u,145u,145u,145u,145u,146u,146u,146u,146u,146u,146u,147u,147u,147u,147u,147u,148u,148u,148u,148u,148u,149u,149u,149u,149u,149u,150u,150u,150u,150u,150u,151u,151u,151u,151u,151u,152u,152u,152u,152u,152u,152u,153u,153u,153u,153u,153u,154u,154u,154u,154u,154u,155u,155u,155u,155u,155u,156u,156u,156u,156u,156u,156u,157u,157u,157u,157u,157u,158u,158u,158u,158u,158u,159u,159u,159u,159u,159u,160u,160u,160u,160u,160u,160u,161u,161u,161u,161u,161u,162u,162u,162u,162u,162u,163u,163u,163u,163u,163u,164u,164u,164u,164u,164u,164u,165u,165u,165u,165u,165u,166u,166u,166u,166u,166u,167u,167u,167u,167u,167u,167u,168u,168u,168u,168u,168u,169u,169u,169u,169u,169u,169u,170u,170u,170u,170u,170u,171u,171u,171u,171u,171u,172u,172u,172u,172u,172u,172u,173u,173u,173u,173u,173u,174u,174u,174u,174u,174u,174u,175u,175u,175u,175u,175u,176u,176u,176u,176u,176u,176u,177u,177u,177u,177u,177u,178u,178u,178u,178u,178u,178u,179u,179u,179u,179u,179u,179u,180u,180u,180u,180u,180u,181u,181u,181u,181u,181u,181u,182u,182u,182u,182u,182u,182u,183u,183u,183u,183u,183u,184u,184u,184u,184u,184u,184u,185u,185u,185u,185u,185u,185u,186u,186u,186u,186u,186u,187u,187u,187u,187u,187u,187u,188u,188u,188u,188u,188u,188u,189u,189u,189u,189u,189u,189u,190u,190u,190u,190u,190u,190u,191u,191u,191u,191u,191u,191u,192u,192u,192u,192u,192u,192u,193u,193u,193u,193u,193u,193u,194u,194u,194u,194u,194u,194u,195u,195u,195u,195u,195u,195u,196u,196u,196u,196u,196u,196u,197u,197u,197u,197u,197u,197u,198u,198u,198u,198u,198u,198u,199u,199u,199u,199u,199u,199u,200u,200u,200u,200u,200u,200u,200u,201u,201u,201u,201u,201u,201u,202u,202u,202u,202u,202u,202u,203u,203u,203u,203u,203u,203u,203u,204u,204u,204u,204u,204u,204u,205u,205u,205u,205u,205u,205u,206u,206u,206u,206u,206u,206u,206u,207u,207u,207u,207u,207u,207u,207u,208u,208u,208u,208u,208u,208u,209u,209u,209u,209u,209u,209u,209u,210u,210u,210u,210u,210u,210u,210u,211u,211u,211u,211u,211u,211u,211u,212u,212u,212u,212u,212u,212u,212u,213u,213u,213u,213u,213u,213u,213u,214u,214u,214u,214u,214u,214u,214u,215u,215u,215u,215u,215u,215u,215u,216u,216u,216u,216u,216u,216u,216u,217u,217u,217u,217u,217u,217u,217u,218u,218u,218u,218u,218u,218u,218u,218u,219u,219u,219u,219u,219u,219u,219u,220u,220u,220u,220u,220u,220u,220u,220u,221u,221u,221u,221u,221u,221u,221u,222u,222u,222u,222u,222u,222u,222u,222u,223u,223u,223u,223u,223u,223u,223u,223u,224u,224u,224u,224u,224u,224u,224u,224u,225u,225u,225u,225u,225u,225u,225u,225u,226u,226u,226u,226u,226u,226u,226u,226u,227u,227u,227u,227u,227u,227u,227u,227u,227u,228u,228u,228u,228u,228u,228u,228u,228u,229u,229u,229u,229u,229u,229u,229u,229u,229u,230u,230u,230u,230u,230u,230u,230u,230u,230u,231u,231u,231u,231u,231u,231u,231u,231u,231u,232u,232u,232u,232u,232u,232u,232u,232u,232u,233u,233u,233u,233u,233u,233u,233u,233u,233u,233u,234u,234u,234u,234u,234u,234u,234u,234u,234u,234u,235u,235u,235u,235u,235u,235u,235u,235u,235u,235u,236u,236u,236u,236u,236u,236u,236u,236u,236u,236u,237u,237u,237u,237u,237u,237u,237u,237u,237u,237u,238u,238u,238u,238u,238u,238u,238u,238u,238u,238u,238u,239u,239u,239u,239u,239u,239u,239u,239u,239u,239u,239u,239u,240u,240u,240u,240u,240u,240u,240u,240u,240u,240u,240u,241u,241u,241u,241u,241u,241u,241u,241u,241u,241u,241u,241u,242u,242u,242u,242u,242u,242u,242u,242u,242u,242u,242u,242u,242u,243u,243u,243u,243u,243u,243u,243u,243u,243u,243u,243u,243u,243u,244u,244u,244u,244u,244u,244u,244u,244u,244u,244u,244u,244u,244u,244u,244u,245u,245u,245u,245u,245u,245u,245u,245u,245u,245u,245u,245u,245u,245u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,247u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,246u,245u,245u,245u,245u,245u,245u,245u,245u,245u,245u,245u,245u,245u,245u,244u,244u,244u,244u,244u,244u,244u,244u,244u,244u,244u,244u,244u,244u,244u,243u,243u,243u,243u,243u,243u,243u,243u,243u,243u,243u,243u,243u,242u,242u,242u,242u,242u,242u,242u,242u,242u,242u,242u,242u,242u,241u,241u,241u,241u,241u,241u,241u,241u,241u,241u,241u,241u,240u,240u,240u,240u,240u,240u,240u,240u,240u,240u,240u,239u,239u,239u,239u,239u,239u,239u,239u,239u,239u,239u,239u,238u,238u,238u,238u,238u,238u,238u,238u,238u,238u,238u,237u,237u,237u,237u,237u,237u,237u,237u,237u,237u,236u,236u,236u,236u,236u,236u,236u,236u,236u,236u,235u,235u,235u,235u,235u,235u,235u,235u,235u,235u,234u,234u,234u,234u,234u,234u,234u,234u,234u,234u,233u,233u,233u,233u,233u,233u,233u,233u,233u,233u,232u,232u,232u,232u,232u,232u,232u,232u,232u,231u,231u,231u,231u,231u,231u,231u,231u,231u,230u,230u,230u,230u,230u,230u,230u,230u,230u,229u,229u,229u,229u,229u,229u,229u,229u,229u,228u,228u,228u,228u,228u,228u,228u,228u,227u,227u,227u,227u,227u,227u,227u,227u,227u,226u,226u,226u,226u,226u,226u,226u,226u,225u,225u,225u,225u,225u,225u,225u,225u,224u,224u,224u,224u,224u,224u,224u,224u,223u,223u,223u,223u,223u,223u,223u,223u,222u,222u,222u,222u,222u,222u,222u,222u,221u,221u,221u,221u,221u,221u,221u,220u,220u,220u,220u,220u,220u,220u,220u,219u,219u,219u,219u,219u,219u,219u,218u,218u,218u,218u,218u,218u,218u,218u,217u,217u,217u,217u,217u,217u,217u,216u,216u,216u,216u,216u,216u,216u,215u,215u,215u,215u,215u,215u,215u,214u,214u,214u,214u,214u,214u,214u,213u,213u,213u,213u,213u,213u,213u,212u,212u,212u,212u,212u,212u,212u,211u,211u,211u,211u,211u,211u,211u,210u,210u,210u,210u,210u,210u,210u,209u,209u,209u,209u,209u,209u,209u,208u,208u,208u,208u,208u,208u,207u,207u,207u,207u,207u,207u,207u,206u,206u,206u,206u,206u,206u,206u,205u,205u,205u,205u,205u,205u,204u,204u,204u,204u,204u,204u,203u,203u,203u,203u,203u,203u,203u,202u,202u,202u,202u,202u,202u,201u,201u,201u,201u,201u,201u,200u,200u,200u,200u,200u,200u,200u,199u,199u,199u,199u,199u,199u,198u,198u,198u,198u,198u,198u,197u,197u,197u,197u,197u,197u,196u,196u,196u,196u,196u,196u,195u,195u,195u,195u,195u,195u,194u,194u,194u,194u,194u,194u,193u,193u,193u,193u,193u,193u,192u,192u,192u,192u,192u,192u,191u,191u,191u,191u,191u,191u,190u,190u,190u,190u,190u,190u,189u,189u,189u,189u,189u,189u,188u,188u,188u,188u,188u,188u,187u,187u,187u,187u,187u,187u,186u,186u,186u,186u,186u,185u,185u,185u,185u,185u,185u,184u,184u,184u,184u,184u,184u,183u,183u,183u,183u,183u,182u,182u,182u,182u,182u,182u,181u,181u,181u,181u,181u,181u,180u,180u,180u,180u,180u,179u,179u,179u,179u,179u,179u,178u,178u,178u,178u,178u,178u,177u,177u,177u,177u,177u,176u,176u,176u,176u,176u,176u,175u,175u,175u,175u,175u,174u,174u,174u,174u,174u,174u,173u,173u,173u,173u,173u,172u,172u,172u,172u,172u,172u,171u,171u,171u,171u,171u,170u,170u,170u,170u,170u,169u,169u,169u,169u,169u,169u,168u,168u,168u,168u,168u,167u,167u,167u,167u,167u,167u,166u,166u,166u,166u,166u,165u,165u,165u,165u,165u,164u,164u,164u,164u,164u,164u,163u,163u,163u,163u,163u,162u,162u,162u,162u,162u,161u,161u,161u,161u,161u,160u,160u,160u,160u,160u,160u,159u,159u,159u,159u,159u,158u,158u,158u,158u,158u,157u,157u,157u,157u,157u,156u,156u,156u,156u,156u,156u,155u,155u,155u,155u,155u,154u,154u,154u,154u,154u,153u,153u,153u,153u,153u,152u,152u,152u,152u,152u,152u,151u,151u,151u,151u,151u,150u,150u,150u,150u,150u,149u,149u,149u,149u,149u,148u,148u,148u,148u,148u,147u,147u,147u,147u,147u,146u,146u,146u,146u,146u,146u,145u,145u,145u,145u,145u,144u,144u,144u,144u,144u,143u,143u,143u,143u,143u,142u,142u,142u,142u,142u,141u,141u,141u,141u,141u,140u,140u,140u,140u,140u,139u,139u,139u,139u,139u,138u,138u,138u,138u,138u,138u,137u,137u,137u,137u,137u,136u,136u,136u,136u,136u,135u,135u,135u,135u,135u,134u,134u,134u,134u,134u,133u,133u,133u,133u,133u,132u,132u,132u,132u,132u,131u,131u,131u,131u,131u,130u,130u,130u,130u,130u,129u,129u,129u,129u,129u,128u,128u,128u,128u,128u,128u,127u,127u,127u,127u,127u,126u,126u,126u,126u,126u,125u,125u,125u,125u,125u,124u,124u,124u,124u,124u,123u,123u,123u,123u,123u,122u,122u,122u,122u,122u,121u,121u,121u,121u,121u,120u,120u,120u,120u,120u,119u,119u,119u,119u,119u,118u,118u,118u,118u,118u,117u,117u,117u,117u,117u,117u,116u,116u,116u,116u,116u,115u,115u,115u,115u,115u,114u,114u,114u,114u,114u,113u,113u,113u,113u,113u,112u,112u,112u,112u,112u,111u,111u,111u,111u,111u,110u,110u,110u,110u,110u,109u,109u,109u,109u,109u,109u,108u,108u,108u,108u,108u,107u,107u,107u,107u,107u,106u,106u,106u,106u,106u,105u,105u,105u,105u,105u,104u,104u,104u,104u,104u,103u,103u,103u,103u,103u,103u,102u,102u,102u,102u,102u,101u,101u,101u,101u,101u,100u,100u,100u,100u,100u,99u,99u,99u,99u,99u,99u,98u,98u,98u,98u,98u,97u,97u,97u,97u,97u,96u,96u,96u,96u,96u,95u,95u,95u,95u,95u,95u,94u,94u,94u,94u,94u,93u,93u,93u,93u,93u,92u,92u,92u,92u,92u,91u,91u,91u,91u,91u,91u,90u,90u,90u,90u,90u,89u,89u,89u,89u,89u,88u,88u,88u,88u,88u,88u,87u,87u,87u,87u,87u,86u,86u,86u,86u,86u,86u,85u,85u,85u,85u,85u,84u,84u,84u,84u,84u,83u,83u,83u,83u,83u,83u,82u,82u,82u,82u,82u,81u,81u,81u,81u,81u,81u,80u,80u,80u,80u,80u,79u,79u,79u,79u,79u,79u,78u,78u,78u,78u,78u,77u,77u,77u,77u,77u,77u,76u,76u,76u,76u,76u,76u,75u,75u,75u,75u,75u,74u,74u,74u,74u,74u,74u,73u,73u,73u,73u,73u,73u,72u,72u,72u,72u,72u,71u,71u,71u,71u,71u,71u,70u,70u,70u,70u,70u,70u,69u,69u,69u,69u,69u,68u,68u,68u,68u,68u,68u,67u,67u,67u,67u,67u,67u,66u,66u,66u,66u,66u,66u,65u,65u,65u,65u,65u,65u,64u,64u,64u,64u,64u,64u,63u,63u,63u,63u,63u,63u,62u,62u,62u,62u,62u,62u,61u,61u,61u,61u,61u,61u,60u,60u,60u,60u,60u,60u,59u,59u,59u,59u,59u,59u,58u,58u,58u,58u,58u,58u,57u,57u,57u,57u,57u,57u,56u,56u,56u,56u,56u,56u,55u,55u,55u,55u,55u,55u,55u,54u,54u,54u,54u,54u,54u,53u,53u,53u,53u,53u,53u,52u,52u,52u,52u,52u,52u,52u,51u,51u,51u,51u,51u,51u,50u,50u,50u,50u,50u,50u,49u,49u,49u,49u,49u,49u,49u,48u,48u,48u,48u,48u,48u,48u,47u,47u,47u,47u,47u,47u,46u,46u,46u,46u,46u,46u,46u,45u,45u,45u,45u,45u,45u,45u,44u,44u,44u,44u,44u,44u,44u,43u,43u,43u,43u,43u,43u,43u,42u,42u,42u,42u,42u,42u,42u,41u,41u,41u,41u,41u,41u,41u,40u,40u,40u,40u,40u,40u,40u,39u,39u,39u,39u,39u,39u,39u,38u,38u,38u,38u,38u,38u,38u,37u,37u,37u,37u,37u,37u,37u,37u,36u,36u,36u,36u,36u,36u,36u,35u,35u,35u,35u,35u,35u,35u,35u,34u,34u,34u,34u,34u,34u,34u,33u,33u,33u,33u,33u,33u,33u,33u,32u,32u,32u,32u,32u,32u,32u,32u,31u,31u,31u,31u,31u,31u,31u,31u,30u,30u,30u,30u,30u,30u,30u,30u,29u,29u,29u,29u,29u,29u,29u,29u,28u,28u,28u,28u,28u,28u,28u,28u,28u,27u,27u,27u,27u,27u,27u,27u,27u,26u,26u,26u,26u,26u,26u,26u,26u,26u,25u,25u,25u,25u,25u,25u,25u,25u,25u,24u,24u,24u,24u,24u,24u,24u,24u,24u,23u,23u,23u,23u,23u,23u,23u,23u,23u,22u,22u,22u,22u,22u,22u,22u,22u,22u,22u,21u,21u,21u,21u,21u,21u,21u,21u,21u,21u,20u,20u,20u,20u,20u,20u,20u,20u,20u,20u,19u,19u,19u,19u,19u,19u,19u,19u,19u,19u,18u,18u,18u,18u,18u,18u,18u,18u,18u,18u,17u,17u,17u,17u,17u,17u,17u,17u,17u,17u,17u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,15u,15u,15u,15u,15u,15u,15u,15u,15u,15u,15u,14u,14u,14u,14u,14u,14u,14u,14u,14u,14u,14u,14u,13u,13u,13u,13u,13u,13u,13u,13u,13u,13u,13u,13u,13u,12u,12u,12u,12u,12u,12u,12u,12u,12u,12u,12u,12u,12u,11u,11u,11u,11u,11u,11u,11u,11u,11u,11u,11u,11u,11u,11u,11u,10u,10u,10u,10u,10u,10u,10u,10u,10u,10u,10u,10u,10u,10u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,8u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,9u,10u,10u,10u,10u,10u,10u,10u,10u,10u,10u,10u,10u,10u,10u,11u,11u,11u,11u,11u,11u,11u,11u,11u,11u,11u,11u,11u,11u,11u,12u,12u,12u,12u,12u,12u,12u,12u,12u,12u,12u,12u,12u,13u,13u,13u,13u,13u,13u,13u,13u,13u,13u,13u,13u,13u,14u,14u,14u,14u,14u,14u,14u,14u,14u,14u,14u,14u,15u,15u,15u,15u,15u,15u,15u,15u,15u,15u,15u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,16u,17u,17u,17u,17u,17u,17u,17u,17u,17u,17u,17u,18u,18u,18u,18u,18u,18u,18u,18u,18u,18u,19u,19u,19u,19u,19u,19u,19u,19u,19u,19u,20u,20u,20u,20u,20u,20u,20u,20u,20u,20u,21u,21u,21u,21u,21u,21u,21u,21u,21u,21u,22u,22u,22u,22u,22u,22u,22u,22u,22u,22u,23u,23u,23u,23u,23u,23u,23u,23u,23u,24u,24u,24u,24u,24u,24u,24u,24u,24u,25u,25u,25u,25u,25u,25u,25u,25u,25u,26u,26u,26u,26u,26u,26u,26u,26u,26u,27u,27u,27u,27u,27u,27u,27u,27u,28u,28u,28u,28u,28u,28u,28u,28u,28u,29u,29u,29u,29u,29u,29u,29u,29u,30u,30u,30u,30u,30u,30u,30u,30u,31u,31u,31u,31u,31u,31u,31u,31u,32u,32u,32u,32u,32u,32u,32u,32u,33u,33u,33u,33u,33u,33u,33u,33u,34u,34u,34u,34u,34u,34u,34u,35u,35u,35u,35u,35u,35u,35u,35u,36u,36u,36u,36u,36u,36u,36u,37u,37u,37u,37u,37u,37u,37u,37u,38u,38u,38u,38u,38u,38u,38u,39u,39u,39u,39u,39u,39u,39u,40u,40u,40u,40u,40u,40u,40u,41u,41u,41u,41u,41u,41u,41u,42u,42u,42u,42u,42u,42u,42u,43u,43u,43u,43u,43u,43u,43u,44u,44u,44u,44u,44u,44u,44u,45u,45u,45u,45u,45u,45u,45u,46u,46u,46u,46u,46u,46u,46u,47u,47u,47u,47u,47u,47u,48u,48u,48u,48u,48u,48u,48u,49u,49u,49u,49u,49u,49u,49u,50u,50u,50u,50u,50u,50u,51u,51u,51u,51u,51u,51u,52u,52u,52u,52u,52u,52u,52u,53u,53u,53u,53u,53u,53u,54u,54u,54u,54u,54u,54u,55u,55u,55u,55u,55u,55u,55u,56u,56u,56u,56u,56u,56u,57u,57u,57u,57u,57u,57u,58u,58u,58u,58u,58u,58u,59u,59u,59u,59u,59u,59u,60u,60u,60u,60u,60u,60u,61u,61u,61u,61u,61u,61u,62u,62u,62u,62u,62u,62u,63u,63u,63u,63u,63u,63u,64u,64u,64u,64u,64u,64u,65u,65u,65u,65u,65u,65u,66u,66u,66u,66u,66u,66u,67u,67u,67u,67u,67u,67u,68u,68u,68u,68u,68u,68u,69u,69u,69u,69u,69u,70u,70u,70u,70u,70u,70u,71u,71u,71u,71u,71u,71u,72u,72u,72u,72u,72u,73u,73u,73u,73u,73u,73u,74u,74u,74u,74u,74u,74u,75u,75u,75u,75u,75u,76u,76u,76u,76u,76u,76u,77u,77u,77u,77u,77u,77u,78u,78u,78u,78u,78u,79u,79u,79u,79u,79u,79u,80u,80u,80u,80u,80u,81u,81u,81u,81u,81u,81u,82u,82u,82u,82u,82u,83u,83u,83u,83u,83u,83u,84u,84u,84u,84u,84u,85u,85u,85u,85u,85u,86u,86u,86u,86u,86u,86u,87u,87u,87u,87u,87u,88u,88u,88u,88u,88u,88u,89u,89u,89u,89u,89u,90u,90u,90u,90u,90u,91u,91u,91u,91u,91u,91u,92u,92u,92u,92u,92u,93u,93u,93u,93u,93u,94u,94u,94u,94u,94u,95u,95u,95u,95u,95u,95u,96u,96u,96u,96u,96u,97u,97u,97u,97u,97u,98u,98u,98u,98u,98u,99u,99u,99u,99u,99u,99u,100u,100u,100u,100u,100u,101u,101u,101u,101u,101u,102u,102u,102u,102u,102u,103u,103u,103u,103u,103u,103u,104u,104u,104u,104u,104u,105u,105u,105u,105u,105u,106u,106u,106u,106u,106u,107u,107u,107u,107u,107u,108u,108u,108u,108u,108u,109u,109u,109u,109u,109u,109u,110u,110u,110u,110u,110u,111u,111u,111u,111u,111u,112u,112u,112u,112u,112u,113u,113u,113u,113u,113u,114u,114u,114u,114u,114u,115u,115u,115u,115u,115u,116u,116u,116u,116u,116u,117u,117u,117u,117u,117u,117u,118u,118u,118u,118u,118u,119u,119u,119u,119u,119u,120u,120u,120u,120u,120u,121u,121u,121u,121u,121u,122u,122u,122u,122u,122u,123u,123u,123u,123u,123u,124u,124u,124u,124u,124u,125u,125u,125u,125u,125u,126u,126u,126u,126u,126u,127u,127u,127u,127u,127u, Wave1_DCOffset=0.51, Wave1_Length=4000, Wave1_PhaseShift=0, Wave1_Type=0, Wave2_Amplitude=1, Wave2_Data=128u,128u,128u,129u,129u,129u,130u,130u,131u,131u,131u,132u,132u,133u,133u,133u,134u,134u,135u,135u,135u,136u,136u,137u,137u,137u,138u,138u,138u,139u,139u,140u,140u,140u,141u,141u,142u,142u,142u,143u,143u,144u,144u,144u,145u,145u,146u,146u,146u,147u,147u,147u,148u,148u,149u,149u,149u,150u,150u,151u,151u,151u,152u,152u,152u,153u,153u,154u,154u,154u,155u,155u,156u,156u,156u,157u,157u,157u,158u,158u,159u,159u,159u,160u,160u,160u,161u,161u,162u,162u,162u,163u,163u,164u,164u,164u,165u,165u,165u,166u,166u,167u,167u,167u,168u,168u,168u,169u,169u,169u,170u,170u,171u,171u,171u,172u,172u,172u,173u,173u,174u,174u,174u,175u,175u,175u,176u,176u,176u,177u,177u,178u,178u,178u,179u,179u,179u,180u,180u,180u,181u,181u,181u,182u,182u,182u,183u,183u,184u,184u,184u,185u,185u,185u,186u,186u,186u,187u,187u,187u,188u,188u,188u,189u,189u,189u,190u,190u,190u,191u,191u,191u,192u,192u,192u,193u,193u,193u,194u,194u,194u,195u,195u,195u,196u,196u,196u,197u,197u,197u,198u,198u,198u,199u,199u,199u,200u,200u,200u,201u,201u,201u,202u,202u,202u,203u,203u,203u,203u,204u,204u,204u,205u,205u,205u,206u,206u,206u,207u,207u,207u,207u,208u,208u,208u,209u,209u,209u,210u,210u,210u,210u,211u,211u,211u,212u,212u,212u,212u,213u,213u,213u,214u,214u,214u,214u,215u,215u,215u,216u,216u,216u,216u,217u,217u,217u,218u,218u,218u,218u,219u,219u,219u,219u,220u,220u,220u,220u,221u,221u,221u,222u,222u,222u,222u,223u,223u,223u,223u,224u,224u,224u,224u,225u,225u,225u,225u,226u,226u,226u,226u,227u,227u,227u,227u,227u,228u,228u,228u,228u,229u,229u,229u,229u,230u,230u,230u,230u,230u,231u,231u,231u,231u,232u,232u,232u,232u,232u,233u,233u,233u,233u,233u,234u,234u,234u,234u,234u,235u,235u,235u,235u,235u,236u,236u,236u,236u,236u,237u,237u,237u,237u,237u,238u,238u,238u,238u,238u,239u,239u,239u,239u,239u,239u,240u,240u,240u,240u,240u,240u,241u,241u,241u,241u,241u,241u,242u,242u,242u,242u,242u,242u,243u,243u,243u,243u,243u,243u,243u,244u,244u,244u,244u,244u,244u,244u,245u,245u,245u,245u,245u,245u,245u,246u,246u,246u,246u,246u,246u,246u,246u,247u,247u,247u,247u,247u,247u,247u,247u,247u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,252u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,251u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,250u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,249u,248u,248u,248u,248u,248u,248u,248u,248u,248u,248u,247u,247u,247u,247u,247u,247u,247u,247u,247u,246u,246u,246u,246u,246u,246u,246u,246u,245u,245u,245u,245u,245u,245u,245u,244u,244u,244u,244u,244u,244u,244u,243u,243u,243u,243u,243u,243u,243u,242u,242u,242u,242u,242u,242u,241u,241u,241u,241u,241u,241u,240u,240u,240u,240u,240u,240u,239u,239u,239u,239u,239u,239u,238u,238u,238u,238u,238u,237u,237u,237u,237u,237u,236u,236u,236u,236u,236u,235u,235u,235u,235u,235u,234u,234u,234u,234u,234u,233u,233u,233u,233u,233u,232u,232u,232u,232u,232u,231u,231u,231u,231u,230u,230u,230u,230u,230u,229u,229u,229u,229u,228u,228u,228u,228u,227u,227u,227u,227u,227u,226u,226u,226u,226u,225u,225u,225u,225u,224u,224u,224u,224u,223u,223u,223u,223u,222u,222u,222u,222u,221u,221u,221u,220u,220u,220u,220u,219u,219u,219u,219u,218u,218u,218u,218u,217u,217u,217u,216u,216u,216u,216u,215u,215u,215u,214u,214u,214u,214u,213u,213u,213u,212u,212u,212u,212u,211u,211u,211u,210u,210u,210u,210u,209u,209u,209u,208u,208u,208u,207u,207u,207u,207u,206u,206u,206u,205u,205u,205u,204u,204u,204u,203u,203u,203u,203u,202u,202u,202u,201u,201u,201u,200u,200u,200u,199u,199u,199u,198u,198u,198u,197u,197u,197u,196u,196u,196u,195u,195u,195u,194u,194u,194u,193u,193u,193u,192u,192u,192u,191u,191u,191u,190u,190u,190u,189u,189u,189u,188u,188u,188u,187u,187u,187u,186u,186u,186u,185u,185u,185u,184u,184u,184u,183u,183u,182u,182u,182u,181u,181u,181u,180u,180u,180u,179u,179u,179u,178u,178u,178u,177u,177u,176u,176u,176u,175u,175u,175u,174u,174u,174u,173u,173u,172u,172u,172u,171u,171u,171u,170u,170u,169u,169u,169u,168u,168u,168u,167u,167u,167u,166u,166u,165u,165u,165u,164u,164u,164u,163u,163u,162u,162u,162u,161u,161u,160u,160u,160u,159u,159u,159u,158u,158u,157u,157u,157u,156u,156u,156u,155u,155u,154u,154u,154u,153u,153u,152u,152u,152u,151u,151u,151u,150u,150u,149u,149u,149u,148u,148u,147u,147u,147u,146u,146u,146u,145u,145u,144u,144u,144u,143u,143u,142u,142u,142u,141u,141u,140u,140u,140u,139u,139u,138u,138u,138u,137u,137u,137u,136u,136u,135u,135u,135u,134u,134u,133u,133u,133u,132u,132u,131u,131u,131u,130u,130u,129u,129u,129u,128u,128u,128u,127u,127u,126u,126u,126u,125u,125u,124u,124u,124u,123u,123u,122u,122u,122u,121u,121u,120u,120u,120u,119u,119u,118u,118u,118u,117u,117u,117u,116u,116u,115u,115u,115u,114u,114u,113u,113u,113u,112u,112u,111u,111u,111u,110u,110u,109u,109u,109u,108u,108u,108u,107u,107u,106u,106u,106u,105u,105u,104u,104u,104u,103u,103u,103u,102u,102u,101u,101u,101u,100u,100u,99u,99u,99u,98u,98u,98u,97u,97u,96u,96u,96u,95u,95u,95u,94u,94u,93u,93u,93u,92u,92u,91u,91u,91u,90u,90u,90u,89u,89u,88u,88u,88u,87u,87u,87u,86u,86u,86u,85u,85u,84u,84u,84u,83u,83u,83u,82u,82u,81u,81u,81u,80u,80u,80u,79u,79u,79u,78u,78u,77u,77u,77u,76u,76u,76u,75u,75u,75u,74u,74u,74u,73u,73u,73u,72u,72u,71u,71u,71u,70u,70u,70u,69u,69u,69u,68u,68u,68u,67u,67u,67u,66u,66u,66u,65u,65u,65u,64u,64u,64u,63u,63u,63u,62u,62u,62u,61u,61u,61u,60u,60u,60u,59u,59u,59u,58u,58u,58u,57u,57u,57u,56u,56u,56u,55u,55u,55u,54u,54u,54u,53u,53u,53u,52u,52u,52u,52u,51u,51u,51u,50u,50u,50u,49u,49u,49u,48u,48u,48u,48u,47u,47u,47u,46u,46u,46u,45u,45u,45u,45u,44u,44u,44u,43u,43u,43u,43u,42u,42u,42u,41u,41u,41u,41u,40u,40u,40u,39u,39u,39u,39u,38u,38u,38u,37u,37u,37u,37u,36u,36u,36u,36u,35u,35u,35u,35u,34u,34u,34u,33u,33u,33u,33u,32u,32u,32u,32u,31u,31u,31u,31u,30u,30u,30u,30u,29u,29u,29u,29u,28u,28u,28u,28u,28u,27u,27u,27u,27u,26u,26u,26u,26u,25u,25u,25u,25u,25u,24u,24u,24u,24u,23u,23u,23u,23u,23u,22u,22u,22u,22u,22u,21u,21u,21u,21u,21u,20u,20u,20u,20u,20u,19u,19u,19u,19u,19u,18u,18u,18u,18u,18u,17u,17u,17u,17u,17u,16u,16u,16u,16u,16u,16u,15u,15u,15u,15u,15u,15u,14u,14u,14u,14u,14u,14u,13u,13u,13u,13u,13u,13u,12u,12u,12u,12u,12u,12u,12u,11u,11u,11u,11u,11u,11u,11u,10u,10u,10u,10u,10u,10u,10u,9u,9u,9u,9u,9u,9u,9u,9u,8u,8u,8u,8u,8u,8u,8u,8u,8u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,3u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,4u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,5u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,6u,7u,7u,7u,7u,7u,7u,7u,7u,7u,7u,8u,8u,8u,8u,8u,8u,8u,8u,8u,9u,9u,9u,9u,9u,9u,9u,9u,10u,10u,10u,10u,10u,10u,10u,11u,11u,11u,11u,11u,11u,11u,12u,12u,12u,12u,12u,12u,12u,13u,13u,13u,13u,13u,13u,14u,14u,14u,14u,14u,14u,15u,15u,15u,15u,15u,15u,16u,16u,16u,16u,16u,16u,17u,17u,17u,17u,17u,18u,18u,18u,18u,18u,19u,19u,19u,19u,19u,20u,20u,20u,20u,20u,21u,21u,21u,21u,21u,22u,22u,22u,22u,22u,23u,23u,23u,23u,23u,24u,24u,24u,24u,25u,25u,25u,25u,25u,26u,26u,26u,26u,27u,27u,27u,27u,28u,28u,28u,28u,28u,29u,29u,29u,29u,30u,30u,30u,30u,31u,31u,31u,31u,32u,32u,32u,32u,33u,33u,33u,33u,34u,34u,34u,35u,35u,35u,35u,36u,36u,36u,36u,37u,37u,37u,37u,38u,38u,38u,39u,39u,39u,39u,40u,40u,40u,41u,41u,41u,41u,42u,42u,42u,43u,43u,43u,43u,44u,44u,44u,45u,45u,45u,45u,46u,46u,46u,47u,47u,47u,48u,48u,48u,48u,49u,49u,49u,50u,50u,50u,51u,51u,51u,52u,52u,52u,52u,53u,53u,53u,54u,54u,54u,55u,55u,55u,56u,56u,56u,57u,57u,57u,58u,58u,58u,59u,59u,59u,60u,60u,60u,61u,61u,61u,62u,62u,62u,63u,63u,63u,64u,64u,64u,65u,65u,65u,66u,66u,66u,67u,67u,67u,68u,68u,68u,69u,69u,69u,70u,70u,70u,71u,71u,71u,72u,72u,73u,73u,73u,74u,74u,74u,75u,75u,75u,76u,76u,76u,77u,77u,77u,78u,78u,79u,79u,79u,80u,80u,80u,81u,81u,81u,82u,82u,83u,83u,83u,84u,84u,84u,85u,85u,86u,86u,86u,87u,87u,87u,88u,88u,88u,89u,89u,90u,90u,90u,91u,91u,91u,92u,92u,93u,93u,93u,94u,94u,95u,95u,95u,96u,96u,96u,97u,97u,98u,98u,98u,99u,99u,99u,100u,100u,101u,101u,101u,102u,102u,103u,103u,103u,104u,104u,104u,105u,105u,106u,106u,106u,107u,107u,108u,108u,108u,109u,109u,109u,110u,110u,111u,111u,111u,112u,112u,113u,113u,113u,114u,114u,115u,115u,115u,116u,116u,117u,117u,117u,118u,118u,118u,119u,119u,120u,120u,120u,121u,121u,122u,122u,122u,123u,123u,124u,124u,124u,125u,125u,126u,126u,126u,127u,127u, Wave2_DCOffset=0.51, Wave2_Length=2000, Wave2_PhaseShift=0, Wave2_Type=0, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=WaveDAC8_v2_10, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=WaveDAC_0, CY_INSTANCE_SHORT_NAME=WaveDAC_0, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=10, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP2, INSTANCE_NAME=WaveDAC_0, )
module WaveDAC8_v2_10_5 (
    Wave,
    ws,
    clock,
    wc1,
    wc2);
    inout       Wave;
    electrical  Wave;
    input       ws;
    input       clock;
    output      wc1;
    output      wc2;


          wire  Net_280;
    electrical  Net_273;
          wire  Net_202;
          wire  Net_201;
          wire [7:0] Net_171;
          wire [7:0] Net_170;
          wire  Net_339;
          wire  Net_341;
          wire  Net_153;
    electrical  Net_211;
          wire  Net_134;
          wire  Net_107;
          wire  Net_183;
          wire  Net_336;
          wire  Net_279;
          wire  Net_80;
    electrical  Net_247;
    electrical  Net_254;
    electrical  Net_256;
    electrical  Net_190;
    electrical  Net_189;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_211));

	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(Net_189, Net_256);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

	// cy_analog_virtualmux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_2_connect(Net_190, Net_211);
	defparam cy_analog_virtualmux_2_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_2 (
        .noconnect(Net_254));


	cy_dma_v1_0
		#(.drq_type(2'b10))
		Wave1_DMA
		 (.drq(Net_183),
		  .trq(1'b0),
		  .nrq(wc1));



	cy_dma_v1_0
		#(.drq_type(2'b10))
		Wave2_DMA
		 (.drq(Net_107),
		  .trq(1'b0),
		  .nrq(wc2));


    // -- De Mux start --
    if (1)
    begin : demux
        reg  tmp__demux_0_reg;
        reg  tmp__demux_1_reg;
        always @(Net_336 or Net_134)
        begin
            case (Net_134)
                1'b0:
                begin
                    tmp__demux_0_reg = Net_336;
                    tmp__demux_1_reg = 1'b0;
                end
                1'b1:
                begin
                    tmp__demux_0_reg = 1'b0;
                    tmp__demux_1_reg = Net_336;
                end
            endcase
        end
        assign Net_183 = tmp__demux_0_reg;
        assign Net_107 = tmp__demux_1_reg;
    end
    // -- De Mux end --

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_336 = clock;

    VDAC8_v1_90_4 VDAC8 (
        .strobe(Net_336),
        .data(8'b00000000),
        .vOut(Net_189));
    defparam VDAC8.Data_Source = 0;
    defparam VDAC8.Initial_Value = 100;
    defparam VDAC8.Strobe_Mode = 1;

	// cy_analog_virtualmux_3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_3_connect(Wave, Net_256);
	defparam cy_analog_virtualmux_3_connect.sig_width = 1;


    assign Net_280 = Net_279 | Net_80;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_80));

    // -- DFF Start --
    reg  cydff_1;
    always @(posedge Net_336)
    begin
        cydff_1 <= ws;
    end
    assign Net_134 = cydff_1;
    // -- DFF End --



endmodule

// Component: B_SPI_Slave_v2_70
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_SPI_Slave_v2_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_SPI_Slave_v2_70\B_SPI_Slave_v2_70.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_SPI_Slave_v2_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cycomponentlibrary\CyComponentLibrary.cylib\B_SPI_Slave_v2_70\B_SPI_Slave_v2_70.v"
`endif

// Component: not_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\not_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\not_v1_0\not_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\not_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\3.3\PSoC Creator\psoc\content\cyprimitives\CyPrimitives.cylib\not_v1_0\not_v1_0.v"
`endif

// SPI_Slave_v2_70(BidirectMode=false, ClockInternal=false, ControlFileName=SPI_Slave_Default.ctl, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG16, CyGetRegReplacementString_1=CY_GET_REG16, CyGetRegReplacementString_2=CY_GET_REG16, CySetRegReplacementString=CY_SET_REG16, DesiredBitRate=1000000, FixedPlacementEnabled=false, InternalInterruptEnabled=0, InternalRxInterruptEnabled=0, InternalTxInterruptEnabled=0, InterruptOnByteComplete=false, InterruptOnDone=false, InterruptOnRXEmpty=false, InterruptOnRXFull=false, InterruptOnRXNotEmpty=false, InterruptOnRXOverrun=false, InterruptOnTXEmpty=false, InterruptOnTXFull=false, InterruptOnTXNotFull=false, IntOnByteComp=0, IntOnRXEmpty=0, IntOnRXFull=0, IntOnRXNotEmpty=0, IntOnRXOver=0, IntOnSPIDone=0, IntOnTXEmpty=0, IntOnTXFull=0, IntOnTXNotFull=0, Mode=0, ModeUseZero=1, MultiSlaveEnable=false, NumberOfDataBits=16, PSoC3_ES2_PSoC5_ES1=false, RegDefReplacementString=reg16, RegSizeReplacementString=uint16, RxBufferSize=4, ShiftDir=0, SiliconRevisionReplacementString=es3, TxBufferSize=4, UseInternalInterrupt=false, UseRxInternalInterrupt=false, UseTxInternalInterrupt=false, VerilogSectionReplacementString=sR16, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMPONENT_NAME=SPI_Slave_v2_70, CY_CONTROL_FILE=SPI_Slave_Default.ctl, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=SPIS, CY_INSTANCE_SHORT_NAME=SPIS, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=70, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  3.3 CP2, INSTANCE_NAME=SPIS, )
module SPI_Slave_v2_70_6 (
    ss,
    mosi,
    sclk,
    miso,
    clock,
    tx_interrupt,
    sdat,
    rx_interrupt,
    miso_oe,
    reset);
    input       ss;
    input       mosi;
    input       sclk;
    output      miso;
    input       clock;
    output      tx_interrupt;
    inout       sdat;
    output      rx_interrupt;
    output      miso_oe;
    input       reset;

    parameter NumberOfDataBits = 16;
    parameter ShiftDir = 0;

          wire  Net_177;
          wire  Net_176;
          wire  Net_81;
          wire  Net_75;
          wire  Net_169;
          wire  Net_182;

    B_SPI_Slave_v2_70 BSPIS (
        .mosi(Net_75),
        .sclk(sclk),
        .ss(ss),
        .miso(miso),
        .reset(reset),
        .clock(Net_81),
        .tx_interpt(tx_interrupt),
        .tx_enable(Net_182),
        .rx_interpt(rx_interrupt));
    defparam BSPIS.BidirectMode = 0;
    defparam BSPIS.ModeCPHA = 0;
    defparam BSPIS.ModePOL = 0;
    defparam BSPIS.NumberOfDataBits = 16;
    defparam BSPIS.ShiftDir = 0;

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_75 = mosi;

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign Net_81 = clock;


    assign miso_oe = ~ss;



endmodule

// top
module top ;

          wire  Net_4086;
          wire  Net_4082;
          wire  Net_4081;
          wire  Net_4080;
          wire  Net_4079;
          wire  Net_4078;
          wire  Net_4077;
          wire  Net_4076;
          wire  Net_4075;
          wire  Net_4074;
          wire  Net_4073;
          wire  Net_3986;
          wire  Net_3636;
          wire  Net_3635;
          wire  Net_2011;
          wire  Net_3759;
          wire  Net_3844;
          wire  Net_2017;
          wire  Net_2016;
          wire  Net_3735;
          wire  Net_3734;
    electrical  Net_4491;
    electrical  Net_4490;
    electrical  Net_4489;
    electrical  Net_4488;
    electrical  Net_4487;
    electrical  Net_4486;
    electrical  Net_4485;
    electrical  Net_4484;
    electrical  Net_4483;
    electrical  Net_4482;
    electrical  Net_4481;
    electrical  Net_4480;
    electrical  Net_4479;
    electrical  Net_4478;
    electrical  Net_4477;
    electrical  Net_4476;
    electrical  Net_4475;
    electrical  Net_4474;
    electrical  Net_4473;
    electrical  Net_4472;
    electrical  Net_4471;
    electrical  Net_4470;
    electrical  Net_4469;
    electrical  Net_4468;
    electrical  Net_4467;
    electrical  Net_4466;
    electrical  Net_4465;
    electrical  Net_4464;
    electrical  Net_4463;
    electrical  Net_4462;
    electrical  Net_4461;
    electrical  Net_4460;
    electrical  Net_3683;
    electrical  Net_4408;
          wire  Net_3871;
          wire  Net_3732;

    CharLCD_v2_20_0 LCD ();

    // -- AMux WaveDAC_1_Mux start -- ***
    // -- Mux A --
    
    cy_psoc3_amux_v1_0 WaveDAC_1_Mux(
        .muxin({
            Net_4491,
            Net_4490,
            Net_4489,
            Net_4488,
            Net_4487,
            Net_4486,
            Net_4485,
            Net_4484,
            Net_4483,
            Net_4482,
            Net_4481,
            Net_4480,
            Net_4479,
            Net_4478,
            Net_4477,
            Net_4476,
            Net_4475,
            Net_4474,
            Net_4473,
            Net_4472,
            Net_4471,
            Net_4470,
            Net_4469,
            Net_4468,
            Net_4467,
            Net_4466,
            Net_4465,
            Net_4464,
            Net_4463,
            Net_4462,
            Net_4461,
            Net_4460
            }),
        .vout(Net_4408)
        );
    
    defparam WaveDAC_1_Mux.muxin_width = 32;
    defparam WaveDAC_1_Mux.init_mux_sel = 32'h0;
    defparam WaveDAC_1_Mux.one_active = 0;
    defparam WaveDAC_1_Mux.connect_mode = 1;
    
    // -- AMux WaveDAC_1_Mux end --

    WaveDAC8_v2_10_2 WaveDAC_1 (
        .Wave(Net_4408),
        .ws(Net_3732),
        .clock(Net_3871),
        .wc1(Net_3734),
        .wc2(Net_3735));

    USBFS_v3_0_3 USBUART (
        .sof(Net_2016),
        .vbusdet(1'b0));
    defparam USBUART.epDMAautoOptimization = 0;


	cy_clock_v1_0
		#(.id("30513673-7c59-46f7-88b1-d9179ae88633"),
		  .source_clock_id("CEF43CFB-0213-49b9-B980-2FFAB81C5B47"),
		  .divisor(120),
		  .period("0"),
		  .is_direct(0),
		  .is_digital(1))
		WaveDAC_0_Clock
		 (.clock_out(Net_3844));


    assign Net_3732 = 1'h0;

    assign Net_2011 = 1'h0;

    WaveDAC8_v2_10_5 WaveDAC_0 (
        .Wave(Net_3683),
        .ws(Net_2011),
        .clock(Net_3844),
        .wc1(Net_3635),
        .wc2(Net_3636));

	wire [0:0] tmpOE__FNG_OUT_0_net;
	wire [0:0] tmpFB_0__FNG_OUT_0_net;
	wire [0:0] tmpIO_0__FNG_OUT_0_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_0_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_0_net;

	cy_psoc3_pins_v1_10
		#(.id("77715107-f8d5-47e5-a629-0fb83101ac6b"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_0
		 (.oe(tmpOE__FNG_OUT_0_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_0_net[0:0]}),
		  .analog({Net_4460}),
		  .io({tmpIO_0__FNG_OUT_0_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_0_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_0_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_0_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("15a1b6a7-2811-4a33-9c0a-f3ac0c5a3513"),
		  .source_clock_id("CEF43CFB-0213-49b9-B980-2FFAB81C5B47"),
		  .divisor(120),
		  .period("0"),
		  .is_direct(0),
		  .is_digital(1))
		WaveDAC_1_Clock
		 (.clock_out(Net_3871));


	wire [0:0] tmpOE__FNG_OUT_17_net;
	wire [0:0] tmpFB_0__FNG_OUT_17_net;
	wire [0:0] tmpIO_0__FNG_OUT_17_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_17_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_17_net;

	cy_psoc3_pins_v1_10
		#(.id("aa002b05-a812-4366-9f70-1b356e285bf5"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_17
		 (.oe(tmpOE__FNG_OUT_17_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_17_net[0:0]}),
		  .analog({Net_4477}),
		  .io({tmpIO_0__FNG_OUT_17_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_17_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_17_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_17_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_16_net;
	wire [0:0] tmpFB_0__FNG_OUT_16_net;
	wire [0:0] tmpIO_0__FNG_OUT_16_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_16_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_16_net;

	cy_psoc3_pins_v1_10
		#(.id("47024cac-02be-4129-9338-9de22738cc4b"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_16
		 (.oe(tmpOE__FNG_OUT_16_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_16_net[0:0]}),
		  .analog({Net_4476}),
		  .io({tmpIO_0__FNG_OUT_16_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_16_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_16_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_16_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_15_net;
	wire [0:0] tmpFB_0__FNG_OUT_15_net;
	wire [0:0] tmpIO_0__FNG_OUT_15_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_15_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_15_net;

	cy_psoc3_pins_v1_10
		#(.id("c04f6aa2-e1ea-4814-958e-f7138ee181ad"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_15
		 (.oe(tmpOE__FNG_OUT_15_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_15_net[0:0]}),
		  .analog({Net_4475}),
		  .io({tmpIO_0__FNG_OUT_15_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_15_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_15_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_15_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_14_net;
	wire [0:0] tmpFB_0__FNG_OUT_14_net;
	wire [0:0] tmpIO_0__FNG_OUT_14_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_14_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_14_net;

	cy_psoc3_pins_v1_10
		#(.id("7d7f3e89-15b7-4270-a516-789619fef125"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_14
		 (.oe(tmpOE__FNG_OUT_14_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_14_net[0:0]}),
		  .analog({Net_4474}),
		  .io({tmpIO_0__FNG_OUT_14_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_14_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_14_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_14_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_13_net;
	wire [0:0] tmpFB_0__FNG_OUT_13_net;
	wire [0:0] tmpIO_0__FNG_OUT_13_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_13_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_13_net;

	cy_psoc3_pins_v1_10
		#(.id("8ba5d5a8-87a4-430a-b3f3-fcada8e5fabc"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_13
		 (.oe(tmpOE__FNG_OUT_13_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_13_net[0:0]}),
		  .analog({Net_4473}),
		  .io({tmpIO_0__FNG_OUT_13_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_13_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_13_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_13_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_12_net;
	wire [0:0] tmpFB_0__FNG_OUT_12_net;
	wire [0:0] tmpIO_0__FNG_OUT_12_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_12_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_12_net;

	cy_psoc3_pins_v1_10
		#(.id("d0cfac24-4084-4dc8-91c7-9593fac9340e"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_12
		 (.oe(tmpOE__FNG_OUT_12_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_12_net[0:0]}),
		  .analog({Net_4472}),
		  .io({tmpIO_0__FNG_OUT_12_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_12_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_12_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_12_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_6_net;
	wire [0:0] tmpFB_0__FNG_OUT_6_net;
	wire [0:0] tmpIO_0__FNG_OUT_6_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_6_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_6_net;

	cy_psoc3_pins_v1_10
		#(.id("abed7c5c-edf8-48e6-84ba-c7ed011429d3"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_6
		 (.oe(tmpOE__FNG_OUT_6_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_6_net[0:0]}),
		  .analog({Net_4466}),
		  .io({tmpIO_0__FNG_OUT_6_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_6_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_6_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_6_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_5_net;
	wire [0:0] tmpFB_0__FNG_OUT_5_net;
	wire [0:0] tmpIO_0__FNG_OUT_5_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_5_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_5_net;

	cy_psoc3_pins_v1_10
		#(.id("9c6088a0-853f-413f-8bc8-c88bf3196e51"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_5
		 (.oe(tmpOE__FNG_OUT_5_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_5_net[0:0]}),
		  .analog({Net_4465}),
		  .io({tmpIO_0__FNG_OUT_5_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_5_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_5_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_5_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_4_net;
	wire [0:0] tmpFB_0__FNG_OUT_4_net;
	wire [0:0] tmpIO_0__FNG_OUT_4_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_4_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_4_net;

	cy_psoc3_pins_v1_10
		#(.id("3c3d3d9d-4617-417d-abec-ce06c0ea16d1"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_4
		 (.oe(tmpOE__FNG_OUT_4_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_4_net[0:0]}),
		  .analog({Net_4464}),
		  .io({tmpIO_0__FNG_OUT_4_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_4_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_4_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_4_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_3_net;
	wire [0:0] tmpFB_0__FNG_OUT_3_net;
	wire [0:0] tmpIO_0__FNG_OUT_3_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_3_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_3_net;

	cy_psoc3_pins_v1_10
		#(.id("685b318e-da19-49a5-b11c-1030cfe23246"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_3
		 (.oe(tmpOE__FNG_OUT_3_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_3_net[0:0]}),
		  .analog({Net_4463}),
		  .io({tmpIO_0__FNG_OUT_3_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_3_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_3_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_3_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_1_net;
	wire [0:0] tmpFB_0__FNG_OUT_1_net;
	wire [0:0] tmpIO_0__FNG_OUT_1_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_1_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_1_net;

	cy_psoc3_pins_v1_10
		#(.id("1c94e792-cc31-42ef-aaa4-4d1d10b2c619"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_1
		 (.oe(tmpOE__FNG_OUT_1_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_1_net[0:0]}),
		  .analog({Net_4461}),
		  .io({tmpIO_0__FNG_OUT_1_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_1_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_2_net;
	wire [0:0] tmpFB_0__FNG_OUT_2_net;
	wire [0:0] tmpIO_0__FNG_OUT_2_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_2_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_2_net;

	cy_psoc3_pins_v1_10
		#(.id("6a66f7fc-b432-40d9-a151-91e13bc137ec"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_2
		 (.oe(tmpOE__FNG_OUT_2_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_2_net[0:0]}),
		  .analog({Net_4462}),
		  .io({tmpIO_0__FNG_OUT_2_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_2_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__LED_0_net;
	wire [0:0] tmpFB_0__LED_0_net;
	wire [0:0] tmpIO_0__LED_0_net;
	wire [0:0] tmpINTERRUPT_0__LED_0_net;
	electrical [0:0] tmpSIOVREF__LED_0_net;

	cy_psoc3_pins_v1_10
		#(.id("80854bb1-1892-423b-8f80-ba91b4108a81"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		LED_0
		 (.oe(tmpOE__LED_0_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__LED_0_net[0:0]}),
		  .io({tmpIO_0__LED_0_net[0:0]}),
		  .siovref(tmpSIOVREF__LED_0_net),
		  .interrupt({tmpINTERRUPT_0__LED_0_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__LED_0_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__LED_1_net;
	wire [0:0] tmpFB_0__LED_1_net;
	wire [0:0] tmpIO_0__LED_1_net;
	wire [0:0] tmpINTERRUPT_0__LED_1_net;
	electrical [0:0] tmpSIOVREF__LED_1_net;

	cy_psoc3_pins_v1_10
		#(.id("f4a6230c-bd90-43a6-b05a-6367c26adb9e"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		LED_1
		 (.oe(tmpOE__LED_1_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__LED_1_net[0:0]}),
		  .io({tmpIO_0__LED_1_net[0:0]}),
		  .siovref(tmpSIOVREF__LED_1_net),
		  .interrupt({tmpINTERRUPT_0__LED_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__LED_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    // -- AMux WaveDAC_0_Mux start -- ***
    // -- Mux A --
    
    cy_psoc3_amux_v1_0 WaveDAC_0_Mux(
        .muxin({
            Net_4491,
            Net_4490,
            Net_4489,
            Net_4488,
            Net_4487,
            Net_4486,
            Net_4485,
            Net_4484,
            Net_4483,
            Net_4482,
            Net_4481,
            Net_4480,
            Net_4479,
            Net_4478,
            Net_4477,
            Net_4476,
            Net_4475,
            Net_4474,
            Net_4473,
            Net_4472,
            Net_4471,
            Net_4470,
            Net_4469,
            Net_4468,
            Net_4467,
            Net_4466,
            Net_4465,
            Net_4464,
            Net_4463,
            Net_4462,
            Net_4461,
            Net_4460
            }),
        .vout(Net_3683)
        );
    
    defparam WaveDAC_0_Mux.muxin_width = 32;
    defparam WaveDAC_0_Mux.init_mux_sel = 32'h0;
    defparam WaveDAC_0_Mux.one_active = 0;
    defparam WaveDAC_0_Mux.connect_mode = 1;
    
    // -- AMux WaveDAC_0_Mux end --

    SPI_Slave_v2_70_6 SPIS (
        .mosi(Net_4073),
        .sclk(Net_4074),
        .ss(Net_4075),
        .miso(Net_4076),
        .clock(Net_4077),
        .tx_interrupt(Net_4078),
        .sdat(Net_4079),
        .rx_interrupt(Net_4080),
        .miso_oe(Net_4081),
        .reset(1'b0));
    defparam SPIS.NumberOfDataBits = 16;
    defparam SPIS.ShiftDir = 0;


	cy_clock_v1_0
		#(.id("7655c701-f538-45c1-86c8-edc0fd213aaf"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("500000000"),
		  .is_direct(0),
		  .is_digital(1))
		SPIS_CLK
		 (.clock_out(Net_4077));


	wire [0:0] tmpOE__SPIS_MOSI_net;
	wire [0:0] tmpIO_0__SPIS_MOSI_net;
	wire [0:0] tmpINTERRUPT_0__SPIS_MOSI_net;
	electrical [0:0] tmpSIOVREF__SPIS_MOSI_net;

	cy_psoc3_pins_v1_10
		#(.id("f2e701c5-d701-4ee2-a926-4f99075b795e"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		SPIS_MOSI
		 (.oe(tmpOE__SPIS_MOSI_net),
		  .y({1'b0}),
		  .fb({Net_4073}),
		  .io({tmpIO_0__SPIS_MOSI_net[0:0]}),
		  .siovref(tmpSIOVREF__SPIS_MOSI_net),
		  .interrupt({tmpINTERRUPT_0__SPIS_MOSI_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__SPIS_MOSI_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__SPIS_SCLK_net;
	wire [0:0] tmpIO_0__SPIS_SCLK_net;
	wire [0:0] tmpINTERRUPT_0__SPIS_SCLK_net;
	electrical [0:0] tmpSIOVREF__SPIS_SCLK_net;

	cy_psoc3_pins_v1_10
		#(.id("58ebce43-1d6b-47c0-9f02-581983c283b3"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		SPIS_SCLK
		 (.oe(tmpOE__SPIS_SCLK_net),
		  .y({1'b0}),
		  .fb({Net_4074}),
		  .io({tmpIO_0__SPIS_SCLK_net[0:0]}),
		  .siovref(tmpSIOVREF__SPIS_SCLK_net),
		  .interrupt({tmpINTERRUPT_0__SPIS_SCLK_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__SPIS_SCLK_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__SPIS_SS_net;
	wire [0:0] tmpIO_0__SPIS_SS_net;
	wire [0:0] tmpINTERRUPT_0__SPIS_SS_net;
	electrical [0:0] tmpSIOVREF__SPIS_SS_net;

	cy_psoc3_pins_v1_10
		#(.id("fbb46ca9-1cff-49db-b5b4-499856b7a7e0"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		SPIS_SS
		 (.oe(tmpOE__SPIS_SS_net),
		  .y({1'b0}),
		  .fb({Net_4075}),
		  .io({tmpIO_0__SPIS_SS_net[0:0]}),
		  .siovref(tmpSIOVREF__SPIS_SS_net),
		  .interrupt({tmpINTERRUPT_0__SPIS_SS_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__SPIS_SS_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__SPIS_MISO_net;
	wire [0:0] tmpFB_0__SPIS_MISO_net;
	wire [0:0] tmpIO_0__SPIS_MISO_net;
	wire [0:0] tmpINTERRUPT_0__SPIS_MISO_net;
	electrical [0:0] tmpSIOVREF__SPIS_MISO_net;

	cy_psoc3_pins_v1_10
		#(.id("c555e9f2-cb38-4e7d-b3a1-83a227e84544"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		SPIS_MISO
		 (.oe(tmpOE__SPIS_MISO_net),
		  .y({Net_4076}),
		  .fb({tmpFB_0__SPIS_MISO_net[0:0]}),
		  .io({tmpIO_0__SPIS_MISO_net[0:0]}),
		  .siovref(tmpSIOVREF__SPIS_MISO_net),
		  .interrupt({tmpINTERRUPT_0__SPIS_MISO_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__SPIS_MISO_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_11_net;
	wire [0:0] tmpFB_0__FNG_OUT_11_net;
	wire [0:0] tmpIO_0__FNG_OUT_11_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_11_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_11_net;

	cy_psoc3_pins_v1_10
		#(.id("585643b1-06f2-4b1b-a1a4-4cc2a62e83b9"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_11
		 (.oe(tmpOE__FNG_OUT_11_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_11_net[0:0]}),
		  .analog({Net_4471}),
		  .io({tmpIO_0__FNG_OUT_11_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_11_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_11_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_11_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_10_net;
	wire [0:0] tmpFB_0__FNG_OUT_10_net;
	wire [0:0] tmpIO_0__FNG_OUT_10_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_10_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_10_net;

	cy_psoc3_pins_v1_10
		#(.id("e0ad2d65-e3cd-4d05-a04e-271979bf55a0"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_10
		 (.oe(tmpOE__FNG_OUT_10_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_10_net[0:0]}),
		  .analog({Net_4470}),
		  .io({tmpIO_0__FNG_OUT_10_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_10_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_10_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_10_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_9_net;
	wire [0:0] tmpFB_0__FNG_OUT_9_net;
	wire [0:0] tmpIO_0__FNG_OUT_9_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_9_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_9_net;

	cy_psoc3_pins_v1_10
		#(.id("d3cf8e9e-aaad-49de-8089-04cb5902dcef"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_9
		 (.oe(tmpOE__FNG_OUT_9_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_9_net[0:0]}),
		  .analog({Net_4469}),
		  .io({tmpIO_0__FNG_OUT_9_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_9_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_9_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_9_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_8_net;
	wire [0:0] tmpFB_0__FNG_OUT_8_net;
	wire [0:0] tmpIO_0__FNG_OUT_8_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_8_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_8_net;

	cy_psoc3_pins_v1_10
		#(.id("5c6ac0c2-8277-4969-9aed-ca8cb0522112"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_8
		 (.oe(tmpOE__FNG_OUT_8_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_8_net[0:0]}),
		  .analog({Net_4468}),
		  .io({tmpIO_0__FNG_OUT_8_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_8_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_8_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_8_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_7_net;
	wire [0:0] tmpFB_0__FNG_OUT_7_net;
	wire [0:0] tmpIO_0__FNG_OUT_7_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_7_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_7_net;

	cy_psoc3_pins_v1_10
		#(.id("74c4ed51-9d16-47ea-88ce-8fad3e2dc71c"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_7
		 (.oe(tmpOE__FNG_OUT_7_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_7_net[0:0]}),
		  .analog({Net_4467}),
		  .io({tmpIO_0__FNG_OUT_7_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_7_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_7_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_7_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_18_net;
	wire [0:0] tmpFB_0__FNG_OUT_18_net;
	wire [0:0] tmpIO_0__FNG_OUT_18_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_18_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_18_net;

	cy_psoc3_pins_v1_10
		#(.id("eb33897d-620e-4d40-b949-9296182838c3"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_18
		 (.oe(tmpOE__FNG_OUT_18_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_18_net[0:0]}),
		  .analog({Net_4478}),
		  .io({tmpIO_0__FNG_OUT_18_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_18_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_18_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_18_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_19_net;
	wire [0:0] tmpFB_0__FNG_OUT_19_net;
	wire [0:0] tmpIO_0__FNG_OUT_19_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_19_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_19_net;

	cy_psoc3_pins_v1_10
		#(.id("4a10b152-796b-4f90-96a3-0b9461aa4bde"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_19
		 (.oe(tmpOE__FNG_OUT_19_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_19_net[0:0]}),
		  .analog({Net_4479}),
		  .io({tmpIO_0__FNG_OUT_19_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_19_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_19_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_19_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_20_net;
	wire [0:0] tmpFB_0__FNG_OUT_20_net;
	wire [0:0] tmpIO_0__FNG_OUT_20_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_20_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_20_net;

	cy_psoc3_pins_v1_10
		#(.id("e791b61a-961e-4483-906f-0f8f91156ebf"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_20
		 (.oe(tmpOE__FNG_OUT_20_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_20_net[0:0]}),
		  .analog({Net_4480}),
		  .io({tmpIO_0__FNG_OUT_20_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_20_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_20_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_20_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_21_net;
	wire [0:0] tmpFB_0__FNG_OUT_21_net;
	wire [0:0] tmpIO_0__FNG_OUT_21_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_21_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_21_net;

	cy_psoc3_pins_v1_10
		#(.id("27beddc9-6e12-49c9-acf0-e89c0f7f2810"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_21
		 (.oe(tmpOE__FNG_OUT_21_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_21_net[0:0]}),
		  .analog({Net_4481}),
		  .io({tmpIO_0__FNG_OUT_21_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_21_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_21_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_21_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_22_net;
	wire [0:0] tmpFB_0__FNG_OUT_22_net;
	wire [0:0] tmpIO_0__FNG_OUT_22_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_22_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_22_net;

	cy_psoc3_pins_v1_10
		#(.id("255f7eed-bbae-4df7-a174-9f4c32bab5f4"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_22
		 (.oe(tmpOE__FNG_OUT_22_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_22_net[0:0]}),
		  .analog({Net_4482}),
		  .io({tmpIO_0__FNG_OUT_22_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_22_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_22_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_22_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_23_net;
	wire [0:0] tmpFB_0__FNG_OUT_23_net;
	wire [0:0] tmpIO_0__FNG_OUT_23_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_23_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_23_net;

	cy_psoc3_pins_v1_10
		#(.id("725a1959-45af-4541-9d69-de7189c705b1"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_23
		 (.oe(tmpOE__FNG_OUT_23_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_23_net[0:0]}),
		  .analog({Net_4483}),
		  .io({tmpIO_0__FNG_OUT_23_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_23_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_23_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_23_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_24_net;
	wire [0:0] tmpFB_0__FNG_OUT_24_net;
	wire [0:0] tmpIO_0__FNG_OUT_24_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_24_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_24_net;

	cy_psoc3_pins_v1_10
		#(.id("ac7f3b30-1f5c-4934-a9bb-880bcc0a5da3"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_24
		 (.oe(tmpOE__FNG_OUT_24_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_24_net[0:0]}),
		  .analog({Net_4484}),
		  .io({tmpIO_0__FNG_OUT_24_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_24_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_24_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_24_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_25_net;
	wire [0:0] tmpFB_0__FNG_OUT_25_net;
	wire [0:0] tmpIO_0__FNG_OUT_25_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_25_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_25_net;

	cy_psoc3_pins_v1_10
		#(.id("8f1e2ff0-ae39-427b-b194-9047a1af7647"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_25
		 (.oe(tmpOE__FNG_OUT_25_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_25_net[0:0]}),
		  .analog({Net_4485}),
		  .io({tmpIO_0__FNG_OUT_25_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_25_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_25_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_25_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_26_net;
	wire [0:0] tmpFB_0__FNG_OUT_26_net;
	wire [0:0] tmpIO_0__FNG_OUT_26_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_26_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_26_net;

	cy_psoc3_pins_v1_10
		#(.id("859d9982-7f1c-4d11-bb10-2ae646ada1ee"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_26
		 (.oe(tmpOE__FNG_OUT_26_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_26_net[0:0]}),
		  .analog({Net_4486}),
		  .io({tmpIO_0__FNG_OUT_26_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_26_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_26_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_26_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_27_net;
	wire [0:0] tmpFB_0__FNG_OUT_27_net;
	wire [0:0] tmpIO_0__FNG_OUT_27_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_27_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_27_net;

	cy_psoc3_pins_v1_10
		#(.id("8276ebeb-787f-4753-abf3-7472d7319268"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_27
		 (.oe(tmpOE__FNG_OUT_27_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_27_net[0:0]}),
		  .analog({Net_4487}),
		  .io({tmpIO_0__FNG_OUT_27_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_27_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_27_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_27_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_28_net;
	wire [0:0] tmpFB_0__FNG_OUT_28_net;
	wire [0:0] tmpIO_0__FNG_OUT_28_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_28_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_28_net;

	cy_psoc3_pins_v1_10
		#(.id("c80d59e1-e913-40fb-9850-396dc8b3fee8"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_28
		 (.oe(tmpOE__FNG_OUT_28_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_28_net[0:0]}),
		  .analog({Net_4488}),
		  .io({tmpIO_0__FNG_OUT_28_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_28_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_28_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_28_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_29_net;
	wire [0:0] tmpFB_0__FNG_OUT_29_net;
	wire [0:0] tmpIO_0__FNG_OUT_29_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_29_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_29_net;

	cy_psoc3_pins_v1_10
		#(.id("66905a7e-e98f-4164-b55c-5bccd4bb2d81"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_29
		 (.oe(tmpOE__FNG_OUT_29_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_29_net[0:0]}),
		  .analog({Net_4489}),
		  .io({tmpIO_0__FNG_OUT_29_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_29_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_29_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_29_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_30_net;
	wire [0:0] tmpFB_0__FNG_OUT_30_net;
	wire [0:0] tmpIO_0__FNG_OUT_30_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_30_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_30_net;

	cy_psoc3_pins_v1_10
		#(.id("323afb18-d3b2-456d-bbbc-37536883660f"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_30
		 (.oe(tmpOE__FNG_OUT_30_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_30_net[0:0]}),
		  .analog({Net_4490}),
		  .io({tmpIO_0__FNG_OUT_30_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_30_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_30_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_30_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__FNG_OUT_31_net;
	wire [0:0] tmpFB_0__FNG_OUT_31_net;
	wire [0:0] tmpIO_0__FNG_OUT_31_net;
	wire [0:0] tmpINTERRUPT_0__FNG_OUT_31_net;
	electrical [0:0] tmpSIOVREF__FNG_OUT_31_net;

	cy_psoc3_pins_v1_10
		#(.id("f12789ee-9b6c-4f78-9cea-483707c28754"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		FNG_OUT_31
		 (.oe(tmpOE__FNG_OUT_31_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__FNG_OUT_31_net[0:0]}),
		  .analog({Net_4491}),
		  .io({tmpIO_0__FNG_OUT_31_net[0:0]}),
		  .siovref(tmpSIOVREF__FNG_OUT_31_net),
		  .interrupt({tmpINTERRUPT_0__FNG_OUT_31_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__FNG_OUT_31_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};



endmodule


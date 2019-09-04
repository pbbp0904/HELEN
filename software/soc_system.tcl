# qsys scripting (.tcl) file for soc_system
package require -exact qsys 16.0

create_system {soc_system}

set_project_property DEVICE_FAMILY {Cyclone V}
set_project_property DEVICE {5CSXFC6D6F31C6}
set_project_property HIDE_FROM_IP_CATALOG {false}

# Instances and instance parameters
# (disabled instances are intentionally culled)
add_instance clk_50 clock_source 18.1
set_instance_parameter_value clk_50 {clockFrequency} {50000000.0}
set_instance_parameter_value clk_50 {clockFrequencyKnown} {1}
set_instance_parameter_value clk_50 {resetSynchronousEdges} {NONE}

add_instance dcc_data_0 altera_avalon_pio 18.1
set_instance_parameter_value dcc_data_0 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value dcc_data_0 {bitModifyingOutReg} {0}
set_instance_parameter_value dcc_data_0 {captureEdge} {1}
set_instance_parameter_value dcc_data_0 {direction} {Input}
set_instance_parameter_value dcc_data_0 {edgeType} {RISING}
set_instance_parameter_value dcc_data_0 {generateIRQ} {1}
set_instance_parameter_value dcc_data_0 {irqType} {EDGE}
set_instance_parameter_value dcc_data_0 {resetValue} {0.0}
set_instance_parameter_value dcc_data_0 {simDoTestBenchWiring} {0}
set_instance_parameter_value dcc_data_0 {simDrivenValue} {0.0}
set_instance_parameter_value dcc_data_0 {width} {32}

add_instance ddc_data_1 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_1 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_1 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_1 {captureEdge} {1}
set_instance_parameter_value ddc_data_1 {direction} {Input}
set_instance_parameter_value ddc_data_1 {edgeType} {RISING}
set_instance_parameter_value ddc_data_1 {generateIRQ} {1}
set_instance_parameter_value ddc_data_1 {irqType} {EDGE}
set_instance_parameter_value ddc_data_1 {resetValue} {0.0}
set_instance_parameter_value ddc_data_1 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_1 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_1 {width} {32}

add_instance ddc_data_10 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_10 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_10 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_10 {captureEdge} {1}
set_instance_parameter_value ddc_data_10 {direction} {Input}
set_instance_parameter_value ddc_data_10 {edgeType} {RISING}
set_instance_parameter_value ddc_data_10 {generateIRQ} {1}
set_instance_parameter_value ddc_data_10 {irqType} {EDGE}
set_instance_parameter_value ddc_data_10 {resetValue} {0.0}
set_instance_parameter_value ddc_data_10 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_10 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_10 {width} {32}

add_instance ddc_data_11 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_11 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_11 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_11 {captureEdge} {1}
set_instance_parameter_value ddc_data_11 {direction} {Input}
set_instance_parameter_value ddc_data_11 {edgeType} {RISING}
set_instance_parameter_value ddc_data_11 {generateIRQ} {1}
set_instance_parameter_value ddc_data_11 {irqType} {EDGE}
set_instance_parameter_value ddc_data_11 {resetValue} {0.0}
set_instance_parameter_value ddc_data_11 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_11 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_11 {width} {32}

add_instance ddc_data_12 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_12 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_12 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_12 {captureEdge} {1}
set_instance_parameter_value ddc_data_12 {direction} {Input}
set_instance_parameter_value ddc_data_12 {edgeType} {RISING}
set_instance_parameter_value ddc_data_12 {generateIRQ} {1}
set_instance_parameter_value ddc_data_12 {irqType} {EDGE}
set_instance_parameter_value ddc_data_12 {resetValue} {0.0}
set_instance_parameter_value ddc_data_12 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_12 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_12 {width} {32}

add_instance ddc_data_13 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_13 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_13 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_13 {captureEdge} {1}
set_instance_parameter_value ddc_data_13 {direction} {Input}
set_instance_parameter_value ddc_data_13 {edgeType} {RISING}
set_instance_parameter_value ddc_data_13 {generateIRQ} {1}
set_instance_parameter_value ddc_data_13 {irqType} {EDGE}
set_instance_parameter_value ddc_data_13 {resetValue} {0.0}
set_instance_parameter_value ddc_data_13 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_13 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_13 {width} {32}

add_instance ddc_data_14 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_14 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_14 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_14 {captureEdge} {1}
set_instance_parameter_value ddc_data_14 {direction} {Input}
set_instance_parameter_value ddc_data_14 {edgeType} {RISING}
set_instance_parameter_value ddc_data_14 {generateIRQ} {1}
set_instance_parameter_value ddc_data_14 {irqType} {EDGE}
set_instance_parameter_value ddc_data_14 {resetValue} {0.0}
set_instance_parameter_value ddc_data_14 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_14 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_14 {width} {32}

add_instance ddc_data_15 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_15 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_15 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_15 {captureEdge} {1}
set_instance_parameter_value ddc_data_15 {direction} {Input}
set_instance_parameter_value ddc_data_15 {edgeType} {RISING}
set_instance_parameter_value ddc_data_15 {generateIRQ} {1}
set_instance_parameter_value ddc_data_15 {irqType} {EDGE}
set_instance_parameter_value ddc_data_15 {resetValue} {0.0}
set_instance_parameter_value ddc_data_15 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_15 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_15 {width} {32}

add_instance ddc_data_16 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_16 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_16 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_16 {captureEdge} {1}
set_instance_parameter_value ddc_data_16 {direction} {Input}
set_instance_parameter_value ddc_data_16 {edgeType} {RISING}
set_instance_parameter_value ddc_data_16 {generateIRQ} {1}
set_instance_parameter_value ddc_data_16 {irqType} {EDGE}
set_instance_parameter_value ddc_data_16 {resetValue} {0.0}
set_instance_parameter_value ddc_data_16 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_16 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_16 {width} {32}

add_instance ddc_data_17 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_17 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_17 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_17 {captureEdge} {1}
set_instance_parameter_value ddc_data_17 {direction} {Input}
set_instance_parameter_value ddc_data_17 {edgeType} {RISING}
set_instance_parameter_value ddc_data_17 {generateIRQ} {1}
set_instance_parameter_value ddc_data_17 {irqType} {EDGE}
set_instance_parameter_value ddc_data_17 {resetValue} {0.0}
set_instance_parameter_value ddc_data_17 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_17 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_17 {width} {32}

add_instance ddc_data_18 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_18 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_18 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_18 {captureEdge} {1}
set_instance_parameter_value ddc_data_18 {direction} {Input}
set_instance_parameter_value ddc_data_18 {edgeType} {RISING}
set_instance_parameter_value ddc_data_18 {generateIRQ} {1}
set_instance_parameter_value ddc_data_18 {irqType} {EDGE}
set_instance_parameter_value ddc_data_18 {resetValue} {0.0}
set_instance_parameter_value ddc_data_18 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_18 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_18 {width} {32}

add_instance ddc_data_19 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_19 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_19 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_19 {captureEdge} {1}
set_instance_parameter_value ddc_data_19 {direction} {Input}
set_instance_parameter_value ddc_data_19 {edgeType} {RISING}
set_instance_parameter_value ddc_data_19 {generateIRQ} {1}
set_instance_parameter_value ddc_data_19 {irqType} {EDGE}
set_instance_parameter_value ddc_data_19 {resetValue} {0.0}
set_instance_parameter_value ddc_data_19 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_19 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_19 {width} {32}

add_instance ddc_data_2 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_2 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_2 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_2 {captureEdge} {1}
set_instance_parameter_value ddc_data_2 {direction} {Input}
set_instance_parameter_value ddc_data_2 {edgeType} {RISING}
set_instance_parameter_value ddc_data_2 {generateIRQ} {1}
set_instance_parameter_value ddc_data_2 {irqType} {EDGE}
set_instance_parameter_value ddc_data_2 {resetValue} {0.0}
set_instance_parameter_value ddc_data_2 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_2 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_2 {width} {32}

add_instance ddc_data_20 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_20 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_20 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_20 {captureEdge} {1}
set_instance_parameter_value ddc_data_20 {direction} {Input}
set_instance_parameter_value ddc_data_20 {edgeType} {RISING}
set_instance_parameter_value ddc_data_20 {generateIRQ} {1}
set_instance_parameter_value ddc_data_20 {irqType} {EDGE}
set_instance_parameter_value ddc_data_20 {resetValue} {0.0}
set_instance_parameter_value ddc_data_20 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_20 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_20 {width} {32}

add_instance ddc_data_21 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_21 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_21 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_21 {captureEdge} {1}
set_instance_parameter_value ddc_data_21 {direction} {Input}
set_instance_parameter_value ddc_data_21 {edgeType} {RISING}
set_instance_parameter_value ddc_data_21 {generateIRQ} {1}
set_instance_parameter_value ddc_data_21 {irqType} {EDGE}
set_instance_parameter_value ddc_data_21 {resetValue} {0.0}
set_instance_parameter_value ddc_data_21 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_21 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_21 {width} {32}

add_instance ddc_data_22 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_22 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_22 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_22 {captureEdge} {1}
set_instance_parameter_value ddc_data_22 {direction} {Input}
set_instance_parameter_value ddc_data_22 {edgeType} {RISING}
set_instance_parameter_value ddc_data_22 {generateIRQ} {1}
set_instance_parameter_value ddc_data_22 {irqType} {EDGE}
set_instance_parameter_value ddc_data_22 {resetValue} {0.0}
set_instance_parameter_value ddc_data_22 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_22 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_22 {width} {32}

add_instance ddc_data_23 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_23 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_23 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_23 {captureEdge} {1}
set_instance_parameter_value ddc_data_23 {direction} {Input}
set_instance_parameter_value ddc_data_23 {edgeType} {RISING}
set_instance_parameter_value ddc_data_23 {generateIRQ} {1}
set_instance_parameter_value ddc_data_23 {irqType} {EDGE}
set_instance_parameter_value ddc_data_23 {resetValue} {0.0}
set_instance_parameter_value ddc_data_23 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_23 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_23 {width} {32}

add_instance ddc_data_24 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_24 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_24 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_24 {captureEdge} {1}
set_instance_parameter_value ddc_data_24 {direction} {Input}
set_instance_parameter_value ddc_data_24 {edgeType} {RISING}
set_instance_parameter_value ddc_data_24 {generateIRQ} {1}
set_instance_parameter_value ddc_data_24 {irqType} {EDGE}
set_instance_parameter_value ddc_data_24 {resetValue} {0.0}
set_instance_parameter_value ddc_data_24 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_24 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_24 {width} {32}

add_instance ddc_data_25 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_25 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_25 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_25 {captureEdge} {1}
set_instance_parameter_value ddc_data_25 {direction} {Input}
set_instance_parameter_value ddc_data_25 {edgeType} {RISING}
set_instance_parameter_value ddc_data_25 {generateIRQ} {1}
set_instance_parameter_value ddc_data_25 {irqType} {EDGE}
set_instance_parameter_value ddc_data_25 {resetValue} {0.0}
set_instance_parameter_value ddc_data_25 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_25 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_25 {width} {32}

add_instance ddc_data_26 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_26 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_26 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_26 {captureEdge} {1}
set_instance_parameter_value ddc_data_26 {direction} {Input}
set_instance_parameter_value ddc_data_26 {edgeType} {RISING}
set_instance_parameter_value ddc_data_26 {generateIRQ} {1}
set_instance_parameter_value ddc_data_26 {irqType} {EDGE}
set_instance_parameter_value ddc_data_26 {resetValue} {0.0}
set_instance_parameter_value ddc_data_26 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_26 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_26 {width} {32}

add_instance ddc_data_27 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_27 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_27 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_27 {captureEdge} {1}
set_instance_parameter_value ddc_data_27 {direction} {Input}
set_instance_parameter_value ddc_data_27 {edgeType} {RISING}
set_instance_parameter_value ddc_data_27 {generateIRQ} {1}
set_instance_parameter_value ddc_data_27 {irqType} {EDGE}
set_instance_parameter_value ddc_data_27 {resetValue} {0.0}
set_instance_parameter_value ddc_data_27 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_27 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_27 {width} {32}

add_instance ddc_data_28 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_28 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_28 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_28 {captureEdge} {1}
set_instance_parameter_value ddc_data_28 {direction} {Input}
set_instance_parameter_value ddc_data_28 {edgeType} {RISING}
set_instance_parameter_value ddc_data_28 {generateIRQ} {1}
set_instance_parameter_value ddc_data_28 {irqType} {EDGE}
set_instance_parameter_value ddc_data_28 {resetValue} {0.0}
set_instance_parameter_value ddc_data_28 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_28 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_28 {width} {32}

add_instance ddc_data_29 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_29 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_29 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_29 {captureEdge} {1}
set_instance_parameter_value ddc_data_29 {direction} {Input}
set_instance_parameter_value ddc_data_29 {edgeType} {RISING}
set_instance_parameter_value ddc_data_29 {generateIRQ} {1}
set_instance_parameter_value ddc_data_29 {irqType} {EDGE}
set_instance_parameter_value ddc_data_29 {resetValue} {0.0}
set_instance_parameter_value ddc_data_29 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_29 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_29 {width} {32}

add_instance ddc_data_3 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_3 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_3 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_3 {captureEdge} {1}
set_instance_parameter_value ddc_data_3 {direction} {Input}
set_instance_parameter_value ddc_data_3 {edgeType} {RISING}
set_instance_parameter_value ddc_data_3 {generateIRQ} {1}
set_instance_parameter_value ddc_data_3 {irqType} {EDGE}
set_instance_parameter_value ddc_data_3 {resetValue} {0.0}
set_instance_parameter_value ddc_data_3 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_3 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_3 {width} {32}

add_instance ddc_data_30 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_30 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_30 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_30 {captureEdge} {1}
set_instance_parameter_value ddc_data_30 {direction} {Input}
set_instance_parameter_value ddc_data_30 {edgeType} {RISING}
set_instance_parameter_value ddc_data_30 {generateIRQ} {1}
set_instance_parameter_value ddc_data_30 {irqType} {EDGE}
set_instance_parameter_value ddc_data_30 {resetValue} {0.0}
set_instance_parameter_value ddc_data_30 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_30 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_30 {width} {32}

add_instance ddc_data_31 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_31 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_31 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_31 {captureEdge} {1}
set_instance_parameter_value ddc_data_31 {direction} {Input}
set_instance_parameter_value ddc_data_31 {edgeType} {RISING}
set_instance_parameter_value ddc_data_31 {generateIRQ} {1}
set_instance_parameter_value ddc_data_31 {irqType} {EDGE}
set_instance_parameter_value ddc_data_31 {resetValue} {0.0}
set_instance_parameter_value ddc_data_31 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_31 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_31 {width} {32}

add_instance ddc_data_4 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_4 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_4 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_4 {captureEdge} {1}
set_instance_parameter_value ddc_data_4 {direction} {Input}
set_instance_parameter_value ddc_data_4 {edgeType} {RISING}
set_instance_parameter_value ddc_data_4 {generateIRQ} {1}
set_instance_parameter_value ddc_data_4 {irqType} {EDGE}
set_instance_parameter_value ddc_data_4 {resetValue} {0.0}
set_instance_parameter_value ddc_data_4 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_4 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_4 {width} {32}

add_instance ddc_data_5 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_5 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_5 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_5 {captureEdge} {1}
set_instance_parameter_value ddc_data_5 {direction} {Input}
set_instance_parameter_value ddc_data_5 {edgeType} {RISING}
set_instance_parameter_value ddc_data_5 {generateIRQ} {1}
set_instance_parameter_value ddc_data_5 {irqType} {EDGE}
set_instance_parameter_value ddc_data_5 {resetValue} {0.0}
set_instance_parameter_value ddc_data_5 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_5 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_5 {width} {32}

add_instance ddc_data_6 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_6 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_6 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_6 {captureEdge} {1}
set_instance_parameter_value ddc_data_6 {direction} {Input}
set_instance_parameter_value ddc_data_6 {edgeType} {RISING}
set_instance_parameter_value ddc_data_6 {generateIRQ} {1}
set_instance_parameter_value ddc_data_6 {irqType} {EDGE}
set_instance_parameter_value ddc_data_6 {resetValue} {0.0}
set_instance_parameter_value ddc_data_6 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_6 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_6 {width} {32}

add_instance ddc_data_7 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_7 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_7 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_7 {captureEdge} {1}
set_instance_parameter_value ddc_data_7 {direction} {Input}
set_instance_parameter_value ddc_data_7 {edgeType} {RISING}
set_instance_parameter_value ddc_data_7 {generateIRQ} {1}
set_instance_parameter_value ddc_data_7 {irqType} {EDGE}
set_instance_parameter_value ddc_data_7 {resetValue} {0.0}
set_instance_parameter_value ddc_data_7 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_7 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_7 {width} {32}

add_instance ddc_data_8 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_8 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_8 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_8 {captureEdge} {1}
set_instance_parameter_value ddc_data_8 {direction} {Input}
set_instance_parameter_value ddc_data_8 {edgeType} {RISING}
set_instance_parameter_value ddc_data_8 {generateIRQ} {1}
set_instance_parameter_value ddc_data_8 {irqType} {EDGE}
set_instance_parameter_value ddc_data_8 {resetValue} {0.0}
set_instance_parameter_value ddc_data_8 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_8 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_8 {width} {32}

add_instance ddc_data_9 altera_avalon_pio 18.1
set_instance_parameter_value ddc_data_9 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_data_9 {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_data_9 {captureEdge} {1}
set_instance_parameter_value ddc_data_9 {direction} {Input}
set_instance_parameter_value ddc_data_9 {edgeType} {RISING}
set_instance_parameter_value ddc_data_9 {generateIRQ} {1}
set_instance_parameter_value ddc_data_9 {irqType} {EDGE}
set_instance_parameter_value ddc_data_9 {resetValue} {0.0}
set_instance_parameter_value ddc_data_9 {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_data_9 {simDrivenValue} {0.0}
set_instance_parameter_value ddc_data_9 {width} {32}

add_instance ddc_time_out altera_avalon_pio 18.1
set_instance_parameter_value ddc_time_out {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ddc_time_out {bitModifyingOutReg} {0}
set_instance_parameter_value ddc_time_out {captureEdge} {1}
set_instance_parameter_value ddc_time_out {direction} {Input}
set_instance_parameter_value ddc_time_out {edgeType} {RISING}
set_instance_parameter_value ddc_time_out {generateIRQ} {1}
set_instance_parameter_value ddc_time_out {irqType} {EDGE}
set_instance_parameter_value ddc_time_out {resetValue} {0.0}
set_instance_parameter_value ddc_time_out {simDoTestBenchWiring} {0}
set_instance_parameter_value ddc_time_out {simDrivenValue} {0.0}
set_instance_parameter_value ddc_time_out {width} {26}

add_instance hps_0 altera_hps 18.1
set_instance_parameter_value hps_0 {ABSTRACT_REAL_COMPARE_TEST} {0}
set_instance_parameter_value hps_0 {ABS_RAM_MEM_INIT_FILENAME} {meminit}
set_instance_parameter_value hps_0 {ACV_PHY_CLK_ADD_FR_PHASE} {0.0}
set_instance_parameter_value hps_0 {AC_PACKAGE_DESKEW} {0}
set_instance_parameter_value hps_0 {AC_ROM_USER_ADD_0} {0_0000_0000_0000}
set_instance_parameter_value hps_0 {AC_ROM_USER_ADD_1} {0_0000_0000_1000}
set_instance_parameter_value hps_0 {ADDR_ORDER} {0}
set_instance_parameter_value hps_0 {ADD_EFFICIENCY_MONITOR} {0}
set_instance_parameter_value hps_0 {ADD_EXTERNAL_SEQ_DEBUG_NIOS} {0}
set_instance_parameter_value hps_0 {ADVANCED_CK_PHASES} {0}
set_instance_parameter_value hps_0 {ADVERTIZE_SEQUENCER_SW_BUILD_FILES} {0}
set_instance_parameter_value hps_0 {AFI_DEBUG_INFO_WIDTH} {32}
set_instance_parameter_value hps_0 {ALTMEMPHY_COMPATIBLE_MODE} {0}
set_instance_parameter_value hps_0 {AP_MODE} {0}
set_instance_parameter_value hps_0 {AP_MODE_EN} {0}
set_instance_parameter_value hps_0 {AUTO_PD_CYCLES} {0}
set_instance_parameter_value hps_0 {AUTO_POWERDN_EN} {0}
set_instance_parameter_value hps_0 {AVL_DATA_WIDTH_PORT} {32 32 32 32 32 32}
set_instance_parameter_value hps_0 {AVL_MAX_SIZE} {4}
set_instance_parameter_value hps_0 {BONDING_OUT_ENABLED} {0}
set_instance_parameter_value hps_0 {BOOTFROMFPGA_Enable} {0}
set_instance_parameter_value hps_0 {BSEL} {1}
set_instance_parameter_value hps_0 {BSEL_EN} {0}
set_instance_parameter_value hps_0 {BYTE_ENABLE} {1}
set_instance_parameter_value hps_0 {C2P_WRITE_CLOCK_ADD_PHASE} {0.0}
set_instance_parameter_value hps_0 {CALIBRATION_MODE} {Skip}
set_instance_parameter_value hps_0 {CALIB_REG_WIDTH} {8}
set_instance_parameter_value hps_0 {CAN0_Mode} {N/A}
set_instance_parameter_value hps_0 {CAN0_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {CAN1_Mode} {N/A}
set_instance_parameter_value hps_0 {CAN1_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {CFG_DATA_REORDERING_TYPE} {INTER_BANK}
set_instance_parameter_value hps_0 {CFG_REORDER_DATA} {1}
set_instance_parameter_value hps_0 {CFG_TCCD_NS} {2.5}
set_instance_parameter_value hps_0 {COMMAND_PHASE} {0.0}
set_instance_parameter_value hps_0 {CONTROLLER_LATENCY} {5}
set_instance_parameter_value hps_0 {CORE_DEBUG_CONNECTION} {EXPORT}
set_instance_parameter_value hps_0 {CPORT_TYPE_PORT} {Bidirectional Bidirectional Bidirectional Bidirectional Bidirectional Bidirectional}
set_instance_parameter_value hps_0 {CSEL} {0}
set_instance_parameter_value hps_0 {CSEL_EN} {0}
set_instance_parameter_value hps_0 {CTI_Enable} {0}
set_instance_parameter_value hps_0 {CTL_AUTOPCH_EN} {0}
set_instance_parameter_value hps_0 {CTL_CMD_QUEUE_DEPTH} {8}
set_instance_parameter_value hps_0 {CTL_CSR_CONNECTION} {INTERNAL_JTAG}
set_instance_parameter_value hps_0 {CTL_CSR_ENABLED} {0}
set_instance_parameter_value hps_0 {CTL_CSR_READ_ONLY} {1}
set_instance_parameter_value hps_0 {CTL_DEEP_POWERDN_EN} {0}
set_instance_parameter_value hps_0 {CTL_DYNAMIC_BANK_ALLOCATION} {0}
set_instance_parameter_value hps_0 {CTL_DYNAMIC_BANK_NUM} {4}
set_instance_parameter_value hps_0 {CTL_ECC_AUTO_CORRECTION_ENABLED} {0}
set_instance_parameter_value hps_0 {CTL_ECC_ENABLED} {0}
set_instance_parameter_value hps_0 {CTL_ENABLE_BURST_INTERRUPT} {1}
set_instance_parameter_value hps_0 {CTL_ENABLE_BURST_TERMINATE} {1}
set_instance_parameter_value hps_0 {CTL_HRB_ENABLED} {0}
set_instance_parameter_value hps_0 {CTL_LOOK_AHEAD_DEPTH} {4}
set_instance_parameter_value hps_0 {CTL_SELF_REFRESH_EN} {0}
set_instance_parameter_value hps_0 {CTL_USR_REFRESH_EN} {0}
set_instance_parameter_value hps_0 {CTL_ZQCAL_EN} {0}
set_instance_parameter_value hps_0 {CUT_NEW_FAMILY_TIMING} {1}
set_instance_parameter_value hps_0 {DAT_DATA_WIDTH} {32}
set_instance_parameter_value hps_0 {DEBUGAPB_Enable} {0}
set_instance_parameter_value hps_0 {DEBUG_MODE} {0}
set_instance_parameter_value hps_0 {DEVICE_DEPTH} {1}
set_instance_parameter_value hps_0 {DEVICE_FAMILY_PARAM} {}
set_instance_parameter_value hps_0 {DISABLE_CHILD_MESSAGING} {0}
set_instance_parameter_value hps_0 {DISCRETE_FLY_BY} {1}
set_instance_parameter_value hps_0 {DLL_SHARING_MODE} {None}
set_instance_parameter_value hps_0 {DMA_Enable} {Yes Yes No No No No No No}
set_instance_parameter_value hps_0 {DQS_DQSN_MODE} {DIFFERENTIAL}
set_instance_parameter_value hps_0 {DQ_INPUT_REG_USE_CLKN} {0}
set_instance_parameter_value hps_0 {DUPLICATE_AC} {0}
set_instance_parameter_value hps_0 {ED_EXPORT_SEQ_DEBUG} {0}
set_instance_parameter_value hps_0 {EMAC0_Mode} {N/A}
set_instance_parameter_value hps_0 {EMAC0_PTP} {0}
set_instance_parameter_value hps_0 {EMAC0_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {EMAC1_Mode} {RGMII}
set_instance_parameter_value hps_0 {EMAC1_PTP} {0}
set_instance_parameter_value hps_0 {EMAC1_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {ENABLE_ABS_RAM_MEM_INIT} {0}
set_instance_parameter_value hps_0 {ENABLE_BONDING} {0}
set_instance_parameter_value hps_0 {ENABLE_BURST_MERGE} {0}
set_instance_parameter_value hps_0 {ENABLE_CTRL_AVALON_INTERFACE} {1}
set_instance_parameter_value hps_0 {ENABLE_DELAY_CHAIN_WRITE} {0}
set_instance_parameter_value hps_0 {ENABLE_EMIT_BFM_MASTER} {0}
set_instance_parameter_value hps_0 {ENABLE_EXPORT_SEQ_DEBUG_BRIDGE} {0}
set_instance_parameter_value hps_0 {ENABLE_EXTRA_REPORTING} {0}
set_instance_parameter_value hps_0 {ENABLE_ISS_PROBES} {0}
set_instance_parameter_value hps_0 {ENABLE_NON_DESTRUCTIVE_CALIB} {0}
set_instance_parameter_value hps_0 {ENABLE_NON_DES_CAL} {0}
set_instance_parameter_value hps_0 {ENABLE_NON_DES_CAL_TEST} {0}
set_instance_parameter_value hps_0 {ENABLE_SEQUENCER_MARGINING_ON_BY_DEFAULT} {0}
set_instance_parameter_value hps_0 {ENABLE_USER_ECC} {0}
set_instance_parameter_value hps_0 {EXPORT_AFI_HALF_CLK} {0}
set_instance_parameter_value hps_0 {EXTRA_SETTINGS} {}
set_instance_parameter_value hps_0 {F2SCLK_COLDRST_Enable} {1}
set_instance_parameter_value hps_0 {F2SCLK_DBGRST_Enable} {1}
set_instance_parameter_value hps_0 {F2SCLK_PERIPHCLK_Enable} {0}
set_instance_parameter_value hps_0 {F2SCLK_SDRAMCLK_Enable} {0}
set_instance_parameter_value hps_0 {F2SCLK_WARMRST_Enable} {1}
set_instance_parameter_value hps_0 {F2SDRAM_Type} {Avalon-MM\ Bidirectional}
set_instance_parameter_value hps_0 {F2SDRAM_Width} {256}
set_instance_parameter_value hps_0 {F2SINTERRUPT_Enable} {1}
set_instance_parameter_value hps_0 {F2S_Width} {3}
set_instance_parameter_value hps_0 {FIX_READ_LATENCY} {8}
set_instance_parameter_value hps_0 {FORCED_NON_LDC_ADDR_CMD_MEM_CK_INVERT} {0}
set_instance_parameter_value hps_0 {FORCED_NUM_WRITE_FR_CYCLE_SHIFTS} {0}
set_instance_parameter_value hps_0 {FORCE_DQS_TRACKING} {AUTO}
set_instance_parameter_value hps_0 {FORCE_MAX_LATENCY_COUNT_WIDTH} {0}
set_instance_parameter_value hps_0 {FORCE_SEQUENCER_TCL_DEBUG_MODE} {0}
set_instance_parameter_value hps_0 {FORCE_SHADOW_REGS} {AUTO}
set_instance_parameter_value hps_0 {FORCE_SYNTHESIS_LANGUAGE} {}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC0_GTX_CLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC0_MD_CLK} {100.0}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC1_GTX_CLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC1_MD_CLK} {100.0}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C0_CLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C1_CLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C2_CLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C3_CLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_QSPI_SCLK_OUT} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SDIO_CCLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SPIM0_SCLK_OUT} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SPIM1_SCLK_OUT} {100}
set_instance_parameter_value hps_0 {GPIO_Enable} {No No No No No No No No No Yes No No No No No No No No No No No No No No No No No No No No No No No No No Yes No Yes No No Yes Yes No No Yes No No No Yes No No No No Yes Yes No No No No No No Yes No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No}
set_instance_parameter_value hps_0 {GP_Enable} {0}
set_instance_parameter_value hps_0 {HARD_EMIF} {1}
set_instance_parameter_value hps_0 {HCX_COMPAT_MODE} {0}
set_instance_parameter_value hps_0 {HHP_HPS} {1}
set_instance_parameter_value hps_0 {HHP_HPS_SIMULATION} {0}
set_instance_parameter_value hps_0 {HHP_HPS_VERIFICATION} {0}
set_instance_parameter_value hps_0 {HLGPI_Enable} {0}
set_instance_parameter_value hps_0 {HPS_PROTOCOL} {DDR3}
set_instance_parameter_value hps_0 {I2C0_Mode} {I2C}
set_instance_parameter_value hps_0 {I2C0_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {I2C1_Mode} {I2C}
set_instance_parameter_value hps_0 {I2C1_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {I2C2_Mode} {N/A}
set_instance_parameter_value hps_0 {I2C2_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {I2C3_Mode} {N/A}
set_instance_parameter_value hps_0 {I2C3_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {INCLUDE_BOARD_DELAY_MODEL} {0}
set_instance_parameter_value hps_0 {INCLUDE_MULTIRANK_BOARD_DELAY_MODEL} {0}
set_instance_parameter_value hps_0 {IS_ES_DEVICE} {0}
set_instance_parameter_value hps_0 {LOANIO_Enable} {No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No}
set_instance_parameter_value hps_0 {LOCAL_ID_WIDTH} {8}
set_instance_parameter_value hps_0 {LRDIMM_EXTENDED_CONFIG} {0x000000000000000000}
set_instance_parameter_value hps_0 {LWH2F_Enable} {true}
set_instance_parameter_value hps_0 {MARGIN_VARIATION_TEST} {0}
set_instance_parameter_value hps_0 {MAX_PENDING_RD_CMD} {16}
set_instance_parameter_value hps_0 {MAX_PENDING_WR_CMD} {8}
set_instance_parameter_value hps_0 {MEM_ASR} {Manual}
set_instance_parameter_value hps_0 {MEM_ATCL} {Disabled}
set_instance_parameter_value hps_0 {MEM_AUTO_LEVELING_MODE} {1}
set_instance_parameter_value hps_0 {MEM_BANKADDR_WIDTH} {3}
set_instance_parameter_value hps_0 {MEM_BL} {OTF}
set_instance_parameter_value hps_0 {MEM_BT} {Sequential}
set_instance_parameter_value hps_0 {MEM_CK_PHASE} {0.0}
set_instance_parameter_value hps_0 {MEM_CK_WIDTH} {1}
set_instance_parameter_value hps_0 {MEM_CLK_EN_WIDTH} {1}
set_instance_parameter_value hps_0 {MEM_CLK_FREQ} {400.0}
set_instance_parameter_value hps_0 {MEM_CLK_FREQ_MAX} {800.0}
set_instance_parameter_value hps_0 {MEM_COL_ADDR_WIDTH} {10}
set_instance_parameter_value hps_0 {MEM_CS_WIDTH} {1}
set_instance_parameter_value hps_0 {MEM_DEVICE} {MISSING_MODEL}
set_instance_parameter_value hps_0 {MEM_DLL_EN} {1}
set_instance_parameter_value hps_0 {MEM_DQ_PER_DQS} {8}
set_instance_parameter_value hps_0 {MEM_DQ_WIDTH} {32}
set_instance_parameter_value hps_0 {MEM_DRV_STR} {RZQ/6}
set_instance_parameter_value hps_0 {MEM_FORMAT} {DISCRETE}
set_instance_parameter_value hps_0 {MEM_GUARANTEED_WRITE_INIT} {0}
set_instance_parameter_value hps_0 {MEM_IF_BOARD_BASE_DELAY} {10}
set_instance_parameter_value hps_0 {MEM_IF_DM_PINS_EN} {1}
set_instance_parameter_value hps_0 {MEM_IF_DQSN_EN} {1}
set_instance_parameter_value hps_0 {MEM_IF_SIM_VALID_WINDOW} {0}
set_instance_parameter_value hps_0 {MEM_INIT_EN} {0}
set_instance_parameter_value hps_0 {MEM_INIT_FILE} {}
set_instance_parameter_value hps_0 {MEM_MIRROR_ADDRESSING} {0}
set_instance_parameter_value hps_0 {MEM_NUMBER_OF_DIMMS} {1}
set_instance_parameter_value hps_0 {MEM_NUMBER_OF_RANKS_PER_DEVICE} {1}
set_instance_parameter_value hps_0 {MEM_NUMBER_OF_RANKS_PER_DIMM} {1}
set_instance_parameter_value hps_0 {MEM_PD} {DLL off}
set_instance_parameter_value hps_0 {MEM_RANK_MULTIPLICATION_FACTOR} {1}
set_instance_parameter_value hps_0 {MEM_ROW_ADDR_WIDTH} {15}
set_instance_parameter_value hps_0 {MEM_RTT_NOM} {RZQ/6}
set_instance_parameter_value hps_0 {MEM_RTT_WR} {Dynamic ODT off}
set_instance_parameter_value hps_0 {MEM_SRT} {Normal}
set_instance_parameter_value hps_0 {MEM_TCL} {7}
set_instance_parameter_value hps_0 {MEM_TFAW_NS} {45.0}
set_instance_parameter_value hps_0 {MEM_TINIT_US} {500}
set_instance_parameter_value hps_0 {MEM_TMRD_CK} {4}
set_instance_parameter_value hps_0 {MEM_TRAS_NS} {36.0}
set_instance_parameter_value hps_0 {MEM_TRCD_NS} {13.125}
set_instance_parameter_value hps_0 {MEM_TREFI_US} {7.8}
set_instance_parameter_value hps_0 {MEM_TRFC_NS} {300.0}
set_instance_parameter_value hps_0 {MEM_TRP_NS} {13.125}
set_instance_parameter_value hps_0 {MEM_TRRD_NS} {7.5}
set_instance_parameter_value hps_0 {MEM_TRTP_NS} {7.5}
set_instance_parameter_value hps_0 {MEM_TWR_NS} {15.0}
set_instance_parameter_value hps_0 {MEM_TWTR} {4}
set_instance_parameter_value hps_0 {MEM_USER_LEVELING_MODE} {Leveling}
set_instance_parameter_value hps_0 {MEM_VENDOR} {Micron}
set_instance_parameter_value hps_0 {MEM_VERBOSE} {1}
set_instance_parameter_value hps_0 {MEM_VOLTAGE} {1.5V DDR3}
set_instance_parameter_value hps_0 {MEM_WTCL} {7}
set_instance_parameter_value hps_0 {MPU_EVENTS_Enable} {0}
set_instance_parameter_value hps_0 {MRS_MIRROR_PING_PONG_ATSO} {0}
set_instance_parameter_value hps_0 {MULTICAST_EN} {0}
set_instance_parameter_value hps_0 {NAND_Mode} {N/A}
set_instance_parameter_value hps_0 {NAND_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {NEXTGEN} {1}
set_instance_parameter_value hps_0 {NIOS_ROM_DATA_WIDTH} {32}
set_instance_parameter_value hps_0 {NUM_DLL_SHARING_INTERFACES} {1}
set_instance_parameter_value hps_0 {NUM_EXTRA_REPORT_PATH} {10}
set_instance_parameter_value hps_0 {NUM_OCT_SHARING_INTERFACES} {1}
set_instance_parameter_value hps_0 {NUM_OF_PORTS} {1}
set_instance_parameter_value hps_0 {NUM_PLL_SHARING_INTERFACES} {1}
set_instance_parameter_value hps_0 {OCT_SHARING_MODE} {None}
set_instance_parameter_value hps_0 {P2C_READ_CLOCK_ADD_PHASE} {0.0}
set_instance_parameter_value hps_0 {PACKAGE_DESKEW} {0}
set_instance_parameter_value hps_0 {PARSE_FRIENDLY_DEVICE_FAMILY_PARAM} {}
set_instance_parameter_value hps_0 {PARSE_FRIENDLY_DEVICE_FAMILY_PARAM_VALID} {0}
set_instance_parameter_value hps_0 {PHY_CSR_CONNECTION} {INTERNAL_JTAG}
set_instance_parameter_value hps_0 {PHY_CSR_ENABLED} {0}
set_instance_parameter_value hps_0 {PHY_ONLY} {0}
set_instance_parameter_value hps_0 {PINGPONGPHY_EN} {0}
set_instance_parameter_value hps_0 {PLL_ADDR_CMD_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_ADDR_CMD_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_ADDR_CMD_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_ADDR_CMD_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_ADDR_CMD_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_ADDR_CMD_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_AFI_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_AFI_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_AFI_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_AFI_HALF_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_HALF_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_AFI_HALF_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_AFI_HALF_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_HALF_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_HALF_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_AFI_PHY_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_PHY_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_AFI_PHY_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_AFI_PHY_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_PHY_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_PHY_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_C2P_WRITE_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_C2P_WRITE_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_C2P_WRITE_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_C2P_WRITE_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_C2P_WRITE_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_C2P_WRITE_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_CLK_PARAM_VALID} {0}
set_instance_parameter_value hps_0 {PLL_CONFIG_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_CONFIG_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_CONFIG_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_CONFIG_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_CONFIG_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_CONFIG_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_DR_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_DR_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_DR_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_DR_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_DR_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_DR_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_HR_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_HR_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_HR_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_HR_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_HR_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_HR_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_LOCATION} {Top_Bottom}
set_instance_parameter_value hps_0 {PLL_MEM_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_MEM_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_MEM_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_MEM_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_MEM_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_MEM_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_NIOS_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_NIOS_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_NIOS_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_NIOS_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_NIOS_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_NIOS_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_P2C_READ_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_P2C_READ_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_P2C_READ_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_P2C_READ_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_P2C_READ_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_P2C_READ_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_SHARING_MODE} {None}
set_instance_parameter_value hps_0 {PLL_WRITE_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_WRITE_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_WRITE_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_WRITE_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_WRITE_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_WRITE_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {POWER_OF_TWO_BUS} {0}
set_instance_parameter_value hps_0 {PRIORITY_PORT} {1 1 1 1 1 1}
set_instance_parameter_value hps_0 {QSPI_Mode} {1 SS}
set_instance_parameter_value hps_0 {QSPI_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {RATE} {Full}
set_instance_parameter_value hps_0 {RDIMM_CONFIG} {0000000000000000}
set_instance_parameter_value hps_0 {READ_DQ_DQS_CLOCK_SOURCE} {INVERTED_DQS_BUS}
set_instance_parameter_value hps_0 {READ_FIFO_SIZE} {8}
set_instance_parameter_value hps_0 {REFRESH_BURST_VALIDATION} {0}
set_instance_parameter_value hps_0 {REFRESH_INTERVAL} {15000}
set_instance_parameter_value hps_0 {REF_CLK_FREQ} {25.0}
set_instance_parameter_value hps_0 {REF_CLK_FREQ_MAX_PARAM} {0.0}
set_instance_parameter_value hps_0 {REF_CLK_FREQ_MIN_PARAM} {0.0}
set_instance_parameter_value hps_0 {REF_CLK_FREQ_PARAM_VALID} {0}
set_instance_parameter_value hps_0 {S2FCLK_COLDRST_Enable} {0}
set_instance_parameter_value hps_0 {S2FCLK_PENDINGRST_Enable} {0}
set_instance_parameter_value hps_0 {S2FCLK_USER0CLK_Enable} {0}
set_instance_parameter_value hps_0 {S2FCLK_USER1CLK_Enable} {0}
set_instance_parameter_value hps_0 {S2FCLK_USER1CLK_FREQ} {100.0}
set_instance_parameter_value hps_0 {S2FCLK_USER2CLK} {1}
set_instance_parameter_value hps_0 {S2FCLK_USER2CLK_Enable} {0}
set_instance_parameter_value hps_0 {S2FCLK_USER2CLK_FREQ} {100.0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_CAN_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_CLOCKPERIPHERAL_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_CTI_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_DMA_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_EMAC_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_FPGAMANAGER_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_GPIO_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_I2CEMAC_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_I2CPERIPHERAL_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_L4TIMER_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_NAND_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_OSCTIMER_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_QSPI_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_SDMMC_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_SPIMASTER_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_SPISLAVE_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_UART_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_USB_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_WATCHDOG_Enable} {0}
set_instance_parameter_value hps_0 {S2F_Width} {2}
set_instance_parameter_value hps_0 {SDIO_Mode} {4-bit Data}
set_instance_parameter_value hps_0 {SDIO_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {SEQUENCER_TYPE} {NIOS}
set_instance_parameter_value hps_0 {SEQ_MODE} {0}
set_instance_parameter_value hps_0 {SKIP_MEM_INIT} {1}
set_instance_parameter_value hps_0 {SOPC_COMPAT_RESET} {0}
set_instance_parameter_value hps_0 {SPEED_GRADE} {7}
set_instance_parameter_value hps_0 {SPIM0_Mode} {Single Slave Select}
set_instance_parameter_value hps_0 {SPIM0_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {SPIM1_Mode} {Single Slave Select}
set_instance_parameter_value hps_0 {SPIM1_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {SPIS0_Mode} {N/A}
set_instance_parameter_value hps_0 {SPIS0_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {SPIS1_Mode} {N/A}
set_instance_parameter_value hps_0 {SPIS1_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {STARVE_LIMIT} {10}
set_instance_parameter_value hps_0 {STM_Enable} {1}
set_instance_parameter_value hps_0 {TEST_Enable} {0}
set_instance_parameter_value hps_0 {TIMING_BOARD_AC_EYE_REDUCTION_H} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_AC_EYE_REDUCTION_SU} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_AC_SKEW} {0.02}
set_instance_parameter_value hps_0 {TIMING_BOARD_AC_SLEW_RATE} {1.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_AC_TO_CK_SKEW} {0.01}
set_instance_parameter_value hps_0 {TIMING_BOARD_CK_CKN_SLEW_RATE} {2.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_DELTA_DQS_ARRIVAL_TIME} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_DELTA_READ_DQS_ARRIVAL_TIME} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_DERATE_METHOD} {AUTO}
set_instance_parameter_value hps_0 {TIMING_BOARD_DQS_DQSN_SLEW_RATE} {2.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_DQ_EYE_REDUCTION} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_DQ_SLEW_RATE} {1.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_DQ_TO_DQS_SKEW} {0.05}
set_instance_parameter_value hps_0 {TIMING_BOARD_ISI_METHOD} {AUTO}
set_instance_parameter_value hps_0 {TIMING_BOARD_MAX_CK_DELAY} {0.03}
set_instance_parameter_value hps_0 {TIMING_BOARD_MAX_DQS_DELAY} {0.02}
set_instance_parameter_value hps_0 {TIMING_BOARD_READ_DQ_EYE_REDUCTION} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_BETWEEN_DIMMS} {0.05}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_BETWEEN_DQS} {0.06}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_CKDQS_DIMM_MAX} {0.12}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_CKDQS_DIMM_MIN} {0.06}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_WITHIN_DQS} {0.01}
set_instance_parameter_value hps_0 {TIMING_BOARD_TDH} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_TDS} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_TIH} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_TIS} {0.0}
set_instance_parameter_value hps_0 {TIMING_TDH} {65}
set_instance_parameter_value hps_0 {TIMING_TDQSCK} {255}
set_instance_parameter_value hps_0 {TIMING_TDQSCKDL} {1200}
set_instance_parameter_value hps_0 {TIMING_TDQSCKDM} {900}
set_instance_parameter_value hps_0 {TIMING_TDQSCKDS} {450}
set_instance_parameter_value hps_0 {TIMING_TDQSH} {0.35}
set_instance_parameter_value hps_0 {TIMING_TDQSQ} {125}
set_instance_parameter_value hps_0 {TIMING_TDQSS} {0.25}
set_instance_parameter_value hps_0 {TIMING_TDS} {30}
set_instance_parameter_value hps_0 {TIMING_TDSH} {0.2}
set_instance_parameter_value hps_0 {TIMING_TDSS} {0.2}
set_instance_parameter_value hps_0 {TIMING_TIH} {140}
set_instance_parameter_value hps_0 {TIMING_TIS} {190}
set_instance_parameter_value hps_0 {TIMING_TQH} {0.38}
set_instance_parameter_value hps_0 {TIMING_TQHS} {300}
set_instance_parameter_value hps_0 {TIMING_TQSH} {0.4}
set_instance_parameter_value hps_0 {TPIUFPGA_Enable} {0}
set_instance_parameter_value hps_0 {TPIUFPGA_alt} {0}
set_instance_parameter_value hps_0 {TRACE_Mode} {N/A}
set_instance_parameter_value hps_0 {TRACE_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {TRACKING_ERROR_TEST} {0}
set_instance_parameter_value hps_0 {TRACKING_WATCH_TEST} {0}
set_instance_parameter_value hps_0 {TREFI} {35100}
set_instance_parameter_value hps_0 {TRFC} {350}
set_instance_parameter_value hps_0 {UART0_Mode} {No Flow Control}
set_instance_parameter_value hps_0 {UART0_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {UART1_Mode} {N/A}
set_instance_parameter_value hps_0 {UART1_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {USB0_Mode} {N/A}
set_instance_parameter_value hps_0 {USB0_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {USB1_Mode} {SDR}
set_instance_parameter_value hps_0 {USB1_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {USER_DEBUG_LEVEL} {1}
set_instance_parameter_value hps_0 {USE_AXI_ADAPTOR} {0}
set_instance_parameter_value hps_0 {USE_FAKE_PHY} {0}
set_instance_parameter_value hps_0 {USE_MEM_CLK_FREQ} {0}
set_instance_parameter_value hps_0 {USE_MM_ADAPTOR} {1}
set_instance_parameter_value hps_0 {USE_SEQUENCER_BFM} {0}
set_instance_parameter_value hps_0 {WEIGHT_PORT} {0 0 0 0 0 0}
set_instance_parameter_value hps_0 {WRBUFFER_ADDR_WIDTH} {6}
set_instance_parameter_value hps_0 {can0_clk_div} {1}
set_instance_parameter_value hps_0 {can1_clk_div} {1}
set_instance_parameter_value hps_0 {configure_advanced_parameters} {0}
set_instance_parameter_value hps_0 {customize_device_pll_info} {0}
set_instance_parameter_value hps_0 {dbctrl_stayosc1} {1}
set_instance_parameter_value hps_0 {dbg_at_clk_div} {0}
set_instance_parameter_value hps_0 {dbg_clk_div} {1}
set_instance_parameter_value hps_0 {dbg_trace_clk_div} {0}
set_instance_parameter_value hps_0 {desired_can0_clk_mhz} {100.0}
set_instance_parameter_value hps_0 {desired_can1_clk_mhz} {100.0}
set_instance_parameter_value hps_0 {desired_cfg_clk_mhz} {100.0}
set_instance_parameter_value hps_0 {desired_emac0_clk_mhz} {250.0}
set_instance_parameter_value hps_0 {desired_emac1_clk_mhz} {250.0}
set_instance_parameter_value hps_0 {desired_gpio_db_clk_hz} {32000}
set_instance_parameter_value hps_0 {desired_l4_mp_clk_mhz} {100.0}
set_instance_parameter_value hps_0 {desired_l4_sp_clk_mhz} {100.0}
set_instance_parameter_value hps_0 {desired_mpu_clk_mhz} {925.0}
set_instance_parameter_value hps_0 {desired_nand_clk_mhz} {12.5}
set_instance_parameter_value hps_0 {desired_qspi_clk_mhz} {400.0}
set_instance_parameter_value hps_0 {desired_sdmmc_clk_mhz} {200.0}
set_instance_parameter_value hps_0 {desired_spi_m_clk_mhz} {200.0}
set_instance_parameter_value hps_0 {desired_usb_mp_clk_mhz} {200.0}
set_instance_parameter_value hps_0 {device_pll_info_manual} {{320000000 1600000000} {320000000 1000000000} {800000000 400000000 400000000}}
set_instance_parameter_value hps_0 {eosc1_clk_mhz} {25.0}
set_instance_parameter_value hps_0 {eosc2_clk_mhz} {25.0}
set_instance_parameter_value hps_0 {gpio_db_clk_div} {6249}
set_instance_parameter_value hps_0 {l3_mp_clk_div} {1}
set_instance_parameter_value hps_0 {l3_sp_clk_div} {1}
set_instance_parameter_value hps_0 {l4_mp_clk_div} {1}
set_instance_parameter_value hps_0 {l4_mp_clk_source} {1}
set_instance_parameter_value hps_0 {l4_sp_clk_div} {1}
set_instance_parameter_value hps_0 {l4_sp_clk_source} {1}
set_instance_parameter_value hps_0 {main_pll_c3} {3}
set_instance_parameter_value hps_0 {main_pll_c4} {3}
set_instance_parameter_value hps_0 {main_pll_c5} {15}
set_instance_parameter_value hps_0 {main_pll_m} {63}
set_instance_parameter_value hps_0 {main_pll_n} {0}
set_instance_parameter_value hps_0 {nand_clk_source} {2}
set_instance_parameter_value hps_0 {periph_pll_c0} {3}
set_instance_parameter_value hps_0 {periph_pll_c1} {3}
set_instance_parameter_value hps_0 {periph_pll_c2} {1}
set_instance_parameter_value hps_0 {periph_pll_c3} {19}
set_instance_parameter_value hps_0 {periph_pll_c4} {4}
set_instance_parameter_value hps_0 {periph_pll_c5} {9}
set_instance_parameter_value hps_0 {periph_pll_m} {79}
set_instance_parameter_value hps_0 {periph_pll_n} {1}
set_instance_parameter_value hps_0 {periph_pll_source} {0}
set_instance_parameter_value hps_0 {qspi_clk_source} {1}
set_instance_parameter_value hps_0 {sdmmc_clk_source} {2}
set_instance_parameter_value hps_0 {show_advanced_parameters} {0}
set_instance_parameter_value hps_0 {show_debug_info_as_warning_msg} {0}
set_instance_parameter_value hps_0 {show_warning_as_error_msg} {0}
set_instance_parameter_value hps_0 {spi_m_clk_div} {0}
set_instance_parameter_value hps_0 {usb_mp_clk_div} {0}
set_instance_parameter_value hps_0 {use_default_mpu_clk} {0}

add_instance hps_read_bit altera_avalon_pio 18.1
set_instance_parameter_value hps_read_bit {bitClearingEdgeCapReg} {0}
set_instance_parameter_value hps_read_bit {bitModifyingOutReg} {0}
set_instance_parameter_value hps_read_bit {captureEdge} {0}
set_instance_parameter_value hps_read_bit {direction} {Output}
set_instance_parameter_value hps_read_bit {edgeType} {RISING}
set_instance_parameter_value hps_read_bit {generateIRQ} {0}
set_instance_parameter_value hps_read_bit {irqType} {LEVEL}
set_instance_parameter_value hps_read_bit {resetValue} {0.0}
set_instance_parameter_value hps_read_bit {simDoTestBenchWiring} {0}
set_instance_parameter_value hps_read_bit {simDrivenValue} {0.0}
set_instance_parameter_value hps_read_bit {width} {1}

add_instance jtag_uart altera_avalon_jtag_uart 18.1
set_instance_parameter_value jtag_uart {allowMultipleConnections} {1}
set_instance_parameter_value jtag_uart {hubInstanceID} {0}
set_instance_parameter_value jtag_uart {readBufferDepth} {64}
set_instance_parameter_value jtag_uart {readIRQThreshold} {8}
set_instance_parameter_value jtag_uart {simInputCharacterStream} {}
set_instance_parameter_value jtag_uart {simInteractiveOptions} {INTERACTIVE_ASCII_OUTPUT}
set_instance_parameter_value jtag_uart {useRegistersForReadBuffer} {0}
set_instance_parameter_value jtag_uart {useRegistersForWriteBuffer} {0}
set_instance_parameter_value jtag_uart {useRelativePathForSimFile} {0}
set_instance_parameter_value jtag_uart {writeBufferDepth} {64}
set_instance_parameter_value jtag_uart {writeIRQThreshold} {8}

add_instance ledr altera_avalon_pio 18.1
set_instance_parameter_value ledr {bitClearingEdgeCapReg} {0}
set_instance_parameter_value ledr {bitModifyingOutReg} {0}
set_instance_parameter_value ledr {captureEdge} {0}
set_instance_parameter_value ledr {direction} {Output}
set_instance_parameter_value ledr {edgeType} {RISING}
set_instance_parameter_value ledr {generateIRQ} {0}
set_instance_parameter_value ledr {irqType} {LEVEL}
set_instance_parameter_value ledr {resetValue} {0.0}
set_instance_parameter_value ledr {simDoTestBenchWiring} {0}
set_instance_parameter_value ledr {simDrivenValue} {0.0}
set_instance_parameter_value ledr {width} {10}

add_instance mm_bridge_0 altera_avalon_mm_bridge 18.1
set_instance_parameter_value mm_bridge_0 {ADDRESS_UNITS} {SYMBOLS}
set_instance_parameter_value mm_bridge_0 {ADDRESS_WIDTH} {10}
set_instance_parameter_value mm_bridge_0 {DATA_WIDTH} {32}
set_instance_parameter_value mm_bridge_0 {LINEWRAPBURSTS} {0}
set_instance_parameter_value mm_bridge_0 {MAX_BURST_SIZE} {1}
set_instance_parameter_value mm_bridge_0 {MAX_PENDING_RESPONSES} {4}
set_instance_parameter_value mm_bridge_0 {PIPELINE_COMMAND} {1}
set_instance_parameter_value mm_bridge_0 {PIPELINE_RESPONSE} {1}
set_instance_parameter_value mm_bridge_0 {SYMBOL_WIDTH} {8}
set_instance_parameter_value mm_bridge_0 {USE_AUTO_ADDRESS_WIDTH} {1}
set_instance_parameter_value mm_bridge_0 {USE_RESPONSE} {0}

add_instance nios2_gen2 altera_nios2_gen2 18.1
set_instance_parameter_value nios2_gen2 {bht_ramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2 {breakOffset} {32}
set_instance_parameter_value nios2_gen2 {breakSlave} {None}
set_instance_parameter_value nios2_gen2 {cdx_enabled} {0}
set_instance_parameter_value nios2_gen2 {cpuArchRev} {1}
set_instance_parameter_value nios2_gen2 {cpuID} {0}
set_instance_parameter_value nios2_gen2 {cpuReset} {0}
set_instance_parameter_value nios2_gen2 {data_master_high_performance_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {data_master_high_performance_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {data_master_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {data_master_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {dcache_bursts} {false}
set_instance_parameter_value nios2_gen2 {dcache_numTCDM} {0}
set_instance_parameter_value nios2_gen2 {dcache_ramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2 {dcache_size} {2048}
set_instance_parameter_value nios2_gen2 {dcache_tagramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2 {dcache_victim_buf_impl} {ram}
set_instance_parameter_value nios2_gen2 {debug_OCIOnchipTrace} {_128}
set_instance_parameter_value nios2_gen2 {debug_assignJtagInstanceID} {0}
set_instance_parameter_value nios2_gen2 {debug_datatrigger} {0}
set_instance_parameter_value nios2_gen2 {debug_debugReqSignals} {0}
set_instance_parameter_value nios2_gen2 {debug_enabled} {1}
set_instance_parameter_value nios2_gen2 {debug_hwbreakpoint} {0}
set_instance_parameter_value nios2_gen2 {debug_jtagInstanceID} {0}
set_instance_parameter_value nios2_gen2 {debug_traceStorage} {onchip_trace}
set_instance_parameter_value nios2_gen2 {debug_traceType} {none}
set_instance_parameter_value nios2_gen2 {debug_triggerArming} {1}
set_instance_parameter_value nios2_gen2 {dividerType} {no_div}
set_instance_parameter_value nios2_gen2 {exceptionOffset} {32}
set_instance_parameter_value nios2_gen2 {exceptionSlave} {onchip_memory2.s1}
set_instance_parameter_value nios2_gen2 {fa_cache_line} {2}
set_instance_parameter_value nios2_gen2 {fa_cache_linesize} {0}
set_instance_parameter_value nios2_gen2 {flash_instruction_master_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {flash_instruction_master_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {icache_burstType} {None}
set_instance_parameter_value nios2_gen2 {icache_numTCIM} {0}
set_instance_parameter_value nios2_gen2 {icache_ramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2 {icache_size} {4096}
set_instance_parameter_value nios2_gen2 {icache_tagramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2 {impl} {Tiny}
set_instance_parameter_value nios2_gen2 {instruction_master_high_performance_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {instruction_master_high_performance_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {instruction_master_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {instruction_master_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {io_regionbase} {0}
set_instance_parameter_value nios2_gen2 {io_regionsize} {0}
set_instance_parameter_value nios2_gen2 {master_addr_map} {0}
set_instance_parameter_value nios2_gen2 {mmu_TLBMissExcOffset} {0}
set_instance_parameter_value nios2_gen2 {mmu_TLBMissExcSlave} {None}
set_instance_parameter_value nios2_gen2 {mmu_autoAssignTlbPtrSz} {1}
set_instance_parameter_value nios2_gen2 {mmu_enabled} {0}
set_instance_parameter_value nios2_gen2 {mmu_processIDNumBits} {8}
set_instance_parameter_value nios2_gen2 {mmu_ramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2 {mmu_tlbNumWays} {16}
set_instance_parameter_value nios2_gen2 {mmu_tlbPtrSz} {7}
set_instance_parameter_value nios2_gen2 {mmu_udtlbNumEntries} {6}
set_instance_parameter_value nios2_gen2 {mmu_uitlbNumEntries} {4}
set_instance_parameter_value nios2_gen2 {mpu_enabled} {0}
set_instance_parameter_value nios2_gen2 {mpu_minDataRegionSize} {12}
set_instance_parameter_value nios2_gen2 {mpu_minInstRegionSize} {12}
set_instance_parameter_value nios2_gen2 {mpu_numOfDataRegion} {8}
set_instance_parameter_value nios2_gen2 {mpu_numOfInstRegion} {8}
set_instance_parameter_value nios2_gen2 {mpu_useLimit} {0}
set_instance_parameter_value nios2_gen2 {mpx_enabled} {0}
set_instance_parameter_value nios2_gen2 {mul_32_impl} {2}
set_instance_parameter_value nios2_gen2 {mul_64_impl} {0}
set_instance_parameter_value nios2_gen2 {mul_shift_choice} {0}
set_instance_parameter_value nios2_gen2 {ocimem_ramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2 {ocimem_ramInit} {0}
set_instance_parameter_value nios2_gen2 {regfile_ramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2 {register_file_por} {0}
set_instance_parameter_value nios2_gen2 {resetOffset} {0}
set_instance_parameter_value nios2_gen2 {resetSlave} {onchip_memory2.s1}
set_instance_parameter_value nios2_gen2 {resetrequest_enabled} {1}
set_instance_parameter_value nios2_gen2 {setting_HBreakTest} {0}
set_instance_parameter_value nios2_gen2 {setting_HDLSimCachesCleared} {1}
set_instance_parameter_value nios2_gen2 {setting_activateMonitors} {1}
set_instance_parameter_value nios2_gen2 {setting_activateTestEndChecker} {0}
set_instance_parameter_value nios2_gen2 {setting_activateTrace} {0}
set_instance_parameter_value nios2_gen2 {setting_allow_break_inst} {0}
set_instance_parameter_value nios2_gen2 {setting_alwaysEncrypt} {1}
set_instance_parameter_value nios2_gen2 {setting_asic_add_scan_mode_input} {0}
set_instance_parameter_value nios2_gen2 {setting_asic_enabled} {0}
set_instance_parameter_value nios2_gen2 {setting_asic_synopsys_translate_on_off} {0}
set_instance_parameter_value nios2_gen2 {setting_asic_third_party_synthesis} {0}
set_instance_parameter_value nios2_gen2 {setting_avalonDebugPortPresent} {0}
set_instance_parameter_value nios2_gen2 {setting_bhtPtrSz} {8}
set_instance_parameter_value nios2_gen2 {setting_bigEndian} {0}
set_instance_parameter_value nios2_gen2 {setting_branchpredictiontype} {Dynamic}
set_instance_parameter_value nios2_gen2 {setting_breakslaveoveride} {0}
set_instance_parameter_value nios2_gen2 {setting_clearXBitsLDNonBypass} {1}
set_instance_parameter_value nios2_gen2 {setting_dc_ecc_present} {1}
set_instance_parameter_value nios2_gen2 {setting_disable_tmr_inj} {0}
set_instance_parameter_value nios2_gen2 {setting_disableocitrace} {0}
set_instance_parameter_value nios2_gen2 {setting_dtcm_ecc_present} {1}
set_instance_parameter_value nios2_gen2 {setting_ecc_present} {0}
set_instance_parameter_value nios2_gen2 {setting_ecc_sim_test_ports} {0}
set_instance_parameter_value nios2_gen2 {setting_exportHostDebugPort} {0}
set_instance_parameter_value nios2_gen2 {setting_exportPCB} {0}
set_instance_parameter_value nios2_gen2 {setting_export_large_RAMs} {0}
set_instance_parameter_value nios2_gen2 {setting_exportdebuginfo} {0}
set_instance_parameter_value nios2_gen2 {setting_exportvectors} {0}
set_instance_parameter_value nios2_gen2 {setting_fast_register_read} {0}
set_instance_parameter_value nios2_gen2 {setting_ic_ecc_present} {1}
set_instance_parameter_value nios2_gen2 {setting_interruptControllerType} {Internal}
set_instance_parameter_value nios2_gen2 {setting_itcm_ecc_present} {1}
set_instance_parameter_value nios2_gen2 {setting_mmu_ecc_present} {1}
set_instance_parameter_value nios2_gen2 {setting_oci_export_jtag_signals} {0}
set_instance_parameter_value nios2_gen2 {setting_oci_version} {1}
set_instance_parameter_value nios2_gen2 {setting_preciseIllegalMemAccessException} {0}
set_instance_parameter_value nios2_gen2 {setting_removeRAMinit} {0}
set_instance_parameter_value nios2_gen2 {setting_rf_ecc_present} {1}
set_instance_parameter_value nios2_gen2 {setting_shadowRegisterSets} {0}
set_instance_parameter_value nios2_gen2 {setting_showInternalSettings} {0}
set_instance_parameter_value nios2_gen2 {setting_showUnpublishedSettings} {0}
set_instance_parameter_value nios2_gen2 {setting_support31bitdcachebypass} {1}
set_instance_parameter_value nios2_gen2 {setting_tmr_output_disable} {0}
set_instance_parameter_value nios2_gen2 {setting_usedesignware} {0}
set_instance_parameter_value nios2_gen2 {shift_rot_impl} {1}
set_instance_parameter_value nios2_gen2 {tightly_coupled_data_master_0_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_data_master_0_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_data_master_1_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_data_master_1_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_data_master_2_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_data_master_2_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_data_master_3_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_data_master_3_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_instruction_master_0_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_instruction_master_0_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_instruction_master_1_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_instruction_master_1_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_instruction_master_2_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_instruction_master_2_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_instruction_master_3_paddr_base} {0}
set_instance_parameter_value nios2_gen2 {tightly_coupled_instruction_master_3_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2 {tmr_enabled} {0}
set_instance_parameter_value nios2_gen2 {tracefilename} {}
set_instance_parameter_value nios2_gen2 {userDefinedSettings} {}

add_instance onchip_memory2 altera_avalon_onchip_memory2 18.1
set_instance_parameter_value onchip_memory2 {allowInSystemMemoryContentEditor} {0}
set_instance_parameter_value onchip_memory2 {blockType} {AUTO}
set_instance_parameter_value onchip_memory2 {copyInitFile} {0}
set_instance_parameter_value onchip_memory2 {dataWidth} {64}
set_instance_parameter_value onchip_memory2 {dataWidth2} {32}
set_instance_parameter_value onchip_memory2 {dualPort} {0}
set_instance_parameter_value onchip_memory2 {ecc_enabled} {0}
set_instance_parameter_value onchip_memory2 {enPRInitMode} {0}
set_instance_parameter_value onchip_memory2 {enableDiffWidth} {0}
set_instance_parameter_value onchip_memory2 {initMemContent} {1}
set_instance_parameter_value onchip_memory2 {initializationFileName} {onchip_memory2}
set_instance_parameter_value onchip_memory2 {instanceID} {NONE}
set_instance_parameter_value onchip_memory2 {memorySize} {65536.0}
set_instance_parameter_value onchip_memory2 {readDuringWriteMode} {DONT_CARE}
set_instance_parameter_value onchip_memory2 {resetrequest_enabled} {1}
set_instance_parameter_value onchip_memory2 {simAllowMRAMContentsFile} {0}
set_instance_parameter_value onchip_memory2 {simMemInitOnlyFilename} {0}
set_instance_parameter_value onchip_memory2 {singleClockOperation} {0}
set_instance_parameter_value onchip_memory2 {slave1Latency} {1}
set_instance_parameter_value onchip_memory2 {slave2Latency} {1}
set_instance_parameter_value onchip_memory2 {useNonDefaultInitFile} {0}
set_instance_parameter_value onchip_memory2 {useShallowMemBlocks} {0}
set_instance_parameter_value onchip_memory2 {writable} {1}

add_instance sw altera_avalon_pio 18.1
set_instance_parameter_value sw {bitClearingEdgeCapReg} {0}
set_instance_parameter_value sw {bitModifyingOutReg} {0}
set_instance_parameter_value sw {captureEdge} {1}
set_instance_parameter_value sw {direction} {Input}
set_instance_parameter_value sw {edgeType} {ANY}
set_instance_parameter_value sw {generateIRQ} {1}
set_instance_parameter_value sw {irqType} {EDGE}
set_instance_parameter_value sw {resetValue} {0.0}
set_instance_parameter_value sw {simDoTestBenchWiring} {0}
set_instance_parameter_value sw {simDrivenValue} {0.0}
set_instance_parameter_value sw {width} {14}

add_instance sysid_qsys altera_avalon_sysid_qsys 18.1
set_instance_parameter_value sysid_qsys {id} {-1395322110}

add_instance timer altera_avalon_timer 18.1
set_instance_parameter_value timer {alwaysRun} {0}
set_instance_parameter_value timer {counterSize} {32}
set_instance_parameter_value timer {fixedPeriod} {0}
set_instance_parameter_value timer {period} {1}
set_instance_parameter_value timer {periodUnits} {MSEC}
set_instance_parameter_value timer {resetOutput} {0}
set_instance_parameter_value timer {snapshot} {1}
set_instance_parameter_value timer {timeoutPulseOutput} {0}
set_instance_parameter_value timer {watchdogPulse} {2}

# exported interfaces
add_interface clk clock sink
set_interface_property clk EXPORT_OF clk_50.clk_in
add_interface dcc_data_0_external_connection conduit end
set_interface_property dcc_data_0_external_connection EXPORT_OF dcc_data_0.external_connection
add_interface dcc_data_1_external_connection conduit end
set_interface_property dcc_data_1_external_connection EXPORT_OF ddc_data_1.external_connection
add_interface ddc_data_10_external_connection conduit end
set_interface_property ddc_data_10_external_connection EXPORT_OF ddc_data_10.external_connection
add_interface ddc_data_11_external_connection conduit end
set_interface_property ddc_data_11_external_connection EXPORT_OF ddc_data_11.external_connection
add_interface ddc_data_12_external_connection conduit end
set_interface_property ddc_data_12_external_connection EXPORT_OF ddc_data_12.external_connection
add_interface ddc_data_13_external_connection conduit end
set_interface_property ddc_data_13_external_connection EXPORT_OF ddc_data_13.external_connection
add_interface ddc_data_14_external_connection conduit end
set_interface_property ddc_data_14_external_connection EXPORT_OF ddc_data_14.external_connection
add_interface ddc_data_15_external_connection conduit end
set_interface_property ddc_data_15_external_connection EXPORT_OF ddc_data_15.external_connection
add_interface ddc_data_16_external_connection conduit end
set_interface_property ddc_data_16_external_connection EXPORT_OF ddc_data_16.external_connection
add_interface ddc_data_17_external_connection conduit end
set_interface_property ddc_data_17_external_connection EXPORT_OF ddc_data_17.external_connection
add_interface ddc_data_18_external_connection conduit end
set_interface_property ddc_data_18_external_connection EXPORT_OF ddc_data_18.external_connection
add_interface ddc_data_19_external_connection conduit end
set_interface_property ddc_data_19_external_connection EXPORT_OF ddc_data_19.external_connection
add_interface ddc_data_20_external_connection conduit end
set_interface_property ddc_data_20_external_connection EXPORT_OF ddc_data_20.external_connection
add_interface ddc_data_21_external_connection conduit end
set_interface_property ddc_data_21_external_connection EXPORT_OF ddc_data_21.external_connection
add_interface ddc_data_22_external_connection conduit end
set_interface_property ddc_data_22_external_connection EXPORT_OF ddc_data_22.external_connection
add_interface ddc_data_23_external_connection conduit end
set_interface_property ddc_data_23_external_connection EXPORT_OF ddc_data_23.external_connection
add_interface ddc_data_24_external_connection conduit end
set_interface_property ddc_data_24_external_connection EXPORT_OF ddc_data_24.external_connection
add_interface ddc_data_25_external_connection conduit end
set_interface_property ddc_data_25_external_connection EXPORT_OF ddc_data_25.external_connection
add_interface ddc_data_26_external_connection conduit end
set_interface_property ddc_data_26_external_connection EXPORT_OF ddc_data_26.external_connection
add_interface ddc_data_27_external_connection conduit end
set_interface_property ddc_data_27_external_connection EXPORT_OF ddc_data_27.external_connection
add_interface ddc_data_28_external_connection conduit end
set_interface_property ddc_data_28_external_connection EXPORT_OF ddc_data_28.external_connection
add_interface ddc_data_29_external_connection conduit end
set_interface_property ddc_data_29_external_connection EXPORT_OF ddc_data_29.external_connection
add_interface ddc_data_2_external_connection conduit end
set_interface_property ddc_data_2_external_connection EXPORT_OF ddc_data_2.external_connection
add_interface ddc_data_30_external_connection conduit end
set_interface_property ddc_data_30_external_connection EXPORT_OF ddc_data_30.external_connection
add_interface ddc_data_31_external_connection conduit end
set_interface_property ddc_data_31_external_connection EXPORT_OF ddc_data_31.external_connection
add_interface ddc_data_3_external_connection conduit end
set_interface_property ddc_data_3_external_connection EXPORT_OF ddc_data_3.external_connection
add_interface ddc_data_4_external_connection conduit end
set_interface_property ddc_data_4_external_connection EXPORT_OF ddc_data_4.external_connection
add_interface ddc_data_5_external_connection conduit end
set_interface_property ddc_data_5_external_connection EXPORT_OF ddc_data_5.external_connection
add_interface ddc_data_6_external_connection conduit end
set_interface_property ddc_data_6_external_connection EXPORT_OF ddc_data_6.external_connection
add_interface ddc_data_7_external_connection conduit end
set_interface_property ddc_data_7_external_connection EXPORT_OF ddc_data_7.external_connection
add_interface ddc_data_8_external_connection conduit end
set_interface_property ddc_data_8_external_connection EXPORT_OF ddc_data_8.external_connection
add_interface ddc_data_9_external_connection conduit end
set_interface_property ddc_data_9_external_connection EXPORT_OF ddc_data_9.external_connection
add_interface ddc_time_out_external_connection conduit end
set_interface_property ddc_time_out_external_connection EXPORT_OF ddc_time_out.external_connection
add_interface hps_0_f2h_cold_reset_req reset sink
set_interface_property hps_0_f2h_cold_reset_req EXPORT_OF hps_0.f2h_cold_reset_req
add_interface hps_0_f2h_debug_reset_req reset sink
set_interface_property hps_0_f2h_debug_reset_req EXPORT_OF hps_0.f2h_debug_reset_req
add_interface hps_0_f2h_dma_req0 conduit end
set_interface_property hps_0_f2h_dma_req0 EXPORT_OF hps_0.f2h_dma_req0
add_interface hps_0_f2h_dma_req1 conduit end
set_interface_property hps_0_f2h_dma_req1 EXPORT_OF hps_0.f2h_dma_req1
add_interface hps_0_f2h_stm_hw_events conduit end
set_interface_property hps_0_f2h_stm_hw_events EXPORT_OF hps_0.f2h_stm_hw_events
add_interface hps_0_f2h_warm_reset_req reset sink
set_interface_property hps_0_f2h_warm_reset_req EXPORT_OF hps_0.f2h_warm_reset_req
add_interface hps_0_h2f_reset reset source
set_interface_property hps_0_h2f_reset EXPORT_OF hps_0.h2f_reset
add_interface hps_0_hps_io conduit end
set_interface_property hps_0_hps_io EXPORT_OF hps_0.hps_io
add_interface hps_read_bit_external_connection conduit end
set_interface_property hps_read_bit_external_connection EXPORT_OF hps_read_bit.external_connection
add_interface ledr_external_connection conduit end
set_interface_property ledr_external_connection EXPORT_OF ledr.external_connection
add_interface memory conduit end
set_interface_property memory EXPORT_OF hps_0.memory
add_interface reset reset sink
set_interface_property reset EXPORT_OF clk_50.clk_in_reset
add_interface sw_external_connection conduit end
set_interface_property sw_external_connection EXPORT_OF sw.external_connection

# connections and connection parameters
add_connection clk_50.clk dcc_data_0.clk

add_connection clk_50.clk ddc_data_1.clk

add_connection clk_50.clk ddc_data_10.clk

add_connection clk_50.clk ddc_data_11.clk

add_connection clk_50.clk ddc_data_12.clk

add_connection clk_50.clk ddc_data_13.clk

add_connection clk_50.clk ddc_data_14.clk

add_connection clk_50.clk ddc_data_15.clk

add_connection clk_50.clk ddc_data_16.clk

add_connection clk_50.clk ddc_data_17.clk

add_connection clk_50.clk ddc_data_18.clk

add_connection clk_50.clk ddc_data_19.clk

add_connection clk_50.clk ddc_data_2.clk

add_connection clk_50.clk ddc_data_20.clk

add_connection clk_50.clk ddc_data_21.clk

add_connection clk_50.clk ddc_data_22.clk

add_connection clk_50.clk ddc_data_23.clk

add_connection clk_50.clk ddc_data_24.clk

add_connection clk_50.clk ddc_data_25.clk

add_connection clk_50.clk ddc_data_26.clk

add_connection clk_50.clk ddc_data_27.clk

add_connection clk_50.clk ddc_data_28.clk

add_connection clk_50.clk ddc_data_29.clk

add_connection clk_50.clk ddc_data_3.clk

add_connection clk_50.clk ddc_data_30.clk

add_connection clk_50.clk ddc_data_31.clk

add_connection clk_50.clk ddc_data_4.clk

add_connection clk_50.clk ddc_data_5.clk

add_connection clk_50.clk ddc_data_6.clk

add_connection clk_50.clk ddc_data_7.clk

add_connection clk_50.clk ddc_data_8.clk

add_connection clk_50.clk ddc_data_9.clk

add_connection clk_50.clk ddc_time_out.clk

add_connection clk_50.clk hps_0.f2h_axi_clock

add_connection clk_50.clk hps_0.f2h_sdram0_clock

add_connection clk_50.clk hps_0.h2f_axi_clock

add_connection clk_50.clk hps_0.h2f_lw_axi_clock

add_connection clk_50.clk hps_read_bit.clk

add_connection clk_50.clk jtag_uart.clk

add_connection clk_50.clk ledr.clk

add_connection clk_50.clk mm_bridge_0.clk

add_connection clk_50.clk nios2_gen2.clk

add_connection clk_50.clk onchip_memory2.clk1

add_connection clk_50.clk sw.clk

add_connection clk_50.clk sysid_qsys.clk

add_connection clk_50.clk timer.clk

add_connection clk_50.clk_reset dcc_data_0.reset

add_connection clk_50.clk_reset ddc_data_1.reset

add_connection clk_50.clk_reset ddc_data_10.reset

add_connection clk_50.clk_reset ddc_data_11.reset

add_connection clk_50.clk_reset ddc_data_12.reset

add_connection clk_50.clk_reset ddc_data_13.reset

add_connection clk_50.clk_reset ddc_data_14.reset

add_connection clk_50.clk_reset ddc_data_15.reset

add_connection clk_50.clk_reset ddc_data_16.reset

add_connection clk_50.clk_reset ddc_data_17.reset

add_connection clk_50.clk_reset ddc_data_18.reset

add_connection clk_50.clk_reset ddc_data_19.reset

add_connection clk_50.clk_reset ddc_data_2.reset

add_connection clk_50.clk_reset ddc_data_20.reset

add_connection clk_50.clk_reset ddc_data_21.reset

add_connection clk_50.clk_reset ddc_data_22.reset

add_connection clk_50.clk_reset ddc_data_23.reset

add_connection clk_50.clk_reset ddc_data_24.reset

add_connection clk_50.clk_reset ddc_data_25.reset

add_connection clk_50.clk_reset ddc_data_26.reset

add_connection clk_50.clk_reset ddc_data_27.reset

add_connection clk_50.clk_reset ddc_data_28.reset

add_connection clk_50.clk_reset ddc_data_29.reset

add_connection clk_50.clk_reset ddc_data_3.reset

add_connection clk_50.clk_reset ddc_data_30.reset

add_connection clk_50.clk_reset ddc_data_31.reset

add_connection clk_50.clk_reset ddc_data_4.reset

add_connection clk_50.clk_reset ddc_data_5.reset

add_connection clk_50.clk_reset ddc_data_6.reset

add_connection clk_50.clk_reset ddc_data_7.reset

add_connection clk_50.clk_reset ddc_data_8.reset

add_connection clk_50.clk_reset ddc_data_9.reset

add_connection clk_50.clk_reset ddc_time_out.reset

add_connection clk_50.clk_reset hps_read_bit.reset

add_connection clk_50.clk_reset jtag_uart.reset

add_connection clk_50.clk_reset ledr.reset

add_connection clk_50.clk_reset mm_bridge_0.reset

add_connection clk_50.clk_reset onchip_memory2.reset1

add_connection clk_50.clk_reset sw.reset

add_connection clk_50.clk_reset sysid_qsys.reset

add_connection clk_50.clk_reset timer.reset

add_connection hps_0.f2h_irq0 dcc_data_0.irq
set_connection_parameter_value hps_0.f2h_irq0/dcc_data_0.irq irqNumber {1}

add_connection hps_0.f2h_irq0 ddc_data_1.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_1.irq irqNumber {2}

add_connection hps_0.f2h_irq0 ddc_data_10.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_10.irq irqNumber {12}

add_connection hps_0.f2h_irq0 ddc_data_11.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_11.irq irqNumber {13}

add_connection hps_0.f2h_irq0 ddc_data_12.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_12.irq irqNumber {14}

add_connection hps_0.f2h_irq0 ddc_data_13.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_13.irq irqNumber {15}

add_connection hps_0.f2h_irq0 ddc_data_14.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_14.irq irqNumber {16}

add_connection hps_0.f2h_irq0 ddc_data_15.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_15.irq irqNumber {17}

add_connection hps_0.f2h_irq0 ddc_data_2.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_2.irq irqNumber {4}

add_connection hps_0.f2h_irq0 ddc_data_3.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_3.irq irqNumber {5}

add_connection hps_0.f2h_irq0 ddc_data_4.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_4.irq irqNumber {6}

add_connection hps_0.f2h_irq0 ddc_data_5.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_5.irq irqNumber {7}

add_connection hps_0.f2h_irq0 ddc_data_6.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_6.irq irqNumber {8}

add_connection hps_0.f2h_irq0 ddc_data_7.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_7.irq irqNumber {9}

add_connection hps_0.f2h_irq0 ddc_data_8.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_8.irq irqNumber {10}

add_connection hps_0.f2h_irq0 ddc_data_9.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_data_9.irq irqNumber {11}

add_connection hps_0.f2h_irq0 ddc_time_out.irq
set_connection_parameter_value hps_0.f2h_irq0/ddc_time_out.irq irqNumber {3}

add_connection hps_0.f2h_irq0 sw.irq
set_connection_parameter_value hps_0.f2h_irq0/sw.irq irqNumber {0}

add_connection hps_0.f2h_irq1 ddc_data_16.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_16.irq irqNumber {15}

add_connection hps_0.f2h_irq1 ddc_data_17.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_17.irq irqNumber {0}

add_connection hps_0.f2h_irq1 ddc_data_18.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_18.irq irqNumber {1}

add_connection hps_0.f2h_irq1 ddc_data_19.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_19.irq irqNumber {2}

add_connection hps_0.f2h_irq1 ddc_data_20.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_20.irq irqNumber {3}

add_connection hps_0.f2h_irq1 ddc_data_21.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_21.irq irqNumber {4}

add_connection hps_0.f2h_irq1 ddc_data_22.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_22.irq irqNumber {5}

add_connection hps_0.f2h_irq1 ddc_data_23.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_23.irq irqNumber {6}

add_connection hps_0.f2h_irq1 ddc_data_24.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_24.irq irqNumber {7}

add_connection hps_0.f2h_irq1 ddc_data_25.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_25.irq irqNumber {8}

add_connection hps_0.f2h_irq1 ddc_data_26.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_26.irq irqNumber {9}

add_connection hps_0.f2h_irq1 ddc_data_27.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_27.irq irqNumber {10}

add_connection hps_0.f2h_irq1 ddc_data_28.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_28.irq irqNumber {11}

add_connection hps_0.f2h_irq1 ddc_data_29.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_29.irq irqNumber {12}

add_connection hps_0.f2h_irq1 ddc_data_30.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_30.irq irqNumber {13}

add_connection hps_0.f2h_irq1 ddc_data_31.irq
set_connection_parameter_value hps_0.f2h_irq1/ddc_data_31.irq irqNumber {14}

add_connection hps_0.h2f_lw_axi_master mm_bridge_0.s0
set_connection_parameter_value hps_0.h2f_lw_axi_master/mm_bridge_0.s0 arbitrationPriority {1}
set_connection_parameter_value hps_0.h2f_lw_axi_master/mm_bridge_0.s0 baseAddress {0x0000}
set_connection_parameter_value hps_0.h2f_lw_axi_master/mm_bridge_0.s0 defaultConnection {0}

add_connection mm_bridge_0.m0 dcc_data_0.s1
set_connection_parameter_value mm_bridge_0.m0/dcc_data_0.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/dcc_data_0.s1 baseAddress {0x5000}
set_connection_parameter_value mm_bridge_0.m0/dcc_data_0.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_1.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_1.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_1.s1 baseAddress {0x6000}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_1.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_10.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_10.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_10.s1 baseAddress {0x0160}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_10.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_11.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_11.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_11.s1 baseAddress {0x0150}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_11.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_12.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_12.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_12.s1 baseAddress {0x0140}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_12.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_13.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_13.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_13.s1 baseAddress {0x0130}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_13.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_14.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_14.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_14.s1 baseAddress {0x0120}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_14.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_15.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_15.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_15.s1 baseAddress {0x0110}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_15.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_16.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_16.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_16.s1 baseAddress {0x0100}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_16.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_17.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_17.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_17.s1 baseAddress {0x00f0}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_17.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_18.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_18.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_18.s1 baseAddress {0x00e0}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_18.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_19.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_19.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_19.s1 baseAddress {0x00d0}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_19.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_2.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_2.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_2.s1 baseAddress {0x01e0}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_2.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_20.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_20.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_20.s1 baseAddress {0x00c0}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_20.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_21.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_21.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_21.s1 baseAddress {0x00b0}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_21.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_22.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_22.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_22.s1 baseAddress {0x00a0}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_22.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_23.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_23.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_23.s1 baseAddress {0x0090}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_23.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_24.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_24.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_24.s1 baseAddress {0x0080}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_24.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_25.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_25.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_25.s1 baseAddress {0x0070}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_25.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_26.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_26.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_26.s1 baseAddress {0x0060}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_26.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_27.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_27.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_27.s1 baseAddress {0x0050}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_27.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_28.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_28.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_28.s1 baseAddress {0x0040}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_28.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_29.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_29.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_29.s1 baseAddress {0x0030}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_29.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_3.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_3.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_3.s1 baseAddress {0x01d0}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_3.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_30.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_30.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_30.s1 baseAddress {0x0020}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_30.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_31.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_31.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_31.s1 baseAddress {0x0010}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_31.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_4.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_4.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_4.s1 baseAddress {0x01c0}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_4.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_5.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_5.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_5.s1 baseAddress {0x01b0}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_5.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_6.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_6.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_6.s1 baseAddress {0x01a0}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_6.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_7.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_7.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_7.s1 baseAddress {0x0190}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_7.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_8.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_8.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_8.s1 baseAddress {0x0180}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_8.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_data_9.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_data_9.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_9.s1 baseAddress {0x0170}
set_connection_parameter_value mm_bridge_0.m0/ddc_data_9.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 ddc_time_out.s1
set_connection_parameter_value mm_bridge_0.m0/ddc_time_out.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ddc_time_out.s1 baseAddress {0x7000}
set_connection_parameter_value mm_bridge_0.m0/ddc_time_out.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 hps_read_bit.s1
set_connection_parameter_value mm_bridge_0.m0/hps_read_bit.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/hps_read_bit.s1 baseAddress {0x8000}
set_connection_parameter_value mm_bridge_0.m0/hps_read_bit.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 jtag_uart.avalon_jtag_slave
set_connection_parameter_value mm_bridge_0.m0/jtag_uart.avalon_jtag_slave arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/jtag_uart.avalon_jtag_slave baseAddress {0x00020000}
set_connection_parameter_value mm_bridge_0.m0/jtag_uart.avalon_jtag_slave defaultConnection {0}

add_connection mm_bridge_0.m0 ledr.s1
set_connection_parameter_value mm_bridge_0.m0/ledr.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/ledr.s1 baseAddress {0x3000}
set_connection_parameter_value mm_bridge_0.m0/ledr.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 sw.s1
set_connection_parameter_value mm_bridge_0.m0/sw.s1 arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/sw.s1 baseAddress {0x4000}
set_connection_parameter_value mm_bridge_0.m0/sw.s1 defaultConnection {0}

add_connection mm_bridge_0.m0 sysid_qsys.control_slave
set_connection_parameter_value mm_bridge_0.m0/sysid_qsys.control_slave arbitrationPriority {1}
set_connection_parameter_value mm_bridge_0.m0/sysid_qsys.control_slave baseAddress {0x1000}
set_connection_parameter_value mm_bridge_0.m0/sysid_qsys.control_slave defaultConnection {0}

add_connection nios2_gen2.data_master jtag_uart.avalon_jtag_slave
set_connection_parameter_value nios2_gen2.data_master/jtag_uart.avalon_jtag_slave arbitrationPriority {1}
set_connection_parameter_value nios2_gen2.data_master/jtag_uart.avalon_jtag_slave baseAddress {0x00020000}
set_connection_parameter_value nios2_gen2.data_master/jtag_uart.avalon_jtag_slave defaultConnection {0}

add_connection nios2_gen2.data_master ledr.s1
set_connection_parameter_value nios2_gen2.data_master/ledr.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_gen2.data_master/ledr.s1 baseAddress {0x3000}
set_connection_parameter_value nios2_gen2.data_master/ledr.s1 defaultConnection {0}

add_connection nios2_gen2.data_master nios2_gen2.debug_mem_slave
set_connection_parameter_value nios2_gen2.data_master/nios2_gen2.debug_mem_slave arbitrationPriority {1}
set_connection_parameter_value nios2_gen2.data_master/nios2_gen2.debug_mem_slave baseAddress {0x0800}
set_connection_parameter_value nios2_gen2.data_master/nios2_gen2.debug_mem_slave defaultConnection {0}

add_connection nios2_gen2.data_master onchip_memory2.s1
set_connection_parameter_value nios2_gen2.data_master/onchip_memory2.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_gen2.data_master/onchip_memory2.s1 baseAddress {0x00030000}
set_connection_parameter_value nios2_gen2.data_master/onchip_memory2.s1 defaultConnection {0}

add_connection nios2_gen2.data_master sysid_qsys.control_slave
set_connection_parameter_value nios2_gen2.data_master/sysid_qsys.control_slave arbitrationPriority {1}
set_connection_parameter_value nios2_gen2.data_master/sysid_qsys.control_slave baseAddress {0x1000}
set_connection_parameter_value nios2_gen2.data_master/sysid_qsys.control_slave defaultConnection {0}

add_connection nios2_gen2.data_master timer.s1
set_connection_parameter_value nios2_gen2.data_master/timer.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_gen2.data_master/timer.s1 baseAddress {0x1020}
set_connection_parameter_value nios2_gen2.data_master/timer.s1 defaultConnection {0}

add_connection nios2_gen2.debug_reset_request nios2_gen2.reset

add_connection nios2_gen2.instruction_master nios2_gen2.debug_mem_slave
set_connection_parameter_value nios2_gen2.instruction_master/nios2_gen2.debug_mem_slave arbitrationPriority {1}
set_connection_parameter_value nios2_gen2.instruction_master/nios2_gen2.debug_mem_slave baseAddress {0x0800}
set_connection_parameter_value nios2_gen2.instruction_master/nios2_gen2.debug_mem_slave defaultConnection {0}

add_connection nios2_gen2.instruction_master onchip_memory2.s1
set_connection_parameter_value nios2_gen2.instruction_master/onchip_memory2.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_gen2.instruction_master/onchip_memory2.s1 baseAddress {0x00030000}
set_connection_parameter_value nios2_gen2.instruction_master/onchip_memory2.s1 defaultConnection {0}

add_connection nios2_gen2.irq jtag_uart.irq
set_connection_parameter_value nios2_gen2.irq/jtag_uart.irq irqNumber {1}

add_connection nios2_gen2.irq timer.irq
set_connection_parameter_value nios2_gen2.irq/timer.irq irqNumber {0}

# interconnect requirements
set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {HANDSHAKE}
set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {1}

save_system {soc_system.qsys}

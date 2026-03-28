set moduleName MATMUL_Pipeline_load_A
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {MATMUL_Pipeline_load_A}
set C_modelType { void 0 }
set C_modelArgList {
	{ A_15 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_14 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_13 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_12 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_11 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_10 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_9 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_8 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_7 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_6 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_5 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_4 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_3 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A_1 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ A int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ s_axis_V_data_V int 512 regular {axi_s 0 volatile  { s_axis Data } }  }
	{ s_axis_V_keep_V int 64 regular {axi_s 0 volatile  { s_axis Keep } }  }
	{ s_axis_V_strb_V int 64 regular {axi_s 0 volatile  { s_axis Strb } }  }
	{ s_axis_V_last_V int 1 regular {axi_s 0 volatile  { s_axis Last } }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "A_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 76
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_axis_TVALID sc_in sc_logic 1 invld 16 } 
	{ A_15_address0 sc_out sc_lv 4 signal 0 } 
	{ A_15_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_15_we0 sc_out sc_logic 1 signal 0 } 
	{ A_15_d0 sc_out sc_lv 32 signal 0 } 
	{ A_14_address0 sc_out sc_lv 4 signal 1 } 
	{ A_14_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_14_we0 sc_out sc_logic 1 signal 1 } 
	{ A_14_d0 sc_out sc_lv 32 signal 1 } 
	{ A_13_address0 sc_out sc_lv 4 signal 2 } 
	{ A_13_ce0 sc_out sc_logic 1 signal 2 } 
	{ A_13_we0 sc_out sc_logic 1 signal 2 } 
	{ A_13_d0 sc_out sc_lv 32 signal 2 } 
	{ A_12_address0 sc_out sc_lv 4 signal 3 } 
	{ A_12_ce0 sc_out sc_logic 1 signal 3 } 
	{ A_12_we0 sc_out sc_logic 1 signal 3 } 
	{ A_12_d0 sc_out sc_lv 32 signal 3 } 
	{ A_11_address0 sc_out sc_lv 4 signal 4 } 
	{ A_11_ce0 sc_out sc_logic 1 signal 4 } 
	{ A_11_we0 sc_out sc_logic 1 signal 4 } 
	{ A_11_d0 sc_out sc_lv 32 signal 4 } 
	{ A_10_address0 sc_out sc_lv 4 signal 5 } 
	{ A_10_ce0 sc_out sc_logic 1 signal 5 } 
	{ A_10_we0 sc_out sc_logic 1 signal 5 } 
	{ A_10_d0 sc_out sc_lv 32 signal 5 } 
	{ A_9_address0 sc_out sc_lv 4 signal 6 } 
	{ A_9_ce0 sc_out sc_logic 1 signal 6 } 
	{ A_9_we0 sc_out sc_logic 1 signal 6 } 
	{ A_9_d0 sc_out sc_lv 32 signal 6 } 
	{ A_8_address0 sc_out sc_lv 4 signal 7 } 
	{ A_8_ce0 sc_out sc_logic 1 signal 7 } 
	{ A_8_we0 sc_out sc_logic 1 signal 7 } 
	{ A_8_d0 sc_out sc_lv 32 signal 7 } 
	{ A_7_address0 sc_out sc_lv 4 signal 8 } 
	{ A_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ A_7_we0 sc_out sc_logic 1 signal 8 } 
	{ A_7_d0 sc_out sc_lv 32 signal 8 } 
	{ A_6_address0 sc_out sc_lv 4 signal 9 } 
	{ A_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ A_6_we0 sc_out sc_logic 1 signal 9 } 
	{ A_6_d0 sc_out sc_lv 32 signal 9 } 
	{ A_5_address0 sc_out sc_lv 4 signal 10 } 
	{ A_5_ce0 sc_out sc_logic 1 signal 10 } 
	{ A_5_we0 sc_out sc_logic 1 signal 10 } 
	{ A_5_d0 sc_out sc_lv 32 signal 10 } 
	{ A_4_address0 sc_out sc_lv 4 signal 11 } 
	{ A_4_ce0 sc_out sc_logic 1 signal 11 } 
	{ A_4_we0 sc_out sc_logic 1 signal 11 } 
	{ A_4_d0 sc_out sc_lv 32 signal 11 } 
	{ A_3_address0 sc_out sc_lv 4 signal 12 } 
	{ A_3_ce0 sc_out sc_logic 1 signal 12 } 
	{ A_3_we0 sc_out sc_logic 1 signal 12 } 
	{ A_3_d0 sc_out sc_lv 32 signal 12 } 
	{ A_2_address0 sc_out sc_lv 4 signal 13 } 
	{ A_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ A_2_we0 sc_out sc_logic 1 signal 13 } 
	{ A_2_d0 sc_out sc_lv 32 signal 13 } 
	{ A_1_address0 sc_out sc_lv 4 signal 14 } 
	{ A_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ A_1_we0 sc_out sc_logic 1 signal 14 } 
	{ A_1_d0 sc_out sc_lv 32 signal 14 } 
	{ A_address0 sc_out sc_lv 4 signal 15 } 
	{ A_ce0 sc_out sc_logic 1 signal 15 } 
	{ A_we0 sc_out sc_logic 1 signal 15 } 
	{ A_d0 sc_out sc_lv 32 signal 15 } 
	{ s_axis_TDATA sc_in sc_lv 512 signal 16 } 
	{ s_axis_TREADY sc_out sc_logic 1 inacc 19 } 
	{ s_axis_TKEEP sc_in sc_lv 64 signal 17 } 
	{ s_axis_TSTRB sc_in sc_lv 64 signal 18 } 
	{ s_axis_TLAST sc_in sc_lv 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_V_data_V", "role": "default" }} , 
 	{ "name": "A_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_15", "role": "address0" }} , 
 	{ "name": "A_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_15", "role": "ce0" }} , 
 	{ "name": "A_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_15", "role": "we0" }} , 
 	{ "name": "A_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_15", "role": "d0" }} , 
 	{ "name": "A_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_14", "role": "address0" }} , 
 	{ "name": "A_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_14", "role": "ce0" }} , 
 	{ "name": "A_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_14", "role": "we0" }} , 
 	{ "name": "A_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_14", "role": "d0" }} , 
 	{ "name": "A_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_13", "role": "address0" }} , 
 	{ "name": "A_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_13", "role": "ce0" }} , 
 	{ "name": "A_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_13", "role": "we0" }} , 
 	{ "name": "A_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_13", "role": "d0" }} , 
 	{ "name": "A_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_12", "role": "address0" }} , 
 	{ "name": "A_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_12", "role": "ce0" }} , 
 	{ "name": "A_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_12", "role": "we0" }} , 
 	{ "name": "A_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_12", "role": "d0" }} , 
 	{ "name": "A_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_11", "role": "address0" }} , 
 	{ "name": "A_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_11", "role": "ce0" }} , 
 	{ "name": "A_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_11", "role": "we0" }} , 
 	{ "name": "A_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_11", "role": "d0" }} , 
 	{ "name": "A_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_10", "role": "address0" }} , 
 	{ "name": "A_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_10", "role": "ce0" }} , 
 	{ "name": "A_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_10", "role": "we0" }} , 
 	{ "name": "A_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_10", "role": "d0" }} , 
 	{ "name": "A_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_9", "role": "address0" }} , 
 	{ "name": "A_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_9", "role": "ce0" }} , 
 	{ "name": "A_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_9", "role": "we0" }} , 
 	{ "name": "A_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_9", "role": "d0" }} , 
 	{ "name": "A_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_8", "role": "address0" }} , 
 	{ "name": "A_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_8", "role": "ce0" }} , 
 	{ "name": "A_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_8", "role": "we0" }} , 
 	{ "name": "A_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_8", "role": "d0" }} , 
 	{ "name": "A_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_7", "role": "address0" }} , 
 	{ "name": "A_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_7", "role": "ce0" }} , 
 	{ "name": "A_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_7", "role": "we0" }} , 
 	{ "name": "A_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_7", "role": "d0" }} , 
 	{ "name": "A_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_6", "role": "address0" }} , 
 	{ "name": "A_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_6", "role": "ce0" }} , 
 	{ "name": "A_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_6", "role": "we0" }} , 
 	{ "name": "A_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_6", "role": "d0" }} , 
 	{ "name": "A_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_5", "role": "address0" }} , 
 	{ "name": "A_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_5", "role": "ce0" }} , 
 	{ "name": "A_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_5", "role": "we0" }} , 
 	{ "name": "A_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5", "role": "d0" }} , 
 	{ "name": "A_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_4", "role": "address0" }} , 
 	{ "name": "A_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_4", "role": "ce0" }} , 
 	{ "name": "A_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_4", "role": "we0" }} , 
 	{ "name": "A_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4", "role": "d0" }} , 
 	{ "name": "A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_3", "role": "address0" }} , 
 	{ "name": "A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce0" }} , 
 	{ "name": "A_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "we0" }} , 
 	{ "name": "A_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "d0" }} , 
 	{ "name": "A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_2", "role": "address0" }} , 
 	{ "name": "A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce0" }} , 
 	{ "name": "A_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "we0" }} , 
 	{ "name": "A_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "d0" }} , 
 	{ "name": "A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_1", "role": "address0" }} , 
 	{ "name": "A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce0" }} , 
 	{ "name": "A_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "we0" }} , 
 	{ "name": "A_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "d0" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we0" }} , 
 	{ "name": "A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "d0" }} , 
 	{ "name": "s_axis_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_axis_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MATMUL_Pipeline_load_A",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_axis_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis",
				"BlockSignal" : [
					{"Name" : "s_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis"},
			{"Name" : "s_axis_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis"},
			{"Name" : "s_axis_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis"}],
		"Loop" : [
			{"Name" : "load_A", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MATMUL_Pipeline_load_A {
		A_15 {Type O LastRead -1 FirstWrite 0}
		A_14 {Type O LastRead -1 FirstWrite 0}
		A_13 {Type O LastRead -1 FirstWrite 0}
		A_12 {Type O LastRead -1 FirstWrite 0}
		A_11 {Type O LastRead -1 FirstWrite 0}
		A_10 {Type O LastRead -1 FirstWrite 0}
		A_9 {Type O LastRead -1 FirstWrite 0}
		A_8 {Type O LastRead -1 FirstWrite 0}
		A_7 {Type O LastRead -1 FirstWrite 0}
		A_6 {Type O LastRead -1 FirstWrite 0}
		A_5 {Type O LastRead -1 FirstWrite 0}
		A_4 {Type O LastRead -1 FirstWrite 0}
		A_3 {Type O LastRead -1 FirstWrite 0}
		A_2 {Type O LastRead -1 FirstWrite 0}
		A_1 {Type O LastRead -1 FirstWrite 0}
		A {Type O LastRead -1 FirstWrite 0}
		s_axis_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_last_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_15 { ap_memory {  { A_15_address0 mem_address 1 4 }  { A_15_ce0 mem_ce 1 1 }  { A_15_we0 mem_we 1 1 }  { A_15_d0 mem_din 1 32 } } }
	A_14 { ap_memory {  { A_14_address0 mem_address 1 4 }  { A_14_ce0 mem_ce 1 1 }  { A_14_we0 mem_we 1 1 }  { A_14_d0 mem_din 1 32 } } }
	A_13 { ap_memory {  { A_13_address0 mem_address 1 4 }  { A_13_ce0 mem_ce 1 1 }  { A_13_we0 mem_we 1 1 }  { A_13_d0 mem_din 1 32 } } }
	A_12 { ap_memory {  { A_12_address0 mem_address 1 4 }  { A_12_ce0 mem_ce 1 1 }  { A_12_we0 mem_we 1 1 }  { A_12_d0 mem_din 1 32 } } }
	A_11 { ap_memory {  { A_11_address0 mem_address 1 4 }  { A_11_ce0 mem_ce 1 1 }  { A_11_we0 mem_we 1 1 }  { A_11_d0 mem_din 1 32 } } }
	A_10 { ap_memory {  { A_10_address0 mem_address 1 4 }  { A_10_ce0 mem_ce 1 1 }  { A_10_we0 mem_we 1 1 }  { A_10_d0 mem_din 1 32 } } }
	A_9 { ap_memory {  { A_9_address0 mem_address 1 4 }  { A_9_ce0 mem_ce 1 1 }  { A_9_we0 mem_we 1 1 }  { A_9_d0 mem_din 1 32 } } }
	A_8 { ap_memory {  { A_8_address0 mem_address 1 4 }  { A_8_ce0 mem_ce 1 1 }  { A_8_we0 mem_we 1 1 }  { A_8_d0 mem_din 1 32 } } }
	A_7 { ap_memory {  { A_7_address0 mem_address 1 4 }  { A_7_ce0 mem_ce 1 1 }  { A_7_we0 mem_we 1 1 }  { A_7_d0 mem_din 1 32 } } }
	A_6 { ap_memory {  { A_6_address0 mem_address 1 4 }  { A_6_ce0 mem_ce 1 1 }  { A_6_we0 mem_we 1 1 }  { A_6_d0 mem_din 1 32 } } }
	A_5 { ap_memory {  { A_5_address0 mem_address 1 4 }  { A_5_ce0 mem_ce 1 1 }  { A_5_we0 mem_we 1 1 }  { A_5_d0 mem_din 1 32 } } }
	A_4 { ap_memory {  { A_4_address0 mem_address 1 4 }  { A_4_ce0 mem_ce 1 1 }  { A_4_we0 mem_we 1 1 }  { A_4_d0 mem_din 1 32 } } }
	A_3 { ap_memory {  { A_3_address0 mem_address 1 4 }  { A_3_ce0 mem_ce 1 1 }  { A_3_we0 mem_we 1 1 }  { A_3_d0 mem_din 1 32 } } }
	A_2 { ap_memory {  { A_2_address0 mem_address 1 4 }  { A_2_ce0 mem_ce 1 1 }  { A_2_we0 mem_we 1 1 }  { A_2_d0 mem_din 1 32 } } }
	A_1 { ap_memory {  { A_1_address0 mem_address 1 4 }  { A_1_ce0 mem_ce 1 1 }  { A_1_we0 mem_we 1 1 }  { A_1_d0 mem_din 1 32 } } }
	A { ap_memory {  { A_address0 mem_address 1 4 }  { A_ce0 mem_ce 1 1 }  { A_we0 mem_we 1 1 }  { A_d0 mem_din 1 32 } } }
	s_axis_V_data_V { axis {  { s_axis_TVALID in_vld 0 1 }  { s_axis_TDATA in_data 0 512 } } }
	s_axis_V_keep_V { axis {  { s_axis_TKEEP in_data 0 64 } } }
	s_axis_V_strb_V { axis {  { s_axis_TSTRB in_data 0 64 } } }
	s_axis_V_last_V { axis {  { s_axis_TREADY in_acc 1 1 }  { s_axis_TLAST in_data 0 1 } } }
}

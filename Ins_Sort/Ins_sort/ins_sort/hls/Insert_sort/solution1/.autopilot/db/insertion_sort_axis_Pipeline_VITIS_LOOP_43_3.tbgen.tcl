set moduleName insertion_sort_axis_Pipeline_VITIS_LOOP_43_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {insertion_sort_axis_Pipeline_VITIS_LOOP_43_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln39 int 7 regular  }
	{ arr int 32 regular {array 25 { 2 3 } 1 1 }  }
	{ arr_1 int 32 regular {array 25 { 2 3 } 1 1 }  }
	{ arr_2 int 32 regular {array 25 { 2 3 } 1 1 }  }
	{ arr_3 int 32 regular {array 25 { 2 3 } 1 1 }  }
	{ key int 32 regular  }
	{ j_out int 7 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln39", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "arr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "arr_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "arr_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "arr_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "key", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "j_out", "interface" : "wire", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln39 sc_in sc_lv 7 signal 0 } 
	{ arr_address0 sc_out sc_lv 5 signal 1 } 
	{ arr_ce0 sc_out sc_logic 1 signal 1 } 
	{ arr_we0 sc_out sc_logic 1 signal 1 } 
	{ arr_d0 sc_out sc_lv 32 signal 1 } 
	{ arr_q0 sc_in sc_lv 32 signal 1 } 
	{ arr_1_address0 sc_out sc_lv 5 signal 2 } 
	{ arr_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ arr_1_we0 sc_out sc_logic 1 signal 2 } 
	{ arr_1_d0 sc_out sc_lv 32 signal 2 } 
	{ arr_1_q0 sc_in sc_lv 32 signal 2 } 
	{ arr_2_address0 sc_out sc_lv 5 signal 3 } 
	{ arr_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ arr_2_we0 sc_out sc_logic 1 signal 3 } 
	{ arr_2_d0 sc_out sc_lv 32 signal 3 } 
	{ arr_2_q0 sc_in sc_lv 32 signal 3 } 
	{ arr_3_address0 sc_out sc_lv 5 signal 4 } 
	{ arr_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ arr_3_we0 sc_out sc_logic 1 signal 4 } 
	{ arr_3_d0 sc_out sc_lv 32 signal 4 } 
	{ arr_3_q0 sc_in sc_lv 32 signal 4 } 
	{ key sc_in sc_lv 32 signal 5 } 
	{ j_out sc_out sc_lv 7 signal 6 } 
	{ j_out_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln39", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "zext_ln39", "role": "default" }} , 
 	{ "name": "arr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "arr", "role": "address0" }} , 
 	{ "name": "arr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr", "role": "ce0" }} , 
 	{ "name": "arr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr", "role": "we0" }} , 
 	{ "name": "arr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr", "role": "d0" }} , 
 	{ "name": "arr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr", "role": "q0" }} , 
 	{ "name": "arr_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "arr_1", "role": "address0" }} , 
 	{ "name": "arr_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr_1", "role": "ce0" }} , 
 	{ "name": "arr_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr_1", "role": "we0" }} , 
 	{ "name": "arr_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_1", "role": "d0" }} , 
 	{ "name": "arr_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_1", "role": "q0" }} , 
 	{ "name": "arr_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "arr_2", "role": "address0" }} , 
 	{ "name": "arr_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr_2", "role": "ce0" }} , 
 	{ "name": "arr_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr_2", "role": "we0" }} , 
 	{ "name": "arr_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_2", "role": "d0" }} , 
 	{ "name": "arr_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_2", "role": "q0" }} , 
 	{ "name": "arr_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "arr_3", "role": "address0" }} , 
 	{ "name": "arr_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr_3", "role": "ce0" }} , 
 	{ "name": "arr_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr_3", "role": "we0" }} , 
 	{ "name": "arr_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_3", "role": "d0" }} , 
 	{ "name": "arr_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_3", "role": "q0" }} , 
 	{ "name": "key", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "key", "role": "default" }} , 
 	{ "name": "j_out", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "j_out", "role": "default" }} , 
 	{ "name": "j_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "j_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "insertion_sort_axis_Pipeline_VITIS_LOOP_43_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln39", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arr_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arr_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arr_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "key", "Type" : "None", "Direction" : "I"},
			{"Name" : "j_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_4_2_32_1_1_U11", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	insertion_sort_axis_Pipeline_VITIS_LOOP_43_3 {
		zext_ln39 {Type I LastRead 0 FirstWrite -1}
		arr {Type IO LastRead 1 FirstWrite 3}
		arr_1 {Type IO LastRead 1 FirstWrite 3}
		arr_2 {Type IO LastRead 1 FirstWrite 3}
		arr_3 {Type IO LastRead 1 FirstWrite 3}
		key {Type I LastRead 0 FirstWrite -1}
		j_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	zext_ln39 { ap_none {  { zext_ln39 in_data 0 7 } } }
	arr { ap_memory {  { arr_address0 mem_address 1 5 }  { arr_ce0 mem_ce 1 1 }  { arr_we0 mem_we 1 1 }  { arr_d0 mem_din 1 32 }  { arr_q0 in_data 0 32 } } }
	arr_1 { ap_memory {  { arr_1_address0 mem_address 1 5 }  { arr_1_ce0 mem_ce 1 1 }  { arr_1_we0 mem_we 1 1 }  { arr_1_d0 mem_din 1 32 }  { arr_1_q0 in_data 0 32 } } }
	arr_2 { ap_memory {  { arr_2_address0 mem_address 1 5 }  { arr_2_ce0 mem_ce 1 1 }  { arr_2_we0 mem_we 1 1 }  { arr_2_d0 mem_din 1 32 }  { arr_2_q0 in_data 0 32 } } }
	arr_3 { ap_memory {  { arr_3_address0 mem_address 1 5 }  { arr_3_ce0 mem_ce 1 1 }  { arr_3_we0 mem_we 1 1 }  { arr_3_d0 mem_din 1 32 }  { arr_3_q0 in_data 0 32 } } }
	key { ap_none {  { key in_data 0 32 } } }
	j_out { ap_vld {  { j_out out_data 1 7 }  { j_out_ap_vld out_vld 1 1 } } }
}

set C_TypeInfoList {{ 
"edge_det" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"video": [[], {"array": [ {"scalar": "int"}, [10000]]}] }, {"sob_x1": [[], {"array": [ {"scalar": "int"}, [10000]]}] }, {"sob_y1": [[], {"array": [ {"scalar": "int"}, [10000]]}] }],[],""]
}}
set moduleName edge_det
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {edge_det}
set C_modelType { void 0 }
set C_modelArgList {
	{ video int 32 regular {array 10000 { 1 3 } 1 1 }  }
	{ sob_x1 int 32 regular {array 10000 { 0 3 } 0 1 }  }
	{ sob_y1 int 32 regular {array 10000 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "video", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "video","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9999,"step" : 1}]}]}]} , 
 	{ "Name" : "sob_x1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sob_x1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9999,"step" : 1}]}]}]} , 
 	{ "Name" : "sob_y1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sob_y1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9999,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ video_address0 sc_out sc_lv 14 signal 0 } 
	{ video_ce0 sc_out sc_logic 1 signal 0 } 
	{ video_q0 sc_in sc_lv 32 signal 0 } 
	{ sob_x1_address0 sc_out sc_lv 14 signal 1 } 
	{ sob_x1_ce0 sc_out sc_logic 1 signal 1 } 
	{ sob_x1_we0 sc_out sc_logic 1 signal 1 } 
	{ sob_x1_d0 sc_out sc_lv 32 signal 1 } 
	{ sob_y1_address0 sc_out sc_lv 14 signal 2 } 
	{ sob_y1_ce0 sc_out sc_logic 1 signal 2 } 
	{ sob_y1_we0 sc_out sc_logic 1 signal 2 } 
	{ sob_y1_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "video_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "video", "role": "address0" }} , 
 	{ "name": "video_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "video", "role": "ce0" }} , 
 	{ "name": "video_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "video", "role": "q0" }} , 
 	{ "name": "sob_x1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "sob_x1", "role": "address0" }} , 
 	{ "name": "sob_x1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sob_x1", "role": "ce0" }} , 
 	{ "name": "sob_x1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sob_x1", "role": "we0" }} , 
 	{ "name": "sob_x1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sob_x1", "role": "d0" }} , 
 	{ "name": "sob_y1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "sob_y1", "role": "address0" }} , 
 	{ "name": "sob_y1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sob_y1", "role": "ce0" }} , 
 	{ "name": "sob_y1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sob_y1", "role": "we0" }} , 
 	{ "name": "sob_y1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sob_y1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "edge_det",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution_fu_199"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_convolution_fu_199"}],
		"Port" : [
			{"Name" : "video", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sob_x1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sob_y1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sob_x", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_convolution_fu_199", "Port" : "operatr"}]},
			{"Name" : "sob_y", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_convolution_fu_199", "Port" : "operatr"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sob_x_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sob_y_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution_fu_199", "Parent" : "0",
		"CDFG" : "convolution",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "operatr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "block_r", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	edge_det {
		video {Type I LastRead 4 FirstWrite -1}
		sob_x1 {Type O LastRead -1 FirstWrite 2}
		sob_y1 {Type O LastRead -1 FirstWrite 2}
		sob_x {Type I LastRead -1 FirstWrite -1}
		sob_y {Type I LastRead -1 FirstWrite -1}}
	convolution {
		operatr {Type I LastRead 2 FirstWrite -1}
		block_r {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20201", "Max" : "790201"}
	, {"Name" : "Interval", "Min" : "20202", "Max" : "790202"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	video { ap_memory {  { video_address0 mem_address 1 14 }  { video_ce0 mem_ce 1 1 }  { video_q0 mem_dout 0 32 } } }
	sob_x1 { ap_memory {  { sob_x1_address0 mem_address 1 14 }  { sob_x1_ce0 mem_ce 1 1 }  { sob_x1_we0 mem_we 1 1 }  { sob_x1_d0 mem_din 1 32 } } }
	sob_y1 { ap_memory {  { sob_y1_address0 mem_address 1 14 }  { sob_y1_ce0 mem_ce 1 1 }  { sob_y1_we0 mem_we 1 1 }  { sob_y1_d0 mem_din 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

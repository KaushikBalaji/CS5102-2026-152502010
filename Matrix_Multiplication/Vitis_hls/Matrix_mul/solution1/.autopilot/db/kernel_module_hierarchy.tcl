set ModuleHierarchy {[{
"Name" : "MATMUL","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_MATMUL_Pipeline_load_A_fu_2170","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "load_A","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_MATMUL_Pipeline_load_B_fu_2198","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "load_B","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_MATMUL_Pipeline_row_fu_2466","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "row","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_MATMUL_Pipeline_store_fu_2998","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "store","ID" : "8","Type" : "pipeline"},]},]
}]}
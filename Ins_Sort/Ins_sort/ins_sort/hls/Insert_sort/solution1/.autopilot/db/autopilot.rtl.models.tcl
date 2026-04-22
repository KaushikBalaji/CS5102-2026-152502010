set SynModuleInfo {
  {SRCNAME insertion_sort_axis_Pipeline_VITIS_LOOP_31_1 MODELNAME insertion_sort_axis_Pipeline_VITIS_LOOP_31_1 RTLNAME insertion_sort_axis_insertion_sort_axis_Pipeline_VITIS_LOOP_31_1
    SUBMODULES {
      {MODELNAME insertion_sort_axis_flow_control_loop_pipe_sequential_init RTLNAME insertion_sort_axis_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME insertion_sort_axis_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME insertion_sort_axis_Pipeline_VITIS_LOOP_43_3 MODELNAME insertion_sort_axis_Pipeline_VITIS_LOOP_43_3 RTLNAME insertion_sort_axis_insertion_sort_axis_Pipeline_VITIS_LOOP_43_3
    SUBMODULES {
      {MODELNAME insertion_sort_axis_mux_4_2_32_1_1 RTLNAME insertion_sort_axis_mux_4_2_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME insertion_sort_axis_Pipeline_VITIS_LOOP_53_4 MODELNAME insertion_sort_axis_Pipeline_VITIS_LOOP_53_4 RTLNAME insertion_sort_axis_insertion_sort_axis_Pipeline_VITIS_LOOP_53_4}
  {SRCNAME insertion_sort_axis MODELNAME insertion_sort_axis RTLNAME insertion_sort_axis IS_TOP 1
    SUBMODULES {
      {MODELNAME insertion_sort_axis_arr_RAM_AUTO_1R1W RTLNAME insertion_sort_axis_arr_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME insertion_sort_axis_control_s_axi RTLNAME insertion_sort_axis_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME insertion_sort_axis_regslice_both RTLNAME insertion_sort_axis_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME insertion_sort_axis_regslice_both_U}
    }
  }
}

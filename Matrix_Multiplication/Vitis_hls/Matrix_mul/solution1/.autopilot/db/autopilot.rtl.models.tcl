set SynModuleInfo {
  {SRCNAME MATMUL_Pipeline_load_A MODELNAME MATMUL_Pipeline_load_A RTLNAME MATMUL_MATMUL_Pipeline_load_A
    SUBMODULES {
      {MODELNAME MATMUL_flow_control_loop_pipe_sequential_init RTLNAME MATMUL_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MATMUL_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME MATMUL_Pipeline_load_B MODELNAME MATMUL_Pipeline_load_B RTLNAME MATMUL_MATMUL_Pipeline_load_B}
  {SRCNAME MATMUL_Pipeline_row MODELNAME MATMUL_Pipeline_row RTLNAME MATMUL_MATMUL_Pipeline_row
    SUBMODULES {
      {MODELNAME MATMUL_mul_32s_32s_32_2_1 RTLNAME MATMUL_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MATMUL_Pipeline_store MODELNAME MATMUL_Pipeline_store RTLNAME MATMUL_MATMUL_Pipeline_store
    SUBMODULES {
      {MODELNAME MATMUL_mux_16_4_32_1_1 RTLNAME MATMUL_mux_16_4_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MATMUL MODELNAME MATMUL RTLNAME MATMUL IS_TOP 1
    SUBMODULES {
      {MODELNAME MATMUL_A_RAM_AUTO_1R1W RTLNAME MATMUL_A_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MATMUL_regslice_both RTLNAME MATMUL_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME MATMUL_regslice_both_U}
    }
  }
}

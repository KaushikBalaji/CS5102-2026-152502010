# TO run the command line
# Vitis_HLS/2023.1/bin/vitis_hls -i


set project_name "matmul"
set top_function "MATMUL"
set solution_name "solution1"

set design_file "matmul_naive.cpp"
set tb_file "matmul_tb.cpp"
set part_name "xc7z020clg484-1"
set clk_period 10

if {![file exists $design_file]} {
    puts "ERROR: Design file $design_file not found!"
    exit 1
}

if {![file exists $tb_file]} {
    puts "ERROR: Testbench file $tb_file not found!"
    exit 1
}

puts "All required files found."

# Create project
open_project -reset $project_name
set_top $top_function
add_files $design_file
add_files -tb $tb_file

# CREATE SOLUTION

open_solution -reset $solution_name
set_part $part_name
create_clock -period $clk_period -name default

# csim_design

# C Synthesis
csynth_design

# Optional: RTL Co-Simulation
# cosim_design

# Optional: Export RTL
# export_design -format ip_catalog

puts "HLS Flow Completed Successfully!"
exit

# TO run the command line
# Vitis_HLS/2023.1/bin/vitis_hls -i

# log_file -noappend log_file.log

set project_name "matmul"
set top_function "MATMUL"
set solution_name "solution1"

set design_file "matmul_stream.cpp"
set tb_file "matmul_stream_tb.cpp"
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

# Copy reports to top-level folder for easy access
file copy -force "$project_name/$solution_name/syn/report/MATMUL_csynth.rpt" "reports/csynth_stream_report.rpt"

file copy -force "$project_name/$solution_name/syn/report/csynth_design_size.rpt" "reports/design_stream_size.rpt"


# Optional: RTL Co-Simulation
# cosim_design > cosim.log

# Optional: Export RTL
export_design -format ip_catalog
# file copy -force "$project_name/$solution_name/impl/export.zip" "export.zip"

file copy -force "vitis_hls.log" "reports/vitis_hls_stream.log"

puts "HLS Flow Completed Successfully!"
exit

############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project edge_prj
set_top edge_det
add_files edge_prj/main.c
add_files -tb edge_prj/gray.txt
add_files -tb edge_prj/in.txt
add_files -tb edge_prj/test.c
open_solution "solution1"
set_part {xczu7ev-ffvc1156-2-i}
create_clock -period 10 -name default
set_clock_uncertainty 0.125
source "./edge_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog

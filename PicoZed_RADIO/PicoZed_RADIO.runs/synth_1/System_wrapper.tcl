# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
set_param simulator.modelsimInstallPath C:/questasim64_10.4/win64
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -id {IP_Flow 19-3373}  -string {{CRITICAL WARNING: [IP_Flow 19-3373] File Group 'xilinx_productguide (Product Guide)': File group does not contain any files.}}  -suppress 

create_project -in_memory -part xc7z030sbg485-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.cache/wt [current_project]
set_property parent.project_path C:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:picozed_7030:part0:1.0 [current_project]
set_property ip_repo_paths C:/Xilinx/Projects/threshold_IP_hls_old [current_project]
add_files C:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/System.bd
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_processing_system7_0_0/System_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_axi_vdma_0_0/System_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_axi_vdma_0_0/System_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_axi_vdma_0_0/System_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_xbar_1/System_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_rst_processing_system7_0_100M_0/System_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_rst_processing_system7_0_100M_0/System_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_rst_processing_system7_0_100M_0/System_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_xbar_2/System_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_auto_pc_0/System_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_auto_pc_1/System_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_auto_us_0/System_auto_us_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/ip/System_auto_us_0/System_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all C:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/System_ooc.xdc]
set_property is_locked true [get_files C:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/System.bd]

read_vhdl -library xil_defaultlib C:/Xilinx/Projects/PicoZed_RADIO/PicoZed_RADIO.srcs/sources_1/bd/System/hdl/System_wrapper.vhd
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
catch { write_hwdef -file System_wrapper.hwdef }
synth_design -top System_wrapper -part xc7z030sbg485-1
write_checkpoint -noxdef System_wrapper.dcp
catch { report_utilization -file System_wrapper_utilization_synth.rpt -pb System_wrapper_utilization_synth.pb }

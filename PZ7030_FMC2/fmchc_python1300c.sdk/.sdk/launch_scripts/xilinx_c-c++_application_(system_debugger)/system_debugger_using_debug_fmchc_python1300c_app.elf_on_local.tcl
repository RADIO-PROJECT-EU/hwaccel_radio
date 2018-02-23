connect -url tcp:127.0.0.1:3121
source C:/Avnet/hdl/Projects/fmchc_python1300c/PZ7030_FMC2/fmchc_python1300c.sdk/fmchc_python1300c_hw/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
loadhw C:/Avnet/hdl/Projects/fmchc_python1300c/PZ7030_FMC2/fmchc_python1300c.sdk/fmchc_python1300c_hw/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
dow C:/Avnet/hdl/Projects/fmchc_python1300c/PZ7030_FMC2/fmchc_python1300c.sdk/fmchc_python1300c_app/Debug/fmchc_python1300c_app.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
con

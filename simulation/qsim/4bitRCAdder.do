onerror {quit -f}
vlib work
vlog -work work 4bitRCAdder.vo
vlog -work work 4bitRCAdder.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.fourbitRCAdder_vlg_vec_tst
vcd file -direction 4bitRCAdder.msim.vcd
vcd add -internal fourbitRCAdder_vlg_vec_tst/*
vcd add -internal fourbitRCAdder_vlg_vec_tst/i1/*
add wave /*
run -all

vlog -work work D:/University/Subjects/EE 177/4bitRCAdder/simulation/modelsim/Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.fourbitRCAdder_vlg_vec_tst
onerror {resume}
add wave {fourbitRCAdder_vlg_vec_tst/i1/a}
add wave {fourbitRCAdder_vlg_vec_tst/i1/a[3]}
add wave {fourbitRCAdder_vlg_vec_tst/i1/a[2]}
add wave {fourbitRCAdder_vlg_vec_tst/i1/a[1]}
add wave {fourbitRCAdder_vlg_vec_tst/i1/a[0]}
add wave {fourbitRCAdder_vlg_vec_tst/i1/b}
add wave {fourbitRCAdder_vlg_vec_tst/i1/b[3]}
add wave {fourbitRCAdder_vlg_vec_tst/i1/b[2]}
add wave {fourbitRCAdder_vlg_vec_tst/i1/b[1]}
add wave {fourbitRCAdder_vlg_vec_tst/i1/b[0]}
add wave {fourbitRCAdder_vlg_vec_tst/i1/carry}
add wave {fourbitRCAdder_vlg_vec_tst/i1/sum}
add wave {fourbitRCAdder_vlg_vec_tst/i1/sum[3]}
add wave {fourbitRCAdder_vlg_vec_tst/i1/sum[2]}
add wave {fourbitRCAdder_vlg_vec_tst/i1/sum[1]}
add wave {fourbitRCAdder_vlg_vec_tst/i1/sum[0]}
run -all

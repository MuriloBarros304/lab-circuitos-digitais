onerror {quit -f}
vlib work
vlog -work work d7seg.vo
vlog -work work d7seg.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.d7seg_vlg_vec_tst
vcd file -direction d7seg.msim.vcd
vcd add -internal d7seg_vlg_vec_tst/*
vcd add -internal d7seg_vlg_vec_tst/i1/*
add wave /*
run -all

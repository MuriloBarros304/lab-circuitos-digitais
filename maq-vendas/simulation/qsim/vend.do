onerror {quit -f}
vlib work
vlog -work work vend.vo
vlog -work work vend.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.vend_vlg_vec_tst
vcd file -direction vend.msim.vcd
vcd add -internal vend_vlg_vec_tst/*
vcd add -internal vend_vlg_vec_tst/i1/*
add wave /*
run -all

onerror {quit -f}
vlib work
vlog -work work latchd.vo
vlog -work work latchd.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.latchd_vlg_vec_tst
vcd file -direction latchd.msim.vcd
vcd add -internal latchd_vlg_vec_tst/*
vcd add -internal latchd_vlg_vec_tst/i1/*
add wave /*
run -all

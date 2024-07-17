onerror {quit -f}
vlib work
vlog -work work calc.vo
vlog -work work calc.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.calc_vlg_vec_tst
vcd file -direction calc.msim.vcd
vcd add -internal calc_vlg_vec_tst/*
vcd add -internal calc_vlg_vec_tst/i1/*
add wave /*
run -all

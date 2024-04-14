onerror {quit -f}
vlib work
vlog -work work d7segcomp.vo
vlog -work work d7segcomp.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.d7segcomp_vlg_vec_tst
vcd file -direction d7segcomp.msim.vcd
vcd add -internal d7segcomp_vlg_vec_tst/*
vcd add -internal d7segcomp_vlg_vec_tst/i1/*
add wave /*
run -all

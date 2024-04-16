onerror {quit -f}
vlib work
vlog -work work regFlipflop.vo
vlog -work work regFlipflop.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.regFlipflop_vlg_vec_tst
vcd file -direction regFlipflop.msim.vcd
vcd add -internal regFlipflop_vlg_vec_tst/*
vcd add -internal regFlipflop_vlg_vec_tst/i1/*
add wave /*
run -all

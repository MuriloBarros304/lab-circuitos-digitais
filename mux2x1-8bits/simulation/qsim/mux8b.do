onerror {quit -f}
vlib work
vlog -work work mux8b.vo
vlog -work work mux8b.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mux8b_vlg_vec_tst
vcd file -direction mux8b.msim.vcd
vcd add -internal mux8b_vlg_vec_tst/*
vcd add -internal mux8b_vlg_vec_tst/i1/*
add wave /*
run -all

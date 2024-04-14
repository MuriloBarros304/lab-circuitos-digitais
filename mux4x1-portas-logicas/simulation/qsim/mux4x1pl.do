onerror {quit -f}
vlib work
vlog -work work mux4x1pl.vo
vlog -work work mux4x1pl.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mux4x1pl_vlg_vec_tst
vcd file -direction mux4x1pl.msim.vcd
vcd add -internal mux4x1pl_vlg_vec_tst/*
vcd add -internal mux4x1pl_vlg_vec_tst/i1/*
add wave /*
run -all

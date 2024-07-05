onerror {quit -f}
vlib work
vlog -work work decrementador.vo
vlog -work work decrementador.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.decrementador_vlg_vec_tst
vcd file -direction decrementador.msim.vcd
vcd add -internal decrementador_vlg_vec_tst/*
vcd add -internal decrementador_vlg_vec_tst/i1/*
add wave /*
run -all

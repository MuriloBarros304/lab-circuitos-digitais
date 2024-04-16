onerror {quit -f}
vlib work
vlog -work work regLatch.vo
vlog -work work regLatch.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.regLatch_vlg_vec_tst
vcd file -direction regLatch.msim.vcd
vcd add -internal regLatch_vlg_vec_tst/*
vcd add -internal regLatch_vlg_vec_tst/i1/*
add wave /*
run -all

onerror {exit -code 1}
vlib work
vlog -work work my_first_fpga.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.my_first_fpga_vlg_vec_tst -voptargs="+acc"
vcd file -direction my_first_fpga.msim.vcd
vcd add -internal my_first_fpga_vlg_vec_tst/*
vcd add -internal my_first_fpga_vlg_vec_tst/i1/*
run -all
quit -f

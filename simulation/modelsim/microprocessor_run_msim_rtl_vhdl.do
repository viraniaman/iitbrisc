transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/types.vhd}
vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/datapath.vhd}
vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/mux4.vhd}
vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/sign_extender.vhd}
vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/mux8.vhd}
vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/priority_encoder.vhd}
vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/general_register.vhd}
vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/mux2.vhd}
vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/alu.vhd}
vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/register_file.vhd}
vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/memory.vhd}
vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/microprocessor.vhd}
vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/uP.vhd}

vcom -93 -work work {C:/Users/pratonian/Desktop/iitbrisc/microprocessor_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  microprocessor_testbench

add wave *
view structure
view signals
run 10 us

transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/UNIVERSAL/Desktop/Lab4 {C:/Users/UNIVERSAL/Desktop/Lab4/VGAControler_tb.sv}
vlog -sv -work work +incdir+C:/Users/UNIVERSAL/Desktop/Lab4 {C:/Users/UNIVERSAL/Desktop/Lab4/VGA640x480.sv}
vlog -sv -work work +incdir+C:/Users/UNIVERSAL/Desktop/Lab4 {C:/Users/UNIVERSAL/Desktop/Lab4/VGAControler.sv}
vlog -sv -work work +incdir+C:/Users/UNIVERSAL/Desktop/Lab4 {C:/Users/UNIVERSAL/Desktop/Lab4/CLKDivider.sv}


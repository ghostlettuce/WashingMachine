transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/audiovisuais/Desktop/WashingMachine/WashingMachine/WashingMachine07.vhd}
vcom -93 -work work {C:/Users/audiovisuais/Desktop/WashingMachine/WashingMachine/WashingMAchineFSM.vhd}
vcom -93 -work work {C:/Users/audiovisuais/Desktop/WashingMachine/WashingMachine/TimerAuxFSM.vhd}
vcom -93 -work work {C:/Users/audiovisuais/Desktop/WashingMachine/WashingMachine/DebounceUnit.vhd}


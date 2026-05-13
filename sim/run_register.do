if [file exists "work"] {vdel -all}
vlib work
vcom -2008 +acc ../hdl/MUX4_1.vhd
vcom -2008 +acc ../hdl/JK_FF.vhd
vcom -2008 +acc ../hdl/MY_COMPONENTS.vhd
vcom -2008 +acc ../hdl/REGISTER4.vhd
vcom -2008 +acc ../hdl/REGISTER4_TB.vhd

vsim REGISTER4_TB -t 1ps -displaymsgmode both -debugDB -lib work -do "onbreak {resume};  log /* -r; \
    add wave -position end  sim:/REGISTER4_TB/*; 
    run -all; quit" -wlf top.wlf -l top.log
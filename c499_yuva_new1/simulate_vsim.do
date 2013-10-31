set VLIB /cad/digital/rtl2gds/rtl2gds_install/LIB/lib/tsmc018/lib/osu018_stdcells.v 

set RTLLANG verilog 
global toplevel 
set TB /home/users/nanditha/Documents/utility/c499_yuva_new1/test_c499.v 
set LANG verilog 
set TB_TOP test_c499 


vlib work 
# TB and library inputs
vlog   $VLIB c499_clk_opFF_modelsim.v
vlog   $TB
# TB module name and THE simulate command
vsim $TB_TOP -t 100ps 

add wave * 
 #Uncomment out the next line if required 
 #add list * 
run 100us 
#If the add list above was uncommented, then uncomment the following line as well, to store the list file 
#write list -window .main_pane.mdi.interior.cs.vm.paneset.cli_1.wf.clip.cs list_script.lst 


quit -f 
 
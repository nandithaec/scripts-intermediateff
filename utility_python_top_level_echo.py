#!/usr/bin/env python

#Example usage: python utility_python_top_level_echo.py --rtl=/home/users/nanditha/Documents/utility/FF_optimisation/c880_opFF/c880_clk_opFF.v --mod=c880_clk_opFF --idelay 1.1 --odelay 1.1 --ipff iDFF --opff oDFF --test=/home/users/nanditha/Documents/utility/FF_optimisation/c880_opFF/test_c880.v --tb_mod=test_c880 --clk=250 --run=100us --design=c880_opFF --tech=180 --num=10 --group 10 --path=/home/external/iitb/nanditha/simulations/FF_optimisation/c880_opFF  --std_lib osu018_stdcells_correct_vdd_gnd.sp  --proc_node 1 --ppn 10 --days 00 --hrs 00 --mins 10 --script python_utility3_yuva_echo_wt_6cycles.py


#This script does a synthesis, place and route of the vhd/verilog file using rtl2gds. The pnr verilog file is modified to include fwrite statements to write the FF outputs to a reference file. This verilog file simulated using modelsim and the reference FF output values written to a text file.


import optparse
import re,os
import fileinput
import subprocess
import time
from optparse import OptionParser

parser = OptionParser('This is the top level script for this utility which calculates the probability of multiple bit-flips given atleast one bit-flip in case of a soft error event (particle strike). The inputs for this script are mentioned below in the options. All of them are mandatory arguments. Overall this script does the following:\n\n 1.It reads in an RTL (vhdl/verilog) file and its testbench. Connect input FFs to all inputs and output FFs to all outputs. Name all input FFs with a single name (say iDFF_*) and output FFs as say oDFF_* \n2.It needs a Standard cell library in spice format(by default we have 180nm files)\n3.Synthesis, place and route is carried out using rtl2gds utility (uses SoC Encounter and Design Compiler)\n4.The post layout verilog netlist is simulated by invoking Modelsim. The reference input and  output values are stored at every clock cycle, in a file \n5.The post layout verilog netlist is converted to spice using rtl2gds utility\n6.The design in spice is instantiated and simulation parameters added to make it simulatable. This is the reference spice file\n7.Now, a random clock cycle (t) is picked, and its reference inputs are read from the reference file written by modelsim. These are fed into the reference spice file. A random gate (g) and a random drain in this gate is picked to which a glitch(k) is injected at a random time instant in the clock cycle. This, multiple spice decks are generated for different g,t and k values. The expected output values of these chosen cases are read from the reference RTL output file (from modelsim) and written into a separate file\n8.These are distributed across a cluster of machines using GNU Parallel and simulated using ngspice\n9.Results of each simulation is a csv file containing the output signal values. All the csv files are combined into one file.\n10.The output values of spice simulation are compared with those from RTL simulation and a file is written out, which contains the difference between the 2 values. A \'1\' is written out if there is a bit-flip and a \'0\' if there is no flip\n11.The number of cases in which there was single flip, multiple flips, double flip, triple and atleast one flip are reported. This utility calculates the probability of multiple flips given atleast one flip. \n\nSo this means that, if there is a single particle strike causing a single glitch, and if it happens to cause a single bit-flip (fault), what is the probability that in such cases, more than one fault is likely to occur. If this probability is large, it indicates that, a single strike is likely to cause multiple faults at a high probability\n\nFew important points for this utility to work:\n1. Make sure the RTL design has ONLY one clock signal and is named as \'clk\'\n2. Make sure that the clock frequency that you input to this utility is reasonable enough that the spice file will actually simulate and respond to inputs as per the clk rate. For eg., If there are a few hundred gates at 180nm technology, the circuit may only respond at say 125MHz, where as for a circuit with 20 gates, it might respond at 1GHz. Make sure you get this right.\n3. If you are simulating a purely combinational circuit, make sure you add D Flipflops at the outputs of the circuit. And the port convention should be (Q,D,CLK) to match with the std cell library definitions\n\nAuthors:Nanditha Rao(nanditha@ee.iitb.ac.in)\nShahbaz Sarik(shahbaz@ee.iitb.ac.in)\nAdvisor:Prof. Madhav. P. Desai (madhav@ee.iitb.ac.in) at IITBombay\n')

parser.add_option("-v","--rtl", help='Enter the ENTIRE path of the RTL (verilog or vhdl) including the RTL file name',dest='rtl')
parser.add_option("-m","--mod", help='Enter the entity name(vhdl) or module name (verilog)',dest='module')
parser.add_option("--idelay", help='Enter the I/O input delay in nanoseconds(as defined by Synopsys design compiler), for eg., if clk period=2ns, and setup time is 0.8ns, set input delay=1.2ns.. leave some guardband.. so set it as 1ns. ',dest='input_delay')
parser.add_option("--odelay", help='Enter the I/O output delay in nanoseconds(as defined by Synopsys design compiler)',dest='output_delay')
parser.add_option("--ipff", dest='ip_FF', help='Enter the instance name of input FFs from the input RTL(verilog/vhd) file).')
parser.add_option("--opff", dest='op_FF', help='Enter the instance name of output FFs from the input RTL(verilog/vhd) file).')

#########################################################################

parser.add_option("-t","--test", help='Enter the path of the testbench (vhd/verilog) file for simulating the post layout RTL file, include the filename along with extension as part of this path',dest='test_path')
parser.add_option("-b","--tb_mod", help='Enter the test bench module name that needs to be simulated',dest='test_module')
parser.add_option("-c","--clk", help='Enter the clk frequency in MHz, for eg., if 900MHz, enter 900',dest='clkfreq')
parser.add_option("-r","--run", help='Enter the duration of the simulation run. e.g., 1us or 1 us',dest='runtime')

#########################################################################
parser.add_option("-l", "--std_lib",dest='std_lib', help='Enter the file name of the standard cell library (sp file), including the file extension')
parser.add_option("-d", "--design", dest="design_folder",help="Enter the name of the design folder (your current working dir) which will be copied to the 48-core cluster to run simulations parallely")
parser.add_option("--tech",dest='tech',  help='Enter the technology node that you want to simulate, for eg.,180 for 180nm')
parser.add_option("-n", "--num",dest='num',  help='Enter the number of spice decks to be generated and simulated')
parser.add_option("--group",dest='group',  help='Enter the number of spice decks to be simulated at a time. For eg., if -n option is 10000, and say we want to run 100 at a time, then enter 100')
parser.add_option("-p", "--path", dest="folder",help="Enter the ENTIRE path to your design folder (your working dir)- either this machine or remote machine where simulations will be run. The name of the folder there should be the same as the name of the folder being copied from the current machine. IF remote machine, enter /home/user1/simulations/<design_folder_name>")
#########################################################################
parser.add_option("--proc_node",dest='nodes', help='Enter the number of processor nodes you would need')
parser.add_option("--ppn",dest='ppn', help='Enter the number of cores per processor you would need (max 16 per processor)')
parser.add_option("--days",dest='days', help='Enter the walltime- number of days. If it does not take >1 day, enter 00')
parser.add_option("--hrs",dest='hrs', help='Enter the walltime- number of hours. If it does not take >1 hour, enter 00')
parser.add_option("--mins",dest='mins', help='Enter the walltime- number of minutes in addition to the num of hrs. If nothing to enter, enter 00')
parser.add_option("--script",dest='script', help='Enter the name of the python script to be executed on the Pune CDAC cluster, which will be submitted to the job queue. Enter the file extension (.py) as well')
#########################################################################

#This is the most important line which will parse the cmd line arguments
(options, args) = parser.parse_args()

rtl=options.rtl
module=options.module
clkfreq=options.clkfreq
test_path=options.test_path
test_module=options.test_module
runtime=options.runtime
########################
io_input_delay= options.input_delay
io_output_delay=options.output_delay
ip_FF=options.ip_FF
op_FF=options.op_FF

########################
std_lib = options.std_lib
design_folder=options.design_folder
techn=options.tech
num=options.num
########################
path_folder=options.folder
group=options.group
########################
nodes=options.nodes
ppn=options.ppn
days=options.days
hrs=options.hrs
mins=options.mins
script=options.script

#Example usage: python python1_read_RTL_syn_pnr.py -f decoder.vhd -m decoder_behav_pnr -clk 900
os.system('python python1_read_RTL_syn_pnr.py -f %s -m %s -c %s --idelay %s --odelay %s --ipff %s --opff %s' %(rtl,module,clkfreq,io_input_delay,io_output_delay,ip_FF,op_FF))

print('Done 1st script rtl+pnr\n')
time.sleep(5)

#Example usage: python python2_run_qrc_spice_extraction.py -m decoder_behav_pnr
os.system('python python2_run_qrc_spice_extraction.py -m %s' %module)

print('Done 2nd script QRC extracting spice\n')
time.sleep(5)

#Example usage: perl perl2_outwrtr.pl -v pnr/op_data/decoder_behav_pnr_final.v -m decoder_behav_pnr
os.system('perl modperl2_outwrtr_new.pl -v pnr/op_data/%s_final.v -m %s' %(module,module))

print('Done creating modelsim simulation file\n')
time.sleep(5)

##Example usage: python python3_create_simdo_vsim.py -rtl decoder_behav_pnr_modelsim.v -tb test_decoder_pnr.vhd -tb_mod t_decoder_pnr -time 1us
os.system('python python3_create_simdo_vsim.py -v %s_modelsim.v -t %s -b %s -r %s' %(module,test_path,test_module,runtime))

print('Done modelsim simulation\n')
time.sleep(5)
####################################################################################################################################################################


##Example usage: perl GlitchLibGen.pl -i osu018_stdcells_correct_vdd_gnd.sp- this file will be provided by us for the 180nm technology
#Create a glitched std cell library file for 180nm techn
os.system('perl GlitchLibGen.pl -i %s' %std_lib)
print "***Created glitch library..\n"
time.sleep(5)

##Generate a template simulatable spice netlist from the dspf file generated after pnr. This would include all .ic, Voltage sources, meas, tran, control, param etc
#NetlistFormat.pl
#perl NetlstFrmt.pl -v decoder_behav_pnr_modelsim.v -s pnr/op_data/decoder_behav_pnr_final.dspf -l glitch_osu018_stdcells_correct_allcells.sp -c 1e9 -t 180 -m decoder_behav_pnr
os.system('perl NetlstFrmt_echo.pl -v %s_modelsim.v  -s %s.dspf -l glitch_%s -c %s -t %s -m %s' %(module,module,std_lib,clkfreq,techn, module))
print "***Done modifying the spice file to make it simulatable. File available in current directory reference_spice.sp\n"
time.sleep(5)

os.system('python python_create_jobscript.py -m %s -p %s -d %s -t %s -n %s --group %s --clk %s --std_lib %s  --proc_node %s --ppn %s --days %s --hrs %s --mins %s --script %s' %(module,path_folder,design_folder,techn,num,group,clkfreq,std_lib,nodes,ppn,days,hrs,mins,script))
time.sleep(5)

#Copy the entire Current directory to the machine where the simulations will be run in parallel. If running it on the 48-core cluster under the username: user1, password: user123 and copying to the folder /home/user1/simulations. Files will HAVE to be run from the remote machine,since the slave machines are connected only to the master and not to the outside world. So, these slave machines can ONLY be accessed by the master node.
#print "\nCopying current working directory to remote cluster to run simulations parallely\n"
#os.system('scp -r ../%s user1@10.107.105.201:/home/user1/simulations' %design_folder)

#Copy to the Pune CDAC cluster
"""
os.system('scp -r ../%s nanditha@yuva.cdac.in:/home/external/iitb/nanditha/simulations' %design_folder)
print "Done copying files\n"
print "Now connecting to the remote machine. Once connected with your password, scripts at that location will be executed..\n"

####################################################################################################################################################################

#os.system('ssh user1@10.107.105.201 python %s/python_utility3_remote_seed_echo.py -n %s -m %s -p %s -d %s -t %s --group %s --clk %s --std_lib %s' %(path_folder,num,module,path_folder,design_folder,techn,group,clkfreq,std_lib))

print('Executing jobscript remotely on the pune cdac server machine\n')

#os.system('ssh nanditha@yuva.cdac.in qsub /home/external/iitb/nanditha/simulations/%s/jobscript.txt' %(design_folder))
"""






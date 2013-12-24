#!/usr/bin/env python
#Read in a RTL file, do synthesis and placement, route
#Example usage: python python1_read_RTL_syn_pnr_FFopt.py -f /home/users/nanditha/Documents/utility/c499_PNN/c499_clk_opFF.v -m c499_clk_opFF -c 100 --idelay 1.1 --odelay 0.7 --ipff iDFF --opff oDFF
#This script does FF placement optimisation during synthesis

import optparse
import re,os
import fileinput
import subprocess, time
from optparse import OptionParser
import fileinput
import sys

def replace_line_in_file(file,searchExp,replaceExp):
    for line in fileinput.input(file, inplace=1):
        if searchExp in line:
            line = line.replace(searchExp,replaceExp)
        sys.stdout.write(line)
        
parser = OptionParser('This script reads in a vhdl or verilog file (RTL) and its test bench. It invokes rtl2gds utility to do synthesis and placement and route. The requirements of rtl2gds are the following tools: Design Compiler, SoC Encounter and Modelsim. The inputs to the script are listed as arguments below, which are all necessary arguments.\n The outputs of this script are same as the outputs of the rtl2gds utility. It creates varioous folders:man1, pnr, rtl, simulation, synthesis and template in the current working directory.\nThe files of interest to us are the following:\n1. pnr/op_data/$module_final.v - PNR verilog netlist\n2. pnr/op_data/$module_final.dspf - spice netlist \n3. pnr/reports/$module_summary.rpt - Cell area report - which will be used for optimisation later on.\nAuthor:Nanditha Rao(nanditha@ee.iitb.ac.in)\n')

parser.add_option("-f","--path", help='Enter the RTL (verilog or vhdl) file path- THE ENTIRE PATH along with the file name',dest='filepath')
parser.add_option("-m","--mod", help='Enter the entity name(vhdl) or module name (verilog) to be synthesised',dest='module_name')
parser.add_option("-c","--clk", help='Enter the clk frequency in MHz, for eg., if 900MHz, enter 900',dest='clkfreq')
parser.add_option("-i","--idelay", help='Enter the I/O input delay in nanoseconds(as defined by Synopsys design compiler), for eg., if clk period=2ns, and setup time is 0.8ns, set input delay=1.2ns.. leave some guardband.. so set it as 1ns. ',dest='input_delay')
parser.add_option("-o","--odelay", help='Enter the I/O output delay in nanoseconds(as defined by Synopsys design compiler)',dest='output_delay')
parser.add_option("--ipff", dest='ip_FF', help='Enter the instance name of input FFs from the input RTL(verilog/vhd) file).')
parser.add_option("--opff", dest='op_FF', help='Enter the instance name of output FFs from the input RTL(verilog/vhd) file).')


#This is the most important line which will parse the cmd line arguments
(options, args) = parser.parse_args()

filepath=options.filepath
clkfreq=options.clkfreq
module=options.module_name
io_input_delay= options.input_delay
io_output_delay=options.output_delay
ip_FF=options.ip_FF
op_FF=options.op_FF


#Invoke rtl2gds and create directories in CURRENT WORKING DIRECTORY ONLY
os.system("rtl2gds -genScr=.")

#Run synthesis
os.system('rtl2gds -rtl=%s -rtl_top=%s -syn -frequency=%s -io_input_delay=%s -io_output_delay=%s' %(filepath,options.module_name,clkfreq,io_input_delay,io_output_delay))	

#These 3 commands also work
#os.system("rtl2gds -rtl={0} -rtl_top={1} -syn".format(options.filepath, options.module_name))
#os.system("rtl2gds -rtl={options.filepath} -rtl_top={options.module_name} -syn".format(args=args))
#subprocess.call(['rtl2gds', '-rtl=' + options.filepath, '-rtl_top=' + options.module_name, '-syn'])

fcr = open('synthesis/scripts/compile_dc.tcl', 'r') ## This is the tcl file for synthesis
data=fcr.readlines()
#print data
fcr.close()

fcw = open('synthesis/scripts/compile_dc_backup.tcl', 'w') ## This is the tcl file for synthesis- backup
fcw.writelines(data)
fcw.close()

os.remove('synthesis/scripts/compile_dc.tcl')

fin = open('synthesis/scripts/compile_dc_backup.tcl', 'r') 
fnew = open('synthesis/scripts/compile_dc.tcl', 'w') ## This is the new tcl file for synthesis



#with open('input') as fin, open('output','w') as fout:
for line in fin:
	if line == 'compile -incremental_mapping -map_effort medium\n':
		fnew.write('compile -incremental_mapping -map_effort high\n')
	elif line == 'quit\n':
		fnew.write('gui_start\n')
	else:
		fnew.write(line)
		
        if line == 'propagate_constraints -gate_clock\n':
        	next_line = next(fin) #store next line
        	if next_line == 'compile -map_effort medium\n':
        		fnew.write('set_dont_retime [get_cells "%s_*"]\nset_dont_retime [get_cells "%s_*"]\n' %(ip_FF,op_FF))
        		print('set_dont_retime [get_cells "%s_*"]\nset_dont_retime [get_cells "%s_*"]\n' %(ip_FF,op_FF))
        		print('%s_*\nset_dont_retime [get_cells %s_*]\n' %(ip_FF,op_FF))
        		fnew.write('compile -map_effort medium\n\nset_balance_registers true -design $toplevel\n')
			fnew.write('balance_registers\n')

		fnew.write(next_line)
	
fnew.close()
fin.close()

fnew = open('synthesis/scripts/compile_dc.tcl', 'r') 
newdata=fnew.readlines()
#print (newdata)

f1 = open('synthesis/scripts/compile_dc_backup.tcl', 'w') 
#f1.writelines("This was the script compiled by the Design Compiler\n It gets overwritten in the pnr stepp. Hence saving a backup here\n\n")
f1.writelines(newdata)

f1.close()
fnew.close()

print "Done creating a new synthesis compile script \"synthesis/scripts/compile_dc.tcl\" \n"


if os.path.exists('synthesis/run/'):
	os.chdir('synthesis/run/')
	os.system('bash run_dc.bash')

os.chdir('../../')
print "...Pause...Done synthesis and optimisation of FF.. Starting pnr"
#time.sleep(5)

#Run place and route
os.system('rtl2gds -rtl=%s -rtl_top=%s -pnr -frequency=%s -io_input_delay=%s -io_output_delay=%s ' %(filepath,options.module_name,clkfreq,io_input_delay,io_output_delay))	
print "\n ****Completed synthesis and place and route****\n"

print "\n***The worst case slack information for this frequency of operation (%s MHz) is given below:***\n" %clkfreq
print "***Make sure that the slack is positive enough, so that it is guaranteed that the spice simulation will operate at this frequency\n"



fo = open('./pnr/reports/5.postRouteOpt_%s/%s_postRoute.slk' %(module,module), 'r') 
#Has slack information
lines = fo.readlines()
print "Slack information:\n%s %s\n" %(lines[0],lines[1])
print "...Pause..."
time.sleep(5)

with open("./pnr/reports/5.postRouteOpt_%s/%s_postRoute.slk" %(module,module),"r") as f:
	words=map(str.split, f)

line1=words[1] #2nd line after header
slack_read=line1[2]
print "\nSlack is: %s" %slack_read
slack_string=slack_read.replace("*/","")
slack_time=float(slack_string)
print "\nSlack is: %f ns" %slack_time
print "...Pause..."
time.sleep(5)
if slack_time < 0 :
	print "WARNING: Slack is negative. Your design WILL NOT function at the frequency %s\n" %clkfreq
	time.sleep(30)
else:
	print "Slack is positive. Your design WILL function at the frequency %s MHz\n" %clkfreq
	time.sleep(5)


if '1\'b1' in open('./pnr/op_data/%s_final.v' %module).read():
	print "\n*******************WARNING******************\n"
	print "\n1'b1 is present in the verilog file and the corresponding nets should be manually tied to vdd in the spice file\n"
	time.sleep(15)
else:
	print "\n1'b1 is NOT present in the verilog file and there is no need to manually tie it to vdd in the spice file\n"
	time.sleep(3)

if '1\'b0' in open('./pnr/op_data/%s_final.v' %module).read():
	print "\n*******************WARNING******************\n"
	print "\n1'b0 is present in the verilog file and the corresponding nets should be manually tied to gnd in the spice file\n"
	time.sleep(15)
else:
	print "\n1'b0 is NOT present in the verilog file and there is no need to manually tie it to gnd in the spice file\n"
	time.sleep(3)


fo.close()

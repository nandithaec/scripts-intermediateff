
#!/usr/bin/env python

#IMPORTANT: It is assumed that we are running parallel ngspice simulations on a remote 48-core cluster at 10.107.105.201. If this is not the case, you will need to modify this script to run it on this machine, by commenting out the scp and ssh commands.w

#This version of the script has the facility of selecting the gate based on the area of the gate. This version of the script uses another script python_weighted_gateselection.py to pick the random gate based on its area: Nov 17 2013

#Example usage: python python_utility3_remote_seed_yuva_echo_noDFF.py -m c432_clk_opFF -p /home/nanditha/Documents/iitb/utility/c432_priority_opFF -d c432_priority_opFF -t 180 -n 2 --group 2 --clk 250 --std_lib osu018_stdcells_correct_vdd_gnd.sp

import optparse
import re,os
import glob,shutil,csv
import random
import subprocess, time
import random,sys
from  python_weighted_gateselection_noDFF import weight_selection_noDFF

from optparse import OptionParser

parser = OptionParser('This script reads in the template spice file and the inputs to the script are listed as arguments below, which are all necessary arguments.\nAfter a previous script has copied the current working directory to a remote cluster, this script invokes several scripts inturn:\n1.perl_calculate_gates_clk.pl\n2.perl_calculate_drain.pl\n3.deckgen_remote_seed.pl\n4.python_GNUparallel_ngspice_remote.py\n5.python_compare_remote_seed.py\n6.python_count_flips_remote_seed.py\n\nThe tasks of these scripts will be described in the help section of the respective scripts. The current script needs pnr/reports/5.postRouteOpt_mult/mult_postRoute.slk as an input. The current script will calculate the number of gates in the design(spice) file, pick a random gate, calculate the number of distinct drains for this gate and pick a drain to introduce glitch it.The location of the glitch is calculated based on the timing/slack information from the SoC encounter output: (pnr/reports/5.postRouteOpt_mult/mult_postRoute.slk) for the particular design, so that we introduce glitch only after the input has changed in the clk period, and before the next rising edge of the clk (when the latch is open). It then invokes deckgen.pl to modify the template spice file to introduce the glitched version of the gate in the spice file. The deckgen creates multiple spice files which will contain different input conditions since they are generated at different clk cycles.\nThe python_GNUparallel_ngspice_remote.py will then distribute these spice files across the different machines in the cluster and simulate these decks using ngspice. The results are csv files which contain output node values after spice simulation.\nThe results are then concatenated into one file and compared against the expected reference outputs that were obtained by the RTL simulation. If the results match, then it means that there was no bit-flip, so a 0 is reported, else a 1 is reported for a bit-flip. The number of flips in a single simulation is counted. Finally, if there are multiple flips given atleast one flip, it is reported as a percentage.\nAuthor:Nanditha Rao(nanditha@ee.iitb.ac.in)\n')

parser.add_option("-m", "--mod",dest='module', help='Enter the entity name(vhdl) or module name (verilog)')
parser.add_option("-n", "--num",dest='num',  help='Enter the number of spice decks to be generated and simulated')
parser.add_option("-p", "--path", dest="path",help="Enter the ENTIRE path to your design folder (your working dir)- either this machine or remote machine. IF remote machine, enter ~/simulations/<design_folder_name>")
parser.add_option("-d", "--design", dest="design_folder",help="Enter the name of your design folder")
parser.add_option("-t", "--tech",dest='tech', help='Enter the technology node-for eg., For 180nm, enter 180')
parser.add_option("--group",dest='group',  help='Enter the number of spice decks to be simulated at a time. For eg., if -n option is 10000, and say we want to run 100 at a time, then enter 100')
#parser.add_option("--backup",dest='backup',  help='Enter the number of spice decks you want to backup/save per run. For ef., if you entered -n 1000 and --group 100, and if you want to save 2 decks per 100, enter 2 ')
#parser.add_option("-s", "--seed",dest='seed', help='Enter the random seed')
parser.add_option("-c", "--clk",dest='clk', help='Enter the clk freq in MHz')
parser.add_option("-l", "--std_lib",dest='std_lib', help='Enter the file name of the standard cell library (sp file)')

(options, args) = parser.parse_args()


module=options.module
num=options.num
path=options.path
design_folder=options.design_folder
tech=options.tech
num_at_a_time=options.group
#backup_per_run=options.backup
#seed=int(options.seed)
clk=(options.clk)
std_lib = options.std_lib


clk_period = (1.0/float(clk))*(0.000001)
half_clk_period = clk_period/2.0
change_time= half_clk_period/3.0
end_PWL= half_clk_period + change_time #in ns generally

#To determine when the glitch needs to be introduced, depends on the slack information

with open("%s/pnr/reports/5.postRouteOpt_%s/%s_postRoute.slk" %(path,module,module),"r") as f:
	words=map(str.split, f)

line1=words[1] #2nd line after header
slack_read=line1[2]
print "\nSlack is: %s" %slack_read
slack_string=slack_read.replace("*/","")
slack_time=float(slack_string)
print "\nSlack is: %f ns" %slack_time

reqdtime_read=line1[1]
print "\nReqd time is: %s" %reqdtime_read
reqdtime_string=reqdtime_read.replace("*/","")
reqd_time=float(reqdtime_string)
print "\nReqd time is: %f ns" %reqd_time

arrival_time = reqd_time - slack_time
arrival_time_ns = arrival_time *(0.000000001)
print "\nArrival time is: %e " %arrival_time_ns

#What fraction of the clk period is the arrival time?
arrival_clk_part = arrival_time_ns / clk_period
print "\nArrival time is: %f clk periods" %arrival_clk_part

#Whatever number of decks to be simulated- is assumed to be more than or equal to 1000.
#At a time, only 1000 are generated and run- to save disk space. After collecting results, they are deleted
num_of_loops=(int(num)/int(num_at_a_time))


if os.path.exists('%s/spice_results' %path):
	os.chdir('%s/spice_results' %path)
	for f in glob.glob("count*.csv"):
		os.remove(f)

if os.path.exists('%s/spice_results' %path):
	os.chdir('%s/spice_results' %path)
	for f in glob.glob("spice_rtl_*.csv"):
		os.remove(f)

if os.path.exists('%s/spice_results' %path):
	os.chdir('%s/spice_results' %path)
	for f in glob.glob("final_results_spice_outputs_*.csv"):
		os.remove(f)



if os.path.isfile('%s/spice_results/result_summary_flipcount.csv' %(path)):
	os.remove('%s/spice_results/result_summary_flipcount.csv' %(path))


#Clear Back up directory

backup_dir = '%s/backup_spice_decks' %(path)
#test_backup_dir = '%s/test_backup_spice_decks' %(path)

if os.path.exists(backup_dir):
	shutil.rmtree(backup_dir)

if not os.path.exists(backup_dir):
	os.mkdir(backup_dir)	

"""
if os.path.exists(test_backup_dir):
	shutil.rmtree(test_backup_dir)

if not os.path.exists(test_backup_dir):
	os.mkdir(test_backup_dir)	
"""

print "Deleting the existing spice decks before creating new ones!\n"
os.system('rm -rf %s/spice_decks_*' %path)

start_loop=1

frand = open('%s/random_number_histogram.txt' %(path), 'w')

seed = random.randint(0, sys.maxint)
print "seed is: ", seed
frand.write("Seed:%d\n" %seed)

random.seed(seed) #Seeding the random number generator


clk_period = (1.0/float(clk))*(0.000001) #for the MHz

print "\nclk is ",clk
print "\nClk_period: ", clk_period


os.system('cat $PBS_NODEFILE > %s/nodes.txt' %path)
print "PBS NODEFILE contents....written to nodes.txt\n"
time.sleep(3)

os.system('python %s/python_ssh_addr_yuva.py -p %s' %(path,path))
os.system('cat %s/sshmachines.txt' %path)
print "Check contents of sshmachines.txt file....\n"
time.sleep(10)


#Uncomment this for future designs. For decoder example, decoder folder has already been created on desktop
#os.system('ssh nanditha@10.107.90.52 mkdir /home/nanditha/simulations/%s' %(design_folder))
###########################################Comment this out if not using desktop to run##################################
"""
print "\nCopying a python script to desktop machine!\n"
		
os.system('scp %s/python_desktop_copy.py %s/glitch_%s.sp %s/tsmc018.m nanditha@10.107.90.52:/home/nanditha/simulations/%s/' %(path,path,std_lib,path,design_folder))
"""
######################################################################################################
#perl perl_calculate_gates_clk.pl -s reference_spice.sp -l glitch_osu018_stdcells_correct_vdd_gnd.sp -r decoder_behav_pnr_reference_out/tool_reference_out.txt -m decoder_behav_pnr -f /home/user1/simulations/decoder

os.system('perl %s/perl_calculate_gates_clk.pl -s %s/reference_spice.sp -l %s/glitch_%s.sp -r %s/%s_reference_out/tool_reference_out.txt -m %s -f %s ' %(path,path,path,std_lib,path,module,module,path))

fg = open('%s/tmp_random.txt' %(path), 'r')
gate_clk_data = [line.strip() for line in fg]

#num_of_gates=int(gate_clk_data[0])
#print "\nnum of gates is %d" %num_of_gates

num_of_clks=int(gate_clk_data[1])
print "\nnum of clocks is %d" %num_of_clks

fg.close()


#Fresh simulation
for loop in range(start_loop, (num_of_loops+1)): 

		
	#time.sleep(2)
	#os.system('cd /home/user1/simulations/decoder ; ls; pwd;ls | wc -l' )
	#time.sleep(5)

	print "Now, creating multiple spice decks in spice_decks folder in current directory on the remote machine\n"
	
	#os.system('python %s/python_repeat_deckgen_remote_seed.py -m %s -n %s -f %s -o %s -s %d' %(path,module,num_at_a_time,path,loop,seed_new))

#########################################repeat_deckgen copied starting from here#######################################

	if os.path.isfile("%s/%s_reference_out/RTL.csv" %(path,module)):
		print "****Removing the existing RTL.csv file in folder %s_reference_out ****\n" %(module)
		os.remove("%s/%s_reference_out/RTL.csv" %(path,module))


	#Now, we need the header in RTL.csv, so we create an RTL.csv and copy the headers from the RTL_backup.csv that we had saved from Netlstfrmt.pl
	fout = open('%s/%s_reference_out/RTL.csv' %(path,module), 'w')
	fin = open('%s/%s_reference_out/RTL_backup.csv' %(path,module), 'r')

	in_data=fin.read()
	fout.write(in_data)

	fout.close()
	fin.close()

	if not os.path.exists('%s/spice_decks_%s' %(path,loop)):
		os.mkdir('%s/spice_decks_%s' %(path,loop))

	
	start= ((loop-1)*int(num_at_a_time)) + 1  # ((1-1)*10) +1 =1  , ((2-1)*10) +1 =11
	end = (int(num_at_a_time))*loop  #(10*1) = 10, (10*2)=20

	print "***Inside repeat_deckgen. Executing deckgen to create decks and RTL.csv reference file\n***"
	for loop_var in range(start, end+1): 
		
		#rand_gate= int(random.randrange(num_of_gates))  #A random gate picked

		#This is called through a function written in python_weighted_gateselection.py
		rand_gate=  weight_selection_noDFF(path);
		print "Random subckt line=%d" %rand_gate
		#print "Random gate is: ",rand_gate
		#A random clk picked. dont pick the 1st 10 clock cycles. 1st 3 have dont care outputs at the FFs. ANd we are simulating 6 clk cycles, so, initialisation is 4 clk cycles. so, leave a guardband by ignoring the 1st 10 clk cycles
		rand_clk= int(random.randrange(10,num_of_clks))  
		#print "Random clock cycle is: ",rand_clk
		#perl perl_calculate_drain.pl -s reference_spice.sp -l glitch_osu018_stdcells_correct_vdd_gnd.sp -r decoder_behav_pnr_reference_out/tool_reference_out.txt -m decoder_behav_pnr -f /home/user1/simulations/decoder -g 27

		os.system('perl %s/perl_calculate_drain.pl -s %s/reference_spice.sp -l %s/glitch_%s -r %s/%s_reference_out/tool_reference_out.txt -m %s -f %s -g %d ' %(path,path,path,std_lib,path,module,module,path,rand_gate))

		fg = open('%s/tmp_random.txt' %(path), 'r')
		drain_data = [line.strip() for line in fg]

		num_of_drains=int(drain_data[0])
		print "\nnum of drains is %d" %num_of_drains

		fg.close()
#If num of drains is 2, randrange(2) returns 0 or 1,where as we want drain number 1 or drain number 2. so, doing +1
		rand_drain= int(random.randrange(num_of_drains))+1  #A random drain picked. 

#Arrival_time_part + initial_clk_part should add up to 1.5 clk periods
#The clk starts from low to high and then low, before the 2nd rising edge starts. The input is changed in the high period and the glitch is expected to arrrive later on, and before the next rising edge (when the latch will open)
		#In every iteration, a different random number needs to be picked. Hence, this is inside the for loop
		
		initial_clk_part = 1.5 - arrival_clk_part
		initial_clk_part_abs = initial_clk_part * clk_period
#This means, glitch "can" occur before the input changes in the clk period as well. So, force the glitch to start only after input has changed
		if (initial_clk_part_abs < end_PWL) : 
			initial_clk_part = end_PWL/clk_period

		#unif=random.uniform(0,arrival_clk_part*clk_period)
		#rand_glitch= (initial_clk_part*clk_period) +  unif  #A random glitch picked
		
		#glitch is being inserted at the 5th clk cycle
		unif=random.uniform(0,0.85*clk_period) 
		rand_glitch= (4.67*clk_period) +  unif #arrival_clk + initial_clk should add up to 4.5+0.15=4.65. 1 period-0.15=0.85

		#unif=random.uniform(0,1.39*clk_period) 
		#rand_glitch= (0*clk_period) +  unif #arrival_clk + initial_clk should add up to 1.5

		print "\nglitch within clk cycle= ",unif
		print "\nRandom gate: %d\nRandom drain: %d\nRandom clock cycle:%d\nRandom glitch location:%e\n " %(rand_gate,rand_drain,rand_clk,rand_glitch)
		frand.write("%d, %d, %d,%e\n" %(rand_gate,rand_drain,rand_clk,rand_glitch))

#perl deckgen_remote_seed.pl -s reference_spice.sp -l glitch_osu018_stdcells_correct_vdd_gnd.sp -r decoder_behav_pnr_reference_out/tool_reference_out.txt -n 1 -m decoder_behav_pnr -f /home/user1/simulations/decoder -g 27 -d 2 -c 10 -i 1.42061344093991e-09 -o 1 

		#deckgen.pl will need to be remotely executed through python_repeat_deckgen.py multiple number of times
		os.system('perl %s/deckgen_remote_seed.pl -s %s/reference_spice.sp -l %s/glitch_%s -r %s/%s_reference_out/tool_reference_out.txt -n %d -m %s -f %s  -o %s -g %s -d %s -c %s -i %s' %(path,path,path,std_lib,path,module,loop_var,module,path,loop,rand_gate,rand_drain,rand_clk,rand_glitch))

##################Script repeat_deckgen copied ends here####################################
	
##################################Comment this out if not using desktop to run##################################
	#delete existing files on desktop machine and copy new files for simulation
	#os.system('ssh nanditha@10.107.90.52 python /home/nanditha/simulations/%s/python_desktop_copy.py -p %s -d %s -l %d' %(design_folder,path,design_folder,loop))
################################################################################################################

	#print "\nmaster machine.. listing the files and pausing\n"
	#os.system('cd /home/user1/simulations/decoder/spice_decks_%d ; ls; pwd;ls | wc -l' %loop)
	#time.sleep(1)
	#print "\nssh to slave.. listing the files and pausing\n"
	#os.system('ssh user1@192.168.1.8 pwd; cd /home/user1/simulations/decoder/spice_decks_%d; pwd;ls;pwd;ls | wc -l' %loop)
	#time.sleep(3)


	
	print "Running GNU Parallel and ngspice on the created decks\n"
	os.system('python %s/python_GNUparallel_ngspice_remote_yuva_echo.py -n %s -d %s -o %s -p %s' %(path,num_at_a_time,design_folder,loop,path))

	seed_new= int(random.randrange(100000)*random.random())  #Used by compare script to backup random decks
	#seed_new=seed*loop
	print "New seed every outer loop is ", seed_new

	#python_results_compare.py will then need to be remotely executed
	#Might need to execute these last 3 in a loop till the results are acceptable
	
	print "Comparing the RTL and spice outputs\n"
	os.system('python %s/python_compare_remote_seed.py -m %s -f %s -n %s -t %s -l %d' %(path,module,path,num_at_a_time,tech,loop))

#For testing out new glitch files (afterdeleting process if at each echo statement). comment this out in the final run, else it will copy ALL spice files and consume lot of disk space
#destination directory should not already exist for copytree command to function
	#shutil.copytree('%s/spice_decks_%s' %(path,loop), '%s/test_backup_spice_decks' %path )
	
##########################################################
	
	spice_dir = '%s/spice_decks_%s' %(path,loop)

	
	if os.path.exists(spice_dir):
		shutil.rmtree(spice_dir)


########################################End of loop########################################################
#For validation of backup spice files

shutil.copy('%s/glitch_%s' %(path,std_lib), '%s/backup_spice_decks' %path )
shutil.copy('%s/tsmc018.m' %path, '%s/backup_spice_decks' %path )

print "Combining all rtl diff files\n"
os.system('python  %s/python_count_flips_remote_seed.py -f %s  -n %s  --group %s -s %s' %(path,path,num,num_at_a_time,seed))  #To save the seed to results file


#Add the details of number of DFFs
fa=open('/%s/subcktinstances.sp' %path, 'r')
fb=open('/%s/spice_results/count_flips_summary.csv' %path, 'a+')
read=fa.readlines()
filelen=len(read)
fb.writelines(read[filelen-3])
fb.writelines(read[filelen-2])
fb.writelines(read[filelen-1])
fa.close()
fb.close()



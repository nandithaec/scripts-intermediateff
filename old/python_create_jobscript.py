#!/usr/bin/env python

#create a jobscript.txt file in the current directory. This entire dir will be copied to the Pune CDAC machine. The jobscript file will be used to submit the job to the queue

##Example usage: python python_create_jobscript.py -m c499_clk_opFF -p /home/external/iitb/nanditha/simulations/c499_PNN -d c499_PNN -t 180 -n 10 --group 10 --clk 300 --std_lib osu018_stdcells_correct_vdd_gnd.sp  --proc_node 1 --ppn 16 --days 00 --hrs 00 --mins 30 --script python_utility3_remote_seed_yuva_echo.py

##The pnr def.gz file is by default assumed to be in /pnr/op_data folder

import optparse
import re,os
import fileinput
import subprocess
from optparse import OptionParser

parser = OptionParser('This script will create a jobscript.txt file in the current directory. This entire dir will be copied to the Pune CDAC machine. The jobscript file will be used to submit the job to the queue \n')


parser.add_option("-m", "--mod",dest='module', help='Enter the entity name(vhdl) or module name (verilog)')
parser.add_option("-n", "--num",dest='num',  help='Enter the number of spice decks to be generated and simulated')
parser.add_option("-p", "--path", dest="path",help="Enter the ENTIRE path to your design folder (your working dir)- either this machine or remote machine. IF remote machine, enter ~/simulations/<design_folder_name>")
parser.add_option("-d", "--design", dest="design_folder",help="Enter the name of your design folder")
parser.add_option("-t", "--tech",dest='tech', help='Enter the technology node-for eg., For 180nm, enter 180')
parser.add_option("--group",dest='group',  help='Enter the number of spice decks to be simulated at a time. For eg., if -n option is 10000, and say we want to run 100 at a time, then enter 100')
parser.add_option("-c", "--clk",dest='clk', help='Enter the clk freq in MHz')
parser.add_option("-l", "--std_lib",dest='std_lib', help='Enter the file name of the standard cell library (sp file)')
parser.add_option("--proc_node",dest='nodes', help='Enter the number of processor nodes you would need')
parser.add_option("--ppn",dest='ppn', help='Enter the number of cores per processor you would need (max 16 per processor)')
parser.add_option("--days",dest='days', help='Enter the walltime- number of days. If it does not take >1 day, enter 00')
parser.add_option("--hrs",dest='hrs', help='Enter the walltime- number of hours. If it does not take >1 hour, enter 00')
parser.add_option("--mins",dest='mins', help='Enter the walltime- number of minutes in addition to the num of hrs. If nothing to enter, enter 00')
parser.add_option("--script",dest='script', help='Enter the name of the python script to be executed on the Pune CDAC cluster, which will be submitted to the job queue. Enter the file extension (.py) as well')

(options, args) = parser.parse_args()


module=options.module
num=options.num
path=options.path
design_folder=options.design_folder
tech=options.tech
num_at_a_time=options.group
clk=(options.clk)
std_lib = options.std_lib
nodes=options.nodes
ppn=options.ppn
days=options.days
hrs=options.hrs
mins=options.mins
script=options.script

os.remove('jobscript.txt')
fw = open('jobscript.txt', 'w') ## This is the jobscript file that will be submitted to the job queue on the Pune CDAC machine

#Write the following commands to this file
fw.write('###############################################################\n#!/bin/bash\n')
fw.write('#PBS -l nodes=%s:ppn=%s\n' %(nodes,ppn))
fw.write('#PBS -l walltime=%s:%s:%s \n' %(days,hrs,mins))
fw.write('#PBS -q batch\n#PBS -m bae  \n')
fw.write('## Comma separated list of email address and mobile numbers \n##PBS -M nanditha@ee.iitb.ac.in, 9769834234\n')

fw.write('#PBS -r n \n#PBS -V \n##PBS -A <Project Name> # Account to be charged/debited\n')
fw.write('export I_MPI_JOB_CONTEXT=$PBS_JOBID\n')
fw.write('echo PBS JOB id is $PBS_JOBID\n')

fw.write('echo PBS_NODEFILE is $PBS_NODEFILE \n')
fw.write('echo PBS_QUEUE is $PBS_QUEUE \n')
fw.write('NPROCS=`wc -l < $PBS_NODEFILE` \n')

fw.write('echo NPROCS is $NPROCS \n')

fw.write('cd $PBS_O_WORKDIR \n')
fw.write('###PBS -e /home/external/iitb/nanditha/simulations/c499_yuva_new/error.txt\n###PBS -o /home/external/iitb/nanditha/simulations/c499_yuva_new/outfile.txt\n')

fw.write('python /home/external/iitb/nanditha/simulations/%s/%s -m %s -p /home/external/iitb/nanditha/simulations/%s -d %s -t %s -n %s --group %s --clk %s --std_lib %s >/dev/null 2&>1\n' %(design_folder,script,module,design_folder,design_folder,tech,num,num_at_a_time,clk,std_lib))

fw.write('###############################################################\n')

print "\n***********Generated the jobscript.txt file in the current working directory.***********\n"
print "\n***********This script will, by default execute %s when copied to the Pune CDAC cluster through the job queue..***********\n" %script
fw.close()





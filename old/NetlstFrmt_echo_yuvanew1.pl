#Example: perl NetlstFrmt_echo_yuvanew1.pl -v c499_clk_opFF_modelsim.v -s c499_clk_opFF.dspf -l glitch_osu018_stdcells_correct_vdd_gnd.sp -c 100 -t 180 -m c499_clk_opFF
#clk frequency in MHz

#Modifications:
#The meas statement is modified to have the extra _q_reg  appended. It is appended for the c499 (without balance reg option) - oct 22

#If there are several modules, and dffs inside these, the code was printing out all DFFs. Modified this to search for DFF outputs only within thetop  module - Oct 21 2013
#Modified PWL statements for the input nodes to simulate for. 5.5 clk cycles instead of 2.5 cycles. Increased sim_time, fall_from and fall_to times. Introduced new variables- for cycle (minus3, minus2 and minus1, current k cycle). Renamed end_PWL to k_plus1. 
#Code modified to write out .ic statements in spice file for inputs of all FFs  - Oct 11 2013
#Code modified to write out internal subckt nodes (of all outputs of all FFs) in the echo and meas statements, so that we dont need to bring out those nodes as a subckt port  - Oct 8 2013


use Getopt::Long;
#####################################################################
#
# Author        : Shahbaz Sarik
# Date          : 7th March 2013
# Purpose       : To create a simulatable netlist from the rtl2gds output .dspf file
#                 
# Copyright	: IIT BOMBAY
####################################################################

#  Routine to print Error message
sub printErrMessage {

 print "NetldtFrmt ERROR: BAD SYNTAX\n";
 print "TRY '$0 -h' or '$0 --help'  for help\n";
}
#  Routine to print man page
sub printManPage {
  print STDERR <<END; 
    
NetlstFrmt(1)                                                                                  

NAME

NetlstFrmt − This script modifies the spice netlist to add parameters to make it simulatable.

SYNOPSIS

NetlstFrmt [input library file]  

DESCRIPTION

NetlstFrmt utility takes a spice file (dspf) from./<module>.dspf (generated by QRC) as input. It adds parameters like: .control, .param, .tran, Voltage sources, meas, echo statements etc, instantiates the subckt so that the original dspf spice netlist is simulatable.  The outputs are the following: 1.reference_spice.sp- Template spice file that has simulation parameters included.\n 2.<pnr_module_reference_out>/RTL.csv - to write out RTL headers. The deckgen utility will write out the input, output information of the chosen clock cycle into this file later on.\n3.<pnr_module_reference_out>/RTL_backup.csv - to write out backup of RTL headers which will be needed later when the original RTL.csv is cleared\n4.spice_decks/results/headers.csv - that contain spice output headers that will be later used to combine all spice outputs into a single file.\n

OPTIONS

 
Inputs:
perl NetlstFrmt.pl 

-v <module>_modelsim.v - modified pnr verilog netlist
-s <module>_final.dspf - spice(dspf) output from rtlgds
-l glitch_<std_cell>l.sp - output of GlitchLibgen.pl which contains glitched versions of std cell library subckts for spice
 c 1000 - clk frequency in MHz. For eg., if the frequency is 1GHz, enter 1000
-t 180 - technology parameter, for eg., enter 180 for 180nm technology
-m decoder_behav_pnr - module name in the pnr verilog file



Examples:

perl NetlstFrmt.pl -v decoder_behav_pnr_modelsim.v -s pnr/op_data/decoder_behav_pnr_final.dspf -l glitch_osu018_stdcells_correct_original.sp -c 1000 -t 180 -m decoder_behav_pnr


SEE ALSO

SPICE.

AUTHOR
Shahbaz sarik (shahbaz\@ee.iitb.ac.in)

This utility has been written for the “ Impact of soft error on circuit” experiment carried out under the guidence of Prof. Madhav. P. Desai (madhav\@ee.iitb.ac.in) at IITBombay.

COPYRIGHT
GPL IIT-Bombay
NetlstFrmt January 3rd February 2013  
    
    
END
}

#  Get the command line arguments
#  check for missing/extra arguments and show usage

GetOptions( "v|verilog=s"=>\$vlog,
            "s|spice=s"=>\$spc,
	    "l|lib=s"=>\$lib,
	    "c|clk=s"=>\$clk,
	    "t|tech=s"=>\$tech,
	    "m|module=s"=>\$module,
            "h|help"=>\$help
          );
      
if ($help) {
  printManPage();
  exit(0);
}

if ($#ARGV >= 0 || $vlog eq "" || $spc eq ""|| $lib eq ""|| $clk eq "" || $module eq "") {
  print STDERR "-E- Found missing/excess arguments\n";
  printErrMessage();
  exit(1);
}

#Getting job start time
chomp($date=`date`);
print "\t*******    Job started   at $date    **********\n";

#Initializing the parameters
$sim="reference_spice.sp";
@sub_ckt="";
$dnum=1;
$vdd=1.8;
$idd=2.2;
$flag=0;
$flag_sub =0;

use File::Path qw(mkpath);
mkpath("spice_results");


#opening the required files
open(SPC,"$spc")||die("unable to open file : $!");
open(VLOG,"$vlog")||die("unable to open file : $!");
open(SIM,">$sim");



#
#Definig the technology dependent parameters
$vdd=1.8;
$idd=2.2;
if($tech==180)
  {
    $vdd=1.8;
    $idd=2.2;
  }
elsif($tech==130)
  {
    $vdd=1.5;
    $idd=1.8;
  }
elsif($tech==90)
  {
    $vdd=1.2;
    $idd=1.5;
  }
elsif($tech==65)
  {
    $vdd=1.1;
    $idd=1.2;
  }
elsif($tech==45)
  {
    $vdd=1.0;
    $idd=1.0;
  }
elsif($tech==32)
  {
    $vdd=0.9;
    $idd=0.8;
  }
elsif($tech==22)
  {
    $vdd=0.8;
    $idd=0.6;
  }

#including the library files
print SIM "****Template spice file***"."\n\n";
print SIM ".include ../".$lib."\n";
print SIM '**.include /cad/digital/rtl2gds/rtl2gds_install/LIB/lib/tsmc018/lib/tsmc018.m'."\n";
print SIM '.include ../tsmc018.m'."\n\n";
print "\t******Giltched version of the library file and technology file included in the spice file\n";
$loop_var=0;

print SIM "**********Subckt begins*********"."\n\n";
@to_ff;
@ff_inp_replace;
@ff_op_replace;
$new_inp;
#parsing the verilog file
$flag_flop=0;
$flag1=0;
$count_line=0;
while(<VLOG>)
 {  
   
   if(($_=~m/^ *input/)||($_=~m/^ *output/)) #Extracting the input and output from the verilog code
     {
        chomp($_);
	chop($_);
	@temp=split(" ",$_);
	$type=shift(@temp);
	foreach $i(0..$#temp)
	   {
		if(!($temp[$i]=~m/.*[.*:.*].*/))
		  {
                     if(($type eq "input") || ($type eq "inout"))
			{
			  $inputs[$j++]=$temp[$i];
			}
		     elsif($type eq "output")   #Extracting output port names from pnr verilog file
			{
			  $outputs[$k++]=$temp[$i];
			}
		  }
	   }
	
     }



 if($flag_flop==1)
    {
     # print $_;
      $flag_flop=0;
      chomp($new_inp=$_);
    #$new_inp_copy=$new_inp;
   # $new_inp_copy=~m/.Q\((.*)\)/;
  #   print $1."\n";
 #     push (@ff_op_replace,$1);

     
      $new_inp=~m/.D\((.*)\)/;
      #print $1."\n";
      push (@ff_inp_replace,$1);


     # print join("\n",@ff_inp_replace);
    }


  if(($_=~m/module $module \(/ .. /endmodule/)) #parsing the main module only
     {
	
	 if(($_=~m/DFF/)||($_=~m/LATCH/)||($flag1==1)) #searching for flip flop and latches
	    {

		# ($junk,$ff_name)=split(" ",$_);
	       # push(@to_ff,$ff_name);
#		print $_;
		#print @to_ff;
		#print "\n";
	       # $flag_flop=1;

		if($flag1 == 0)
		   {
                     ($fftype1,$ffname1,$pin1)=split(" ",$_);#capturing t.ihe output pin of the flip flop
		     $pin1=~m/\(.*\((.*)\)/;
		     $ffopin1[$i++]=$1;#this array has all output pins of all FFs
		     $flag1=1;
		  }
                else
		   {
                     $_=~m/.*\((.*)\)/; #capturing the input pin of the flip flop
		     #$ffipin[$j++]=$1; #captures input pins of all FFs
		     $flag1=0;
		   }
	    }
  }

if(($_=~m/module $module \(/ .. /endmodule/)) #parsing the main module only
     {

#This consists of ALL DFF outputs including the primary outputs
   if(($_=~m/DFF/)||($_=~m/LATCH/)||($flag==1)) #searching for flip flop and latch outputs in pnr verilog file
     {
        ($junk,$ff_name)=split(" ",$_);
        push(@to_ff,$ff_name);
        $flag_flop=1;
        print $_;
        print "\n";
     }
  
  }
 
}



print "\n\t********** Input output of the RTL file extracted\n";

#Parsing the spice file
while(<SPC>)
 {  
   #skipping the .END line in the spice file
   if($_=~m/.END\b/)
     {
       next;
     }
   if(!($_=~m/ FILL$/)&&!($_=~m/^\*/))# removing the fills and comments
     {
	$new=$_;
	$new=~s/\[/_/g;
	$new=~s/\]/_/g;
	$new=~s/\//_/g;
	$new=~s/\//_/g;
	print SIM $new;
     }
        
    if(($_=~m/^x.*/i)&&(!($_=~m/ FILL$/)))
       {
        #print $_;
	chomp($gates[$i++]=$_);	
	$flag=1;
	$in=1;
      }
    if(($_=~m/^\+.*/i))
       {
         if($flag==1)
            {
	     chomp($tail=$_);
	     $tail=~s/\+//;
	     $gates[$i-1].=$tail;
	     
	    }
       }
   
  #raising a flab when the subcircuit line is reached
      if($_=~m/.SUBCKT/)
        {
          $flag_sub =1;
        }
  #Removing the flag when the statement after subcircuit doesnot starts with '+'
      if(($_!~m/.SUBCKT/)&&($flag_sub == 1)&&($_!~m/^\+/))
        {
          $flag_sub =0;
        }
  #print join("\n",@gates);
   if(/.SUBCKT/../Nets/) #extracting the subcircuit
     {
        if(!(($_=~m/.SUBCKT/)||($_=~m/Nets/))&&($_=~m/\+/)&&($flag_sub == 1))
         {
           $new=$_;
	   $new=~s/\[/_/g;
	   $new=~s/\]/_/g;
	   $new=~s/\//_/g;
	   $new=~s/\//_/g;
	   $sub_ckt[$i++]=$new;
	   $pin=$_;
           $pin=~s/\+ //;
	   @temp=split (" ",$pin);
           push @pins ,@temp;
         }
     
      }
   if($_=~m/.SUBCKT/) # Capturing the name of the subcircuit
     {
	$new=$_;
	$new=~s/\[/_/g;
	$new=~s/\]/_/g;
	$new=~s/\//_/g;
	$new=~s/\//_/g;	
	($temp,$s_name)=split(" ",$new);
     }
}

#instantiating the sub circuit

print SIM "\n\n******Simulation parameters*****"."\n\n";


#including the user defined clock information

$clk_period = (1/$clk)*(0.000001);
$sim_time=6.5*$clk_period;#defining simulation time
$fall_from=(6*$clk_period); #defining fall time window
$fall_to= 6.2*$clk_period;

#$half_clk_period=$clk_period/2;
#$double_clk_period=2*$clk_period;
#$change_time=$half_clk_period/3;
#$k_plus1= $half_clk_period+$change_time;


#Declaring the param statements in sice file

print SIM "****Param definitions***"."\n";

print SIM ".param clk_period= '(1/$clk)*(0.000001)' \n"; 
print SIM "+half_clk_period= '(clk_period/2)'\n";
print SIM "+double_clk_period= '(clk_period*2)'\n\n";


print SIM ".param fall_from_value=$fall_from\n"; 
print SIM "+ fall_to_value=$fall_to\n\n";

print SIM ".param init_delay = half_clk_period\n";
print SIM "+ rise_time= 50p\n";
print SIM "+ fall_time= 50p\n\n";


print SIM ".param change_time='(half_clk_period/3)'\n";

print SIM ".param k_minus_4='(half_clk_period/3)'\n";

print SIM ".param k_minus_3='k_minus_4 + clk_period'\n";
print SIM ".param k_minus_3rise='k_minus_3 + 100ps'\n";

print SIM ".param k_minus_2='k_minus_3 + clk_period'\n";
print SIM ".param k_minus_2rise='k_minus_2 + 100ps'\n";

print SIM ".param k_minus_1='k_minus_2 + clk_period'\n";
print SIM ".param k_minus_1rise='k_minus_1 + 100ps'\n";

print SIM ".param k_cycle = 'k_minus_1 + clk_period'\n";
print SIM ".param k_cycle_rise = 'k_cycle + 100ps'\n";

print SIM ".param k_plus1= '(k_cycle + half_clk_period )'\n";
print SIM ".param k_plus1_rise = '(k_plus1 + 100ps)'\n";

print SIM ".param current_magnitude = $idd";
print SIM "mA\n";
#Adding the glitch information
#Dont leave a space after the glitch_location_time and ns
print SIM "+rise_delay= ##glitch_location##s\n";
print SIM "+fall_delay= \'rise_delay+5p\'\n";
print SIM "+rise_time_constant = 1ps\n";
print SIM "+fall_time_constant=130ps\n\n";


#defining global pins
print SIM '.GLOBAL vdd VDD'."\n\n";
print SIM "Vvdd vdd 0 $vdd\n";

#clock period
##print "Clock period".$clk_period."\n";
print SIM "VCk  clk   0  PULSE(0 $vdd init_delay rise_time fall_time half_clk_period clk_period)\n\n";

print SIM "\n\n******Instantiating the subckt*****"."\n\n";

chomp($sub_ckt[$#sub_ckt]);
$sub_ckt[$#sub_ckt].=" $sname";
print SIM "X$s_name\n";
print SIM join("",@sub_ckt);
print SIM $s_name;

print SIM "\n\n******Done instantiating the subckt*****"."\n";

print "\t*************Fills removed from the spice file\n";
print "\t*************Sub circuit instantiated in the spice file\n";

#classifying the pins as input and output pins

foreach $i (0..$#pins)
 {
   $flag=0;
   foreach $j (0..$#outputs)
     {
	$pin=$pins[$i];
	$pin=~s/\[.*\]//;
	if($pin eq $outputs[$j])
	   {
		$flag=1;
		push @opins ,$pins[$i];       
		last;
           } 
     }   
        if($flag==0)
	   {
		push @ipins ,$pins[$i];
	   }
    
 } 

#print "\nthe following are the input pins\n";
#print join("\n",@ipins);
#print "\nthe following are the output pins\n";
#print join("\n",@opins);
$measure_at_rising_edge="";
foreach $g(0 .. $#gates)
  {
   if(($gates[$g]=~m/DFF/)||($gates[$g]=~m/LATCH/))
   {
     $gates[$g]=~m/:Q (.*:D) /;
	push @dffipin, $1;
  
   }
  }
 
#Initializing the inputs 

foreach $i(0 .. $#ipins)
 {
   $new=$ipins[$i];
   $new=~s/\[/_/g;
   $new=~s/\]/_/g;
   $new=~s/\//_/g;
   #print $new;

   if($new ne "clk")
   {
#Old PWL statement
##     print SIM "\n\nV$i $new 0 PWL( 0 ##$new\_reference_1## k_plus1 ##$new\_reference_1## k_plus1_rise ##$new\_reference_2## $sim_time ##$new\_reference_2##)\n";


     print SIM "\n\nV$i $new 0 PWL( 0 ##$new\_reference_minus4##  k_minus_3 ##$new\_reference_minus4## k_minus_3rise ##$new\_reference_minus3## k_minus_2 ##$new\_reference_minus3## k_minus_2rise ##$new\_reference_minus2## k_minus_1 ##$new\_reference_minus2## k_minus_1rise ##$new\_reference_minus1## k_cycle ##$new\_reference_minus1## k_cycle_rise ##$new\_reference_1## k_plus1 ##$new\_reference_1## k_plus1_rise ##$new\_reference_2## $sim_time ##$new\_reference_2##)\n";
   }
}

 
#foreach $i(0 .. $#dffipin)
# {
#   $new=$dffipin[$i];
#   $new=~s/\[/_/g;
#   $new=~s/\]/_/g;
#   $new=~s/\//_/g;
#   if($new ne "clk")
#   {
#      print SIM "**.ic v($new)= ##$new\_reference_1##\n";
#   }
#}

print SIM "\n**Initialising input of all FFs- commented this out. Doesnt help.PWL\n";
#foreach $i(0 .. $#to_ff)
# {
#if($i ne "clk")
#   {
#      print SIM "***.ic v(X$module.$to_ff[$i]:D)= ##$ff_inp_replace[$i]\_reference_minus4##\n";
#   }

   #$measure_at_falling_edge.="meas tran ff_op_$i MAX v(X$module.$to_ff[$i]:Q) from=$fall_from"."s"." to=$fall_to"."s\n";
 #}

print SIM "\n**Initialising output of all FFs- trying..
\n";
foreach $i(0 .. $#to_ff)
 {
if($i ne "clk")
   {
      print SIM "*.ic v(X$module.$to_ff[$i]:Q)= ##$ffopin1[$i]\_reference_minus5##\n";
   }

   #$measure_at_falling_edge.="meas tran ff_op_$i MAX v(X$module.$to_ff[$i]:Q) from=$fall_from"."s"." to=$fall_to"."s\n";
 }

##Initialise primary outputs
 print SIM "\n**Initialising primary outputs\n\n";
foreach $i(0 .. $#opins)
 {
   $new1=$opins[$i];
   $new1=~s/\[/_/g;
   $new1=~s/\]/_/g;
   $new1=~s/\//_/g;
   if($new1 ne "clk")
   {
      #print SIM ".ic v($new1)= ##$new1\_reference_1##\n";
	print SIM "*.ic v($new1)= 0\n";t
   }
}




$measure_at_falling_edge="";

#to_ff consists of primary outputs also. So, the following part is not needed. This part contains only output ports.
#foreach $i(0 .. $#opins)
# {
#   $measure_at_falling_edge.="meas tran $opins[$i]_voltage MAX v($opins[$i]) from=$fall_from"."s"." to=$fall_to"."s\n";
# }


print "printing..\n";
print "length=$#to_ff\n";
foreach $i(0 .. $#to_ff)
 {


print "$to_ff[$i]\n" ;
print "v(X$module.$to_ff[$i]:Q)\n";
}

foreach $i(0 .. $#to_ff)
 {
 $measure_at_falling_edge.="meas tran ff_op_$i MAX v(X$module.$to_ff[$i]\_q\_reg:Q) from=$fall_from"."s"." to=$fall_to"."s\n";
 }

#Adding the control part
print SIM "\n\n.control\n";
print SIM "tran 20ps ".$sim_time."s\n\n";
print SIM "**Uncomment the following and run this spice file, if you need a waveform\n";
print SIM "**write waveform_file.raw v(clk) v(input_dec_2_) v(input_dec_1_) v(input_dec_0_)  v(output_dec_3_) v(output_dec_1_) \n*+v.xdecoder_behav_pnr.xu11.vcharge#branch \n\n";

print SIM "**************************** Measuring Flip Flop output at falling edge *************************************************\n";
$measure_at_falling_edge=~s/\[/_/g;
$measure_at_falling_edge=~s/\]/_/g;
$measure_at_falling_edge=~s/\//_/g;
print SIM $measure_at_falling_edge;
print SIM "\n\n***************** saving the outputs ****************\n";
#print SIM "echo deck_##deck_num## , ";
#print SIM "echo ";
##Still printing the echo statement

#to_ff consists of primary outputs also. So, the following part is not needed.This part contains only output ports.

# foreach $i(0 .. $#opins)
#{
#  $new=$opins[$i];
#  $new=~s/\[/_/g;
#  $new=~s/\]/_/g;
#  $new=~s/\//_/g; 
#
# if ($i == 0) 
#       {
#       print SIM 'echo "$&'.$new."_voltage\" , ";
#       print SIM '> glitch_report_outputs_'."##deck_num##.csv".'  $$New file'."\n"
#       } 
#       else 
#       {
#       print SIM 'echo "$&'.$new."_voltage\" , ";
#       print SIM '>> glitch_report_outputs_'."##deck_num##.csv".'  $$Appending to the file'."\n"
#       }
#
# } 

#to_ff consists of all FF output pins and primary outputs also.
foreach $i(0 .. $#to_ff)
 {
 $new="ff_op_".$i;

 if ($i == 0) 
  {
   print SIM 'echo "$&'.$new."\" , ";
   print SIM '> glitch_report_outputs_'."##deck_num##.csv".'  $$New file'."\n"
   } 
  else  
  {
   
   print SIM 'echo "$&'.$new."\" , ";
   print SIM '>> glitch_report_outputs_'."##deck_num##.csv".'  $$Appending to the file'."\n"
  }
 }
print SIM "\nquit\n\n";
print SIM ".endc\n\n\n";
print SIM ".end\n";





$num=@to_ff;
print SIM "\n** NUMBER OF OUTPUT PINS = $num";


print "\t********control statement written in the spice file\n";
#closing the files
close(SPC);
close(out);
chomp($sim1=`pwd`);
$sim1=$sim1."/$sim\n";
print "\n SPICE FILE written named ".$sim."\n";





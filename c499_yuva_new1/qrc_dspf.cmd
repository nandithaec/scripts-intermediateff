#OPTION COMMAND FILE created for Cadence Extraction QRC Version 8.1.5-p014
#

extraction_setup\
	-promote_pin_pad "LOGICAL"
filter_coupling_cap \
	 -coupling_cap_threshold_absolute 0.1
global_nets \
	  -nets \
		 "VDD" \
		 "GND" \
		 "vdd" \
		 "gnd" 
input_db -type def \
	 -design_file "./pnr/op_data/c499_clk_opFF_final.def.gz" \
	 -libgen_library_name "/cad/digital/rtl2gds/rtl2gds_install/LIB/lib/tsmc018/fireIce/libgen_lef.cl"

output_db -type dspf \
	 -output_incomplete_nets false \
 	 -output_unrouted_nets true \
	-spice_compatible_mode true \
	 -disable_instances false \
	 -subtype "STANDARD" \
	-include_parasitic_res_model  comment \
	 -compressed false
output_setup \
	 -compressed false \
	 -file_name "c499_clk_opFF"
parasitic_reduction \
	 -enable_reduction true
process_technology \
	  -technology_library_file "/home/users/nanditha/tmp/_auto_qrc_techlib.defs" \
	-technology_name "_auto_tech_"

extract \
	  -selection "all" \
	 -type "rc_coupled"
 	#Uncomment if reqd
	#-type "c_only_coupled"

#Uncomment out the next line if required 
#extract \
	# -selection "net VDD" \
	# -type "none"
#extract \
	# -selection "net vdd" \
	# -type "none"
#extract \
	# -selection "net GND" \
	# -type "none"
#extract \
	# -selection "net gnd" \
	# -type "none"

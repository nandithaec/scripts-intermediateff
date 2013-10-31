********** Glitched induced version of LIBRARY : osu018_stdcells_correct_vdd_gnd.sp **********



******************************* ORIGINAL SUBCIRCUIT : AND2X1 ******************************* 

.subckt AND2X1 A B 0 Y vdd
*corrected
**Vvdd vdd 0 1.8

M0 a_2_6# A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X1

****** AND2X1 : Glitched version 1 : glitch at a_2_6# ******

.subckt AND2X1_1 A B 0 Y vdd
Icharge 0 a_2_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
*corrected
**Vvdd vdd 0 1.8

M0 a_2_6# A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X1_1

****** AND2X1 : Glitched version 2 : glitch at Y ******

.subckt AND2X1_2 A B 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
*corrected
**Vvdd vdd 0 1.8

M0 a_2_6# A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X1_2

****** AND2X1 : Glitched version 3 : glitch at a_9_6# ******

.subckt AND2X1_3 A B 0 Y vdd
Icharge 0 a_9_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
*corrected
**Vvdd vdd 0 1.8

M0 a_2_6# A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X1_3


******************************* ORIGINAL SUBCIRCUIT : AND2X2 ******************************* 

.subckt AND2X2  A B 0 Y vdd

*Vvdd vdd 0 1.8
*V0 0 0 0

M0 a_2_6# A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X2

****** AND2X2 : Glitched version 1 : glitch at a_2_6# ******

.subckt AND2X2_1  A B 0 Y vdd
Icharge 0 a_2_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0

M0 a_2_6# A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X2_1

****** AND2X2 : Glitched version 2 : glitch at Y ******

.subckt AND2X2_2  A B 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0

M0 a_2_6# A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X2_2

****** AND2X2 : Glitched version 3 : glitch at a_9_6# ******

.subckt AND2X2_3  A B 0 Y vdd
Icharge 0 a_9_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0

M0 a_2_6# A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X2_3


******************************* ORIGINAL SUBCIRCUIT : AOI21X1 ******************************* 

.subckt AOI21X1 A B C 0 Y vdd
M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_12_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y B a_12_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 C Y 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI21X1

****** AOI21X1 : Glitched version 1 : glitch at a_2_54# ******

.subckt AOI21X1_1 A B C 0 Y vdd
Icharge 0 a_2_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_12_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y B a_12_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 C Y 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI21X1_1

****** AOI21X1 : Glitched version 2 : glitch at Y ******

.subckt AOI21X1_2 A B C 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_12_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y B a_12_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 C Y 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI21X1_2

****** AOI21X1 : Glitched version 3 : glitch at a_12_6# ******

.subckt AOI21X1_3 A B C 0 Y vdd
Icharge 0 a_12_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_12_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y B a_12_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 C Y 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI21X1_3


******************************* ORIGINAL SUBCIRCUIT : AOI22X1 ******************************* 

.subckt AOI22X1 A B C D 0 Y vdd
*corrected

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y D a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# C Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_11_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y B a_11_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_28_6# D Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 0 C a_28_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI22X1

****** AOI22X1 : Glitched version 1 : glitch at a_2_54# ******

.subckt AOI22X1_1 A B C D 0 Y vdd
Icharge 0 a_2_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
*corrected

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y D a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# C Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_11_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y B a_11_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_28_6# D Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 0 C a_28_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI22X1_1

****** AOI22X1 : Glitched version 2 : glitch at Y ******

.subckt AOI22X1_2 A B C D 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
*corrected

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y D a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# C Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_11_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y B a_11_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_28_6# D Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 0 C a_28_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI22X1_2

****** AOI22X1 : Glitched version 3 : glitch at a_11_6# ******

.subckt AOI22X1_3 A B C D 0 Y vdd
Icharge 0 a_11_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
*corrected

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y D a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# C Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_11_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y B a_11_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_28_6# D Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 0 C a_28_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI22X1_3

****** AOI22X1 : Glitched version 4 : glitch at a_28_6# ******

.subckt AOI22X1_4 A B C D 0 Y vdd
Icharge 0 a_28_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
*corrected

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y D a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# C Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_11_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y B a_11_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_28_6# D Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 0 C a_28_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI22X1_4


******************************* ORIGINAL SUBCIRCUIT : BUFX2 ******************************* 

.subckt BUFX2 A 0 Y vdd

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_2_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 0 A a_2_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 Y a_2_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends BUFX2

****** BUFX2 : Glitched version 1 : glitch at Y ******

.subckt BUFX2_1 A 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_2_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 0 A a_2_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 Y a_2_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends BUFX2_1


******************************* ORIGINAL SUBCIRCUIT : BUFX4 ******************************* 

.subckt BUFX4 A 0 Y vdd

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_2_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 0 A a_2_6# 0 nfet w=1.5u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y a_2_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 a_2_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends BUFX4

****** BUFX4 : Glitched version 1 : glitch at Y ******

.subckt BUFX4_1 A 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_2_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 0 A a_2_6# 0 nfet w=1.5u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y a_2_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 a_2_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends BUFX4_1


******************************* ORIGINAL SUBCIRCUIT : CLKBUF1 ******************************* 

.subckt CLKBUF1 A 0 Y vdd

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_41_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF1

****** CLKBUF1 : Glitched version 1 : glitch at a_9_6# ******

.subckt CLKBUF1_1 A 0 Y vdd
Icharge 0 a_9_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_41_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF1_1

****** CLKBUF1 : Glitched version 2 : glitch at a_25_6# ******

.subckt CLKBUF1_2 A 0 Y vdd
Icharge 0 a_25_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_41_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF1_2

****** CLKBUF1 : Glitched version 3 : glitch at a_41_6# ******

.subckt CLKBUF1_3 A 0 Y vdd
Icharge 0 a_41_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_41_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF1_3

****** CLKBUF1 : Glitched version 4 : glitch at Y ******

.subckt CLKBUF1_4 A 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_41_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF1_4


******************************* ORIGINAL SUBCIRCUIT : CLKBUF2 ******************************* 

.subckt CLKBUF2 vdd 0 A Y
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 Y a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 Y a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_73_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF2

****** CLKBUF2 : Glitched version 1 : glitch at a_9_6# ******

.subckt CLKBUF2_1 vdd 0 A Y
Icharge 0 a_9_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 Y a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 Y a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_73_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF2_1

****** CLKBUF2 : Glitched version 2 : glitch at a_25_6# ******

.subckt CLKBUF2_2 vdd 0 A Y
Icharge 0 a_25_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 Y a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 Y a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_73_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF2_2

****** CLKBUF2 : Glitched version 3 : glitch at a_41_6# ******

.subckt CLKBUF2_3 vdd 0 A Y
Icharge 0 a_41_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 Y a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 Y a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_73_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF2_3

****** CLKBUF2 : Glitched version 4 : glitch at a_57_6# ******

.subckt CLKBUF2_4 vdd 0 A Y
Icharge 0 a_57_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 Y a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 Y a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_73_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF2_4

****** CLKBUF2 : Glitched version 5 : glitch at a_73_6# ******

.subckt CLKBUF2_5 vdd 0 A Y
Icharge 0 a_73_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 Y a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 Y a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_73_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF2_5

****** CLKBUF2 : Glitched version 6 : glitch at Y ******

.subckt CLKBUF2_6 vdd 0 A Y
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 Y a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 Y a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_73_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF2_6


******************************* ORIGINAL SUBCIRCUIT : CLKBUF3 ******************************* 

.subckt CLKBUF3 0 vdd A Y
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_89_6# a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# a_89_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_105_6# a_89_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd a_89_6# a_105_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_105_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_105_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_89_6# a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 0 a_73_6# a_89_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_105_6# a_89_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 0 a_89_6# a_105_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 Y a_105_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_105_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF3

****** CLKBUF3 : Glitched version 1 : glitch at a_9_6# ******

.subckt CLKBUF3_1 0 vdd A Y
Icharge 0 a_9_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_89_6# a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# a_89_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_105_6# a_89_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd a_89_6# a_105_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_105_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_105_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_89_6# a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 0 a_73_6# a_89_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_105_6# a_89_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 0 a_89_6# a_105_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 Y a_105_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_105_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF3_1

****** CLKBUF3 : Glitched version 2 : glitch at a_25_6# ******

.subckt CLKBUF3_2 0 vdd A Y
Icharge 0 a_25_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_89_6# a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# a_89_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_105_6# a_89_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd a_89_6# a_105_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_105_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_105_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_89_6# a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 0 a_73_6# a_89_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_105_6# a_89_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 0 a_89_6# a_105_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 Y a_105_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_105_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF3_2

****** CLKBUF3 : Glitched version 3 : glitch at a_41_6# ******

.subckt CLKBUF3_3 0 vdd A Y
Icharge 0 a_41_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_89_6# a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# a_89_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_105_6# a_89_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd a_89_6# a_105_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_105_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_105_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_89_6# a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 0 a_73_6# a_89_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_105_6# a_89_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 0 a_89_6# a_105_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 Y a_105_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_105_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF3_3

****** CLKBUF3 : Glitched version 4 : glitch at a_57_6# ******

.subckt CLKBUF3_4 0 vdd A Y
Icharge 0 a_57_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_89_6# a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# a_89_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_105_6# a_89_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd a_89_6# a_105_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_105_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_105_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_89_6# a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 0 a_73_6# a_89_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_105_6# a_89_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 0 a_89_6# a_105_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 Y a_105_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_105_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF3_4

****** CLKBUF3 : Glitched version 5 : glitch at a_73_6# ******

.subckt CLKBUF3_5 0 vdd A Y
Icharge 0 a_73_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_89_6# a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# a_89_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_105_6# a_89_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd a_89_6# a_105_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_105_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_105_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_89_6# a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 0 a_73_6# a_89_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_105_6# a_89_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 0 a_89_6# a_105_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 Y a_105_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_105_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF3_5

****** CLKBUF3 : Glitched version 6 : glitch at a_89_6# ******

.subckt CLKBUF3_6 0 vdd A Y
Icharge 0 a_89_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_89_6# a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# a_89_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_105_6# a_89_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd a_89_6# a_105_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_105_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_105_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_89_6# a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 0 a_73_6# a_89_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_105_6# a_89_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 0 a_89_6# a_105_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 Y a_105_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_105_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF3_6

****** CLKBUF3 : Glitched version 7 : glitch at Y ******

.subckt CLKBUF3_7 0 vdd A Y
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 a_9_6# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_89_6# a_73_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# a_89_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_105_6# a_89_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd a_89_6# a_105_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_105_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_105_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 A a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_25_6# a_9_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 0 a_9_6# a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_41_6# a_25_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 0 a_25_6# a_41_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_57_6# a_41_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_41_6# a_57_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_73_6# a_57_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 a_57_6# a_73_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_89_6# a_73_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 0 a_73_6# a_89_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_105_6# a_89_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 0 a_89_6# a_105_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 Y a_105_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_105_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF3_7


******************************* ORIGINAL SUBCIRCUIT : DFFNEGX1 ******************************* 

.subckt DFFNEGX1 CLK vdd D 0 Q
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1

****** DFFNEGX1 : Glitched version 1 : glitch at a_17_74# ******

.subckt DFFNEGX1_1 CLK vdd D 0 Q
Icharge 0 a_17_74# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1_1

****** DFFNEGX1 : Glitched version 2 : glitch at a_23_6# ******

.subckt DFFNEGX1_2 CLK vdd D 0 Q
Icharge 0 a_23_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1_2

****** DFFNEGX1 : Glitched version 3 : glitch at a_31_74# ******

.subckt DFFNEGX1_3 CLK vdd D 0 Q
Icharge 0 a_31_74# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1_3

****** DFFNEGX1 : Glitched version 4 : glitch at a_34_4# ******

.subckt DFFNEGX1_4 CLK vdd D 0 Q
Icharge 0 a_34_4# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1_4

****** DFFNEGX1 : Glitched version 5 : glitch at a_61_74# ******

.subckt DFFNEGX1_5 CLK vdd D 0 Q
Icharge 0 a_61_74# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1_5

****** DFFNEGX1 : Glitched version 6 : glitch at a_66_6# ******

.subckt DFFNEGX1_6 CLK vdd D 0 Q
Icharge 0 a_66_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1_6

****** DFFNEGX1 : Glitched version 7 : glitch at a_76_84# ******

.subckt DFFNEGX1_7 CLK vdd D 0 Q
Icharge 0 a_76_84# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1_7

****** DFFNEGX1 : Glitched version 8 : glitch at Q ******

.subckt DFFNEGX1_8 CLK vdd D 0 Q
Icharge 0 Q EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1_8

****** DFFNEGX1 : Glitched version 9 : glitch at a_17_6# ******

.subckt DFFNEGX1_9 CLK vdd D 0 Q
Icharge 0 a_17_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1_9

****** DFFNEGX1 : Glitched version 10 : glitch at a_31_6# ******

.subckt DFFNEGX1_10 CLK vdd D 0 Q
Icharge 0 a_31_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1_10

****** DFFNEGX1 : Glitched version 11 : glitch at a_61_6# ******

.subckt DFFNEGX1_11 CLK vdd D 0 Q
Icharge 0 a_61_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1_11

****** DFFNEGX1 : Glitched version 12 : glitch at a_76_6# ******

.subckt DFFNEGX1_12 CLK vdd D 0 Q
Icharge 0 a_76_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1_12


******************************* ORIGINAL SUBCIRCUIT : DFFPOSX1 ******************************* 

.subckt DFFPOSX1 Q CLK D 0 vdd


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1

****** DFFPOSX1 : Glitched version 1 : glitch at a_17_74# ******

.subckt DFFPOSX1_1 Q CLK D 0 vdd
Icharge 0 a_17_74# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1_1

****** DFFPOSX1 : Glitched version 2 : glitch at a_22_6# ******

.subckt DFFPOSX1_2 Q CLK D 0 vdd
Icharge 0 a_22_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1_2

****** DFFPOSX1 : Glitched version 3 : glitch at a_31_74# ******

.subckt DFFPOSX1_3 Q CLK D 0 vdd
Icharge 0 a_31_74# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1_3

****** DFFPOSX1 : Glitched version 4 : glitch at a_34_4# ******

.subckt DFFPOSX1_4 Q CLK D 0 vdd
Icharge 0 a_34_4# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1_4

****** DFFPOSX1 : Glitched version 5 : glitch at a_61_74# ******

.subckt DFFPOSX1_5 Q CLK D 0 vdd
Icharge 0 a_61_74# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1_5

****** DFFPOSX1 : Glitched version 6 : glitch at a_66_6# ******

.subckt DFFPOSX1_6 Q CLK D 0 vdd
Icharge 0 a_66_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1_6

****** DFFPOSX1 : Glitched version 7 : glitch at a_76_84# ******

.subckt DFFPOSX1_7 Q CLK D 0 vdd
Icharge 0 a_76_84# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1_7

****** DFFPOSX1 : Glitched version 8 : glitch at Q ******

.subckt DFFPOSX1_8 Q CLK D 0 vdd
Icharge 0 Q EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1_8

****** DFFPOSX1 : Glitched version 9 : glitch at a_17_6# ******

.subckt DFFPOSX1_9 Q CLK D 0 vdd
Icharge 0 a_17_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1_9

****** DFFPOSX1 : Glitched version 10 : glitch at a_31_6# ******

.subckt DFFPOSX1_10 Q CLK D 0 vdd
Icharge 0 a_31_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1_10

****** DFFPOSX1 : Glitched version 11 : glitch at a_61_6# ******

.subckt DFFPOSX1_11 Q CLK D 0 vdd
Icharge 0 a_61_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1_11

****** DFFPOSX1 : Glitched version 12 : glitch at a_76_6# ******

.subckt DFFPOSX1_12 Q CLK D 0 vdd
Icharge 0 a_76_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 0 a_34_4# a_31_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 Q a_76_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1_12


******************************* ORIGINAL SUBCIRCUIT : DFFSR ******************************* 

.subckt DFFSR Q CLK R S D 0 vdd

M0 a_2_6# R vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd a_10_61# a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_10_61# a_23_27# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd S a_10_61# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_23_27# a_47_71# a_2_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_57_6# a_47_4# a_23_27# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd D a_57_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_47_71# a_47_4# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_47_71# CLK vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_105_6# a_47_71# a_10_61# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_113_6# a_47_4# a_105_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_122_6# a_105_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd R a_122_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_113_6# a_122_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 vdd S a_113_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_122_6# Q vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_10_6# R a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_10_61# a_10_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_26_6# a_23_27# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_10_61# S a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_23_27# a_47_4# a_2_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_57_6# a_47_71# a_23_27# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 0 D a_57_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_47_71# a_47_4# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_47_71# CLK 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_105_6# a_47_4# a_10_61# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_113_6# a_47_71# a_105_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_130_6# a_105_6# a_122_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 0 R a_130_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_146_6# a_122_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_113_6# S a_146_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_122_6# Q 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFSR

****** DFFSR : Glitched version 1 : glitch at a_2_6# ******

.subckt DFFSR_1 Q CLK R S D 0 vdd
Icharge 0 a_2_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 a_2_6# R vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd a_10_61# a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_10_61# a_23_27# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd S a_10_61# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_23_27# a_47_71# a_2_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_57_6# a_47_4# a_23_27# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd D a_57_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_47_71# a_47_4# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_47_71# CLK vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_105_6# a_47_71# a_10_61# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_113_6# a_47_4# a_105_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_122_6# a_105_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd R a_122_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_113_6# a_122_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 vdd S a_113_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_122_6# Q vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_10_6# R a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_10_61# a_10_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_26_6# a_23_27# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_10_61# S a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_23_27# a_47_4# a_2_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_57_6# a_47_71# a_23_27# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 0 D a_57_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_47_71# a_47_4# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_47_71# CLK 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_105_6# a_47_4# a_10_61# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_113_6# a_47_71# a_105_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_130_6# a_105_6# a_122_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 0 R a_130_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_146_6# a_122_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_113_6# S a_146_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_122_6# Q 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFSR_1

****** DFFSR : Glitched version 2 : glitch at a_23_27# ******

.subckt DFFSR_2 Q CLK R S D 0 vdd
Icharge 0 a_23_27# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 a_2_6# R vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd a_10_61# a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_10_61# a_23_27# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd S a_10_61# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_23_27# a_47_71# a_2_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_57_6# a_47_4# a_23_27# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd D a_57_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_47_71# a_47_4# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_47_71# CLK vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_105_6# a_47_71# a_10_61# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_113_6# a_47_4# a_105_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_122_6# a_105_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd R a_122_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_113_6# a_122_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 vdd S a_113_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_122_6# Q vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_10_6# R a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_10_61# a_10_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_26_6# a_23_27# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_10_61# S a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_23_27# a_47_4# a_2_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_57_6# a_47_71# a_23_27# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 0 D a_57_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_47_71# a_47_4# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_47_71# CLK 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_105_6# a_47_4# a_10_61# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_113_6# a_47_71# a_105_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_130_6# a_105_6# a_122_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 0 R a_130_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_146_6# a_122_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_113_6# S a_146_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_122_6# Q 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFSR_2

****** DFFSR : Glitched version 3 : glitch at a_57_6# ******

.subckt DFFSR_3 Q CLK R S D 0 vdd
Icharge 0 a_57_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 a_2_6# R vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd a_10_61# a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_10_61# a_23_27# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd S a_10_61# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_23_27# a_47_71# a_2_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_57_6# a_47_4# a_23_27# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd D a_57_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_47_71# a_47_4# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_47_71# CLK vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_105_6# a_47_71# a_10_61# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_113_6# a_47_4# a_105_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_122_6# a_105_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd R a_122_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_113_6# a_122_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 vdd S a_113_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_122_6# Q vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_10_6# R a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_10_61# a_10_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_26_6# a_23_27# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_10_61# S a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_23_27# a_47_4# a_2_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_57_6# a_47_71# a_23_27# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 0 D a_57_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_47_71# a_47_4# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_47_71# CLK 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_105_6# a_47_4# a_10_61# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_113_6# a_47_71# a_105_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_130_6# a_105_6# a_122_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 0 R a_130_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_146_6# a_122_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_113_6# S a_146_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_122_6# Q 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFSR_3

****** DFFSR : Glitched version 4 : glitch at a_47_71# ******

.subckt DFFSR_4 Q CLK R S D 0 vdd
Icharge 0 a_47_71# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 a_2_6# R vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd a_10_61# a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_10_61# a_23_27# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd S a_10_61# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_23_27# a_47_71# a_2_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_57_6# a_47_4# a_23_27# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd D a_57_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_47_71# a_47_4# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_47_71# CLK vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_105_6# a_47_71# a_10_61# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_113_6# a_47_4# a_105_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_122_6# a_105_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd R a_122_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_113_6# a_122_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 vdd S a_113_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_122_6# Q vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_10_6# R a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_10_61# a_10_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_26_6# a_23_27# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_10_61# S a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_23_27# a_47_4# a_2_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_57_6# a_47_71# a_23_27# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 0 D a_57_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_47_71# a_47_4# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_47_71# CLK 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_105_6# a_47_4# a_10_61# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_113_6# a_47_71# a_105_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_130_6# a_105_6# a_122_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 0 R a_130_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_146_6# a_122_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_113_6# S a_146_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_122_6# Q 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFSR_4

****** DFFSR : Glitched version 5 : glitch at a_113_6# ******

.subckt DFFSR_5 Q CLK R S D 0 vdd
Icharge 0 a_113_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 a_2_6# R vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd a_10_61# a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_10_61# a_23_27# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd S a_10_61# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_23_27# a_47_71# a_2_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_57_6# a_47_4# a_23_27# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd D a_57_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_47_71# a_47_4# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_47_71# CLK vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_105_6# a_47_71# a_10_61# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_113_6# a_47_4# a_105_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_122_6# a_105_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd R a_122_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_113_6# a_122_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 vdd S a_113_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_122_6# Q vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_10_6# R a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_10_61# a_10_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_26_6# a_23_27# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_10_61# S a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_23_27# a_47_4# a_2_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_57_6# a_47_71# a_23_27# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 0 D a_57_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_47_71# a_47_4# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_47_71# CLK 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_105_6# a_47_4# a_10_61# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_113_6# a_47_71# a_105_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_130_6# a_105_6# a_122_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 0 R a_130_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_146_6# a_122_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_113_6# S a_146_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_122_6# Q 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFSR_5

****** DFFSR : Glitched version 6 : glitch at a_122_6# ******

.subckt DFFSR_6 Q CLK R S D 0 vdd
Icharge 0 a_122_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 a_2_6# R vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd a_10_61# a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_10_61# a_23_27# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd S a_10_61# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_23_27# a_47_71# a_2_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_57_6# a_47_4# a_23_27# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd D a_57_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_47_71# a_47_4# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_47_71# CLK vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_105_6# a_47_71# a_10_61# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_113_6# a_47_4# a_105_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_122_6# a_105_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd R a_122_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_113_6# a_122_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 vdd S a_113_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_122_6# Q vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_10_6# R a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_10_61# a_10_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_26_6# a_23_27# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_10_61# S a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_23_27# a_47_4# a_2_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_57_6# a_47_71# a_23_27# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 0 D a_57_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_47_71# a_47_4# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_47_71# CLK 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_105_6# a_47_4# a_10_61# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_113_6# a_47_71# a_105_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_130_6# a_105_6# a_122_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 0 R a_130_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_146_6# a_122_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_113_6# S a_146_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_122_6# Q 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFSR_6

****** DFFSR : Glitched version 7 : glitch at a_26_6# ******

.subckt DFFSR_7 Q CLK R S D 0 vdd
Icharge 0 a_26_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 a_2_6# R vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd a_10_61# a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_10_61# a_23_27# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd S a_10_61# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_23_27# a_47_71# a_2_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_57_6# a_47_4# a_23_27# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd D a_57_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_47_71# a_47_4# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_47_71# CLK vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_105_6# a_47_71# a_10_61# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_113_6# a_47_4# a_105_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_122_6# a_105_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd R a_122_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_113_6# a_122_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 vdd S a_113_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_122_6# Q vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_10_6# R a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_10_61# a_10_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_26_6# a_23_27# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_10_61# S a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_23_27# a_47_4# a_2_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_57_6# a_47_71# a_23_27# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 0 D a_57_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_47_71# a_47_4# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_47_71# CLK 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_105_6# a_47_4# a_10_61# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_113_6# a_47_71# a_105_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_130_6# a_105_6# a_122_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 0 R a_130_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_146_6# a_122_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_113_6# S a_146_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_122_6# Q 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFSR_7

****** DFFSR : Glitched version 8 : glitch at a_146_6# ******

.subckt DFFSR_8 Q CLK R S D 0 vdd
Icharge 0 a_146_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 a_2_6# R vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd a_10_61# a_2_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_10_61# a_23_27# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd S a_10_61# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_23_27# a_47_71# a_2_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_57_6# a_47_4# a_23_27# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd D a_57_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_47_71# a_47_4# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_47_71# CLK vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_105_6# a_47_71# a_10_61# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_113_6# a_47_4# a_105_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_122_6# a_105_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd R a_122_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_113_6# a_122_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 vdd S a_113_6# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_122_6# Q vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_10_6# R a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 0 a_10_61# a_10_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_26_6# a_23_27# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_10_61# S a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_23_27# a_47_4# a_2_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_57_6# a_47_71# a_23_27# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 0 D a_57_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 0 a_47_71# a_47_4# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_47_71# CLK 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_105_6# a_47_4# a_10_61# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_113_6# a_47_71# a_105_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_130_6# a_105_6# a_122_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M28 0 R a_130_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_146_6# a_122_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_113_6# S a_146_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M31 0 a_122_6# Q 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFSR_8


******************************* ORIGINAL SUBCIRCUIT : FAX1 ******************************* 

.subckt FAX1 YC YS A B C 0 vdd

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1

****** FAX1 : Glitched version 1 : glitch at a_2_54# ******

.subckt FAX1_1 YC YS A B C 0 vdd
Icharge 0 a_2_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_1

****** FAX1 : Glitched version 2 : glitch at a_25_6# ******

.subckt FAX1_2 YC YS A B C 0 vdd
Icharge 0 a_25_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_2

****** FAX1 : Glitched version 3 : glitch at a_33_54# ******

.subckt FAX1_3 YC YS A B C 0 vdd
Icharge 0 a_33_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_3

****** FAX1 : Glitched version 4 : glitch at a_46_54# ******

.subckt FAX1_4 YC YS A B C 0 vdd
Icharge 0 a_46_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_4

****** FAX1 : Glitched version 5 : glitch at a_79_46# ******

.subckt FAX1_5 YC YS A B C 0 vdd
Icharge 0 a_79_46# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_5

****** FAX1 : Glitched version 6 : glitch at a_84_46# ******

.subckt FAX1_6 YC YS A B C 0 vdd
Icharge 0 a_84_46# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_6

****** FAX1 : Glitched version 7 : glitch at YS ******

.subckt FAX1_7 YC YS A B C 0 vdd
Icharge 0 YS EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_7

****** FAX1 : Glitched version 8 : glitch at YC ******

.subckt FAX1_8 YC YS A B C 0 vdd
Icharge 0 YC EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_8

****** FAX1 : Glitched version 9 : glitch at a_2_6# ******

.subckt FAX1_9 YC YS A B C 0 vdd
Icharge 0 a_2_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_9

****** FAX1 : Glitched version 10 : glitch at a_33_6# ******

.subckt FAX1_10 YC YS A B C 0 vdd
Icharge 0 a_33_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_10

****** FAX1 : Glitched version 11 : glitch at a_46_6# ******

.subckt FAX1_11 YC YS A B C 0 vdd
Icharge 0 a_46_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_11

****** FAX1 : Glitched version 12 : glitch at a_79_6# ******

.subckt FAX1_12 YC YS A B C 0 vdd
Icharge 0 a_79_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_12

****** FAX1 : Glitched version 13 : glitch at a_84_6# ******

.subckt FAX1_13 YC YS A B C 0 vdd
Icharge 0 a_84_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=3.6u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=4.8u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M14 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M18 0 A a_33_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M20 0 B a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M25 0 A a_84_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1_13


******************************* ORIGINAL SUBCIRCUIT : HAX1 ******************************* 

.subckt HAX1 YC YS A B 0 vdd

M0 vdd A a_2_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_74# B vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_74# YC vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_41_74# a_2_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_49_54# B a_41_74# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd A a_49_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 YS a_41_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_2_74# B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 a_2_74# YC 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_38_6# a_2_74# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_41_74# B a_38_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_38_6# A a_41_74# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YS a_41_74# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends HAX1

****** HAX1 : Glitched version 1 : glitch at a_2_74# ******

.subckt HAX1_1 YC YS A B 0 vdd
Icharge 0 a_2_74# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_74# B vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_74# YC vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_41_74# a_2_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_49_54# B a_41_74# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd A a_49_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 YS a_41_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_2_74# B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 a_2_74# YC 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_38_6# a_2_74# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_41_74# B a_38_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_38_6# A a_41_74# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YS a_41_74# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends HAX1_1

****** HAX1 : Glitched version 2 : glitch at a_41_74# ******

.subckt HAX1_2 YC YS A B 0 vdd
Icharge 0 a_41_74# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_74# B vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_74# YC vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_41_74# a_2_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_49_54# B a_41_74# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd A a_49_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 YS a_41_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_2_74# B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 a_2_74# YC 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_38_6# a_2_74# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_41_74# B a_38_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_38_6# A a_41_74# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YS a_41_74# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends HAX1_2

****** HAX1 : Glitched version 3 : glitch at a_49_54# ******

.subckt HAX1_3 YC YS A B 0 vdd
Icharge 0 a_49_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_74# B vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_74# YC vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_41_74# a_2_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_49_54# B a_41_74# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd A a_49_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 YS a_41_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_2_74# B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 a_2_74# YC 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_38_6# a_2_74# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_41_74# B a_38_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_38_6# A a_41_74# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YS a_41_74# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends HAX1_3

****** HAX1 : Glitched version 4 : glitch at YS ******

.subckt HAX1_4 YC YS A B 0 vdd
Icharge 0 YS EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_74# B vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_74# YC vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_41_74# a_2_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_49_54# B a_41_74# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd A a_49_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 YS a_41_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_2_74# B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 a_2_74# YC 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_38_6# a_2_74# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_41_74# B a_38_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_38_6# A a_41_74# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YS a_41_74# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends HAX1_4

****** HAX1 : Glitched version 5 : glitch at a_9_6# ******

.subckt HAX1_5 YC YS A B 0 vdd
Icharge 0 a_9_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_74# B vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_74# YC vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_41_74# a_2_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_49_54# B a_41_74# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd A a_49_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 YS a_41_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_2_74# B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 a_2_74# YC 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_38_6# a_2_74# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_41_74# B a_38_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_38_6# A a_41_74# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YS a_41_74# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends HAX1_5

****** HAX1 : Glitched version 6 : glitch at a_38_6# ******

.subckt HAX1_6 YC YS A B 0 vdd
Icharge 0 a_38_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

M0 vdd A a_2_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_74# B vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_74# YC vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_41_74# a_2_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_49_54# B a_41_74# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd A a_49_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 YS a_41_74# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_2_74# B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 a_2_74# YC 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_38_6# a_2_74# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_41_74# B a_38_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_38_6# A a_41_74# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M13 YS a_41_74# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends HAX1_6


******************************* ORIGINAL SUBCIRCUIT : INVX1 ******************************* 

.subckt INVX1 A 0 Y vdd


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 Y A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX1

****** INVX1 : Glitched version 1 : glitch at Y ******

.subckt INVX1_1 A 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 Y A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX1_1


******************************* ORIGINAL SUBCIRCUIT : INVX2 ******************************* 

.subckt INVX2 A 0 Y vdd
*corrected

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 Y A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX2

****** INVX2 : Glitched version 1 : glitch at Y ******

.subckt INVX2_1 A 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
*corrected

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 Y A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX2_1


******************************* ORIGINAL SUBCIRCUIT : INVX4 ******************************* 

.subckt INVX4 A gnd Y vdd
*corrected

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 Y A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 0 A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX4

****** INVX4 : Glitched version 1 : glitch at Y ******

.subckt INVX4_1 A gnd Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
*corrected

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 Y A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 0 A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX4_1


******************************* ORIGINAL SUBCIRCUIT : INVX8 ******************************* 

.subckt INVX8  A 0 Y vdd
*corrected

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 Y A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 0 A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX8

****** INVX8 : Glitched version 1 : glitch at Y ******

.subckt INVX8_1  A 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
*corrected

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 Y A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 0 A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX8_1


******************************* ORIGINAL SUBCIRCUIT : LATCH ******************************* 

.subckt LATCH D Q  CLK

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_18_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_84# CLK a_23_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd Q a_35_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Q a_23_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_23_6# CLK a_18_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 Q a_35_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_23_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends LATCH

****** LATCH : Glitched version 1 : glitch at a_18_74# ******

.subckt LATCH_1 D Q  CLK
Icharge 0 a_18_74# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_18_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_84# CLK a_23_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd Q a_35_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Q a_23_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_23_6# CLK a_18_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 Q a_35_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_23_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends LATCH_1

****** LATCH : Glitched version 2 : glitch at a_23_6# ******

.subckt LATCH_2 D Q  CLK
Icharge 0 a_23_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_18_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_84# CLK a_23_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd Q a_35_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Q a_23_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_23_6# CLK a_18_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 Q a_35_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_23_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends LATCH_2

****** LATCH : Glitched version 3 : glitch at a_35_84# ******

.subckt LATCH_3 D Q  CLK
Icharge 0 a_35_84# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_18_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_84# CLK a_23_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd Q a_35_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Q a_23_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_23_6# CLK a_18_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 Q a_35_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_23_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends LATCH_3

****** LATCH : Glitched version 4 : glitch at Q ******

.subckt LATCH_4 D Q  CLK
Icharge 0 Q EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_18_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_84# CLK a_23_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd Q a_35_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Q a_23_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_23_6# CLK a_18_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 Q a_35_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_23_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends LATCH_4

****** LATCH : Glitched version 5 : glitch at a_18_6# ******

.subckt LATCH_5 D Q  CLK
Icharge 0 a_18_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_18_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_84# CLK a_23_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd Q a_35_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Q a_23_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_23_6# CLK a_18_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 Q a_35_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_23_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends LATCH_5

****** LATCH : Glitched version 6 : glitch at a_35_6# ******

.subckt LATCH_6 D Q  CLK
Icharge 0 a_35_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd CLK a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_74# D vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_18_74# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_84# CLK a_23_6# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd Q a_35_84# vdd pfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 CLK a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Q a_23_6# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# D 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_23_6# CLK a_18_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# a_23_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 Q a_35_6# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_23_6# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends LATCH_6


******************************* ORIGINAL SUBCIRCUIT : MUX2X1 ******************************* 

.subckt MUX2X1 A B S 0 Y vdd

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd S a_2_10# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_50# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y S a_17_50# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_30_54# a_2_10# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_30_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 S a_2_10# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_17_10# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 Y a_2_10# a_17_10# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_30_10# S Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 A a_30_10# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends MUX2X1

****** MUX2X1 : Glitched version 1 : glitch at Y ******

.subckt MUX2X1_1 A B S 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd S a_2_10# vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_50# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y S a_17_50# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_30_54# a_2_10# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_30_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 S a_2_10# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_17_10# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 Y a_2_10# a_17_10# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_30_10# S Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 0 A a_30_10# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends MUX2X1_1


******************************* ORIGINAL SUBCIRCUIT : NAND2X1 ******************************* 

.subckt NAND2X1  A B 0 Y vdd
**corrected



M0 Y A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 Y B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND2X1

****** NAND2X1 : Glitched version 1 : glitch at Y ******

.subckt NAND2X1_1  A B 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
**corrected



M0 Y A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 Y B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND2X1_1

****** NAND2X1 : Glitched version 2 : glitch at a_9_6# ******

.subckt NAND2X1_2  A B 0 Y vdd
Icharge 0 a_9_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
**corrected



M0 Y A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_9_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 Y B a_9_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND2X1_2


******************************* ORIGINAL SUBCIRCUIT : NAND3X1 ******************************* 

.subckt NAND3X1 A B C 0 Y vdd


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 Y A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A 0 0 nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_14_6# B a_9_6# 0 nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_14_6# 0 nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND3X1

****** NAND3X1 : Glitched version 1 : glitch at Y ******

.subckt NAND3X1_1 A B C 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 Y A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A 0 0 nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_14_6# B a_9_6# 0 nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_14_6# 0 nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND3X1_1

****** NAND3X1 : Glitched version 2 : glitch at a_9_6# ******

.subckt NAND3X1_2 A B C 0 Y vdd
Icharge 0 a_9_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 Y A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A 0 0 nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_14_6# B a_9_6# 0 nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_14_6# 0 nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND3X1_2

****** NAND3X1 : Glitched version 3 : glitch at a_14_6# ******

.subckt NAND3X1_3 A B C 0 Y vdd
Icharge 0 a_14_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 Y A vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A 0 0 nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_14_6# B a_9_6# 0 nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_14_6# 0 nfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND3X1_3


******************************* ORIGINAL SUBCIRCUIT : NOR2X1 ******************************* 

.subckt NOR2X1  A B 0 Y vdd
**corrected

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 0 B Y 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR2X1

****** NOR2X1 : Glitched version 1 : glitch at a_9_54# ******

.subckt NOR2X1_1  A B 0 Y vdd
Icharge 0 a_9_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
**corrected

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 0 B Y 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR2X1_1

****** NOR2X1 : Glitched version 2 : glitch at Y ******

.subckt NOR2X1_2  A B 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)
**corrected

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 0 B Y 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR2X1_2


******************************* ORIGINAL SUBCIRCUIT : NOR3X1 ******************************* 

.subckt NOR3X1 A B C 0 Y vdd

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_64# A vdd vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_64# B a_2_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_64# B a_25_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y C a_25_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_25_64# C Y vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 0 B Y 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y C 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR3X1

****** NOR3X1 : Glitched version 1 : glitch at a_2_64# ******

.subckt NOR3X1_1 A B C 0 Y vdd
Icharge 0 a_2_64# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_64# A vdd vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_64# B a_2_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_64# B a_25_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y C a_25_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_25_64# C Y vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 0 B Y 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y C 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR3X1_1

****** NOR3X1 : Glitched version 2 : glitch at a_25_64# ******

.subckt NOR3X1_2 A B C 0 Y vdd
Icharge 0 a_25_64# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_64# A vdd vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_64# B a_2_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_64# B a_25_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y C a_25_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_25_64# C Y vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 0 B Y 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y C 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR3X1_2

****** NOR3X1 : Glitched version 3 : glitch at Y ******

.subckt NOR3X1_3 A B C 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_64# A vdd vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_64# B a_2_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_64# B a_25_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y C a_25_64# vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_25_64# C Y vdd pfet w=3u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 0 B Y 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y C 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR3X1_3


******************************* ORIGINAL SUBCIRCUIT : OAI21X1 ******************************* 

.subckt OAI21X1  A B C 0 Y vdd

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd C Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI21X1

****** OAI21X1 : Glitched version 1 : glitch at a_9_54# ******

.subckt OAI21X1_1  A B C 0 Y vdd
Icharge 0 a_9_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd C Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI21X1_1

****** OAI21X1 : Glitched version 2 : glitch at Y ******

.subckt OAI21X1_2  A B C 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd C Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI21X1_2

****** OAI21X1 : Glitched version 3 : glitch at a_2_6# ******

.subckt OAI21X1_3  A B C 0 Y vdd
Icharge 0 a_2_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd C Y vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI21X1_3


******************************* ORIGINAL SUBCIRCUIT : OAI22X1 ******************************* 

.subckt OAI22X1  A B C D 0 Y vdd

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_28_54# D Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd C a_28_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y D a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_2_6# C Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI22X1

****** OAI22X1 : Glitched version 1 : glitch at a_9_54# ******

.subckt OAI22X1_1  A B C D 0 Y vdd
Icharge 0 a_9_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_28_54# D Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd C a_28_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y D a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_2_6# C Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI22X1_1

****** OAI22X1 : Glitched version 2 : glitch at Y ******

.subckt OAI22X1_2  A B C D 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_28_54# D Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd C a_28_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y D a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_2_6# C Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI22X1_2

****** OAI22X1 : Glitched version 3 : glitch at a_28_54# ******

.subckt OAI22X1_3  A B C D 0 Y vdd
Icharge 0 a_28_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_28_54# D Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd C a_28_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y D a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_2_6# C Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI22X1_3

****** OAI22X1 : Glitched version 4 : glitch at a_2_6# ******

.subckt OAI22X1_4  A B C D 0 Y vdd
Icharge 0 a_2_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_28_54# D Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd C a_28_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_2_6# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y D a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_2_6# C Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI22X1_4


******************************* ORIGINAL SUBCIRCUIT : OR2X1 ******************************* 

.subckt OR2X1 A B 0 Y vdd

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_2_54# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X1

****** OR2X1 : Glitched version 1 : glitch at a_9_54# ******

.subckt OR2X1_1 A B 0 Y vdd
Icharge 0 a_9_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_2_54# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X1_1

****** OR2X1 : Glitched version 2 : glitch at Y ******

.subckt OR2X1_2 A B 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_2_54# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X1_2

****** OR2X1 : Glitched version 3 : glitch at a_2_54# ******

.subckt OR2X1_3 A B 0 Y vdd
Icharge 0 a_2_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_2_54# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X1_3


******************************* ORIGINAL SUBCIRCUIT : OR2X2 ******************************* 

.subckt OR2X2 A B 0 Y vdd

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_2_54# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X2

****** OR2X2 : Glitched version 1 : glitch at a_9_54# ******

.subckt OR2X2_1 A B 0 Y vdd
Icharge 0 a_9_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_2_54# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X2_1

****** OR2X2 : Glitched version 2 : glitch at Y ******

.subckt OR2X2_2 A B 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_2_54# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X2_2

****** OR2X2 : Glitched version 3 : glitch at a_2_54# ******

.subckt OR2X2_3 A B 0 Y vdd
Icharge 0 a_2_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_54# A a_2_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_9_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 0 B a_2_54# 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X2_3


******************************* ORIGINAL SUBCIRCUIT : TBUFX1 ******************************* 

.subckt TBUFX1 EN A Y

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# EN vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_26_54# a_9_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd A a_26_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# EN 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_26_6# EN Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 A a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX1

****** TBUFX1 : Glitched version 1 : glitch at a_9_6# ******

.subckt TBUFX1_1 EN A Y
Icharge 0 a_9_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# EN vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_26_54# a_9_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd A a_26_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# EN 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_26_6# EN Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 A a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX1_1

****** TBUFX1 : Glitched version 2 : glitch at a_26_54# ******

.subckt TBUFX1_2 EN A Y
Icharge 0 a_26_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# EN vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_26_54# a_9_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd A a_26_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# EN 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_26_6# EN Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 A a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX1_2

****** TBUFX1 : Glitched version 3 : glitch at a_26_6# ******

.subckt TBUFX1_3 EN A Y
Icharge 0 a_26_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# EN vdd vdd pfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_26_54# a_9_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd A a_26_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# EN 0 0 nfet w=1u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_26_6# EN Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 0 A a_26_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX1_3


******************************* ORIGINAL SUBCIRCUIT : TBUFX2 ******************************* 

.subckt TBUFX2 A EN Y


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# EN vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_9_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_18_54# a_9_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_18_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_9_6# EN 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y EN a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# EN Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 0 A a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_18_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX2

****** TBUFX2 : Glitched version 1 : glitch at a_9_6# ******

.subckt TBUFX2_1 A EN Y
Icharge 0 a_9_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# EN vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_9_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_18_54# a_9_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_18_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_9_6# EN 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y EN a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# EN Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 0 A a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_18_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX2_1

****** TBUFX2 : Glitched version 2 : glitch at Y ******

.subckt TBUFX2_2 A EN Y
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# EN vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_9_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_18_54# a_9_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_18_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_9_6# EN 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y EN a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# EN Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 0 A a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_18_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX2_2

****** TBUFX2 : Glitched version 3 : glitch at a_18_54# ******

.subckt TBUFX2_3 A EN Y
Icharge 0 a_18_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# EN vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_9_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_18_54# a_9_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_18_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_9_6# EN 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y EN a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# EN Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 0 A a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_18_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX2_3

****** TBUFX2 : Glitched version 4 : glitch at a_18_6# ******

.subckt TBUFX2_4 A EN Y
Icharge 0 a_18_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)


*Vvdd vdd 0 1.8
*V0 0 0 0


M0 a_9_6# EN vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_9_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_18_54# a_9_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_18_54# A vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_9_6# EN 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y EN a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# EN Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 0 A a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_18_6# A 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX2_4


******************************* ORIGINAL SUBCIRCUIT : XNOR2X1 ******************************* 

.subckt XNOR2X1 A B 0 Y vdd

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_12_41# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_12_41# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_12_41# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y A a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_12_41# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XNOR2X1

****** XNOR2X1 : Glitched version 1 : glitch at a_18_54# ******

.subckt XNOR2X1_1 A B 0 Y vdd
Icharge 0 a_18_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_12_41# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_12_41# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_12_41# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y A a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_12_41# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XNOR2X1_1

****** XNOR2X1 : Glitched version 2 : glitch at Y ******

.subckt XNOR2X1_2 A B 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_12_41# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_12_41# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_12_41# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y A a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_12_41# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XNOR2X1_2

****** XNOR2X1 : Glitched version 3 : glitch at a_35_54# ******

.subckt XNOR2X1_3 A B 0 Y vdd
Icharge 0 a_35_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_12_41# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_12_41# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_12_41# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y A a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_12_41# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XNOR2X1_3

****** XNOR2X1 : Glitched version 4 : glitch at a_12_41# ******

.subckt XNOR2X1_4 A B 0 Y vdd
Icharge 0 a_12_41# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_12_41# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_12_41# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_12_41# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y A a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_12_41# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XNOR2X1_4

****** XNOR2X1 : Glitched version 5 : glitch at a_18_6# ******

.subckt XNOR2X1_5 A B 0 Y vdd
Icharge 0 a_18_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_12_41# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_12_41# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_12_41# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y A a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_12_41# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XNOR2X1_5

****** XNOR2X1 : Glitched version 6 : glitch at a_35_6# ******

.subckt XNOR2X1_6 A B 0 Y vdd
Icharge 0 a_35_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_12_41# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# A Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_12_41# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_12_41# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y A a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_12_41# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XNOR2X1_6


******************************* ORIGINAL SUBCIRCUIT : XOR2X1 ******************************* 

.subckt XOR2X1 A B 0 Y vdd

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_13_43# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# a_2_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_13_43# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_13_43# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y a_2_6# a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_13_43# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XOR2X1

****** XOR2X1 : Glitched version 1 : glitch at a_18_54# ******

.subckt XOR2X1_1 A B 0 Y vdd
Icharge 0 a_18_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_13_43# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# a_2_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_13_43# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_13_43# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y a_2_6# a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_13_43# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XOR2X1_1

****** XOR2X1 : Glitched version 2 : glitch at Y ******

.subckt XOR2X1_2 A B 0 Y vdd
Icharge 0 Y EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_13_43# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# a_2_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_13_43# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_13_43# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y a_2_6# a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_13_43# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XOR2X1_2

****** XOR2X1 : Glitched version 3 : glitch at a_35_54# ******

.subckt XOR2X1_3 A B 0 Y vdd
Icharge 0 a_35_54# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_13_43# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# a_2_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_13_43# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_13_43# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y a_2_6# a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_13_43# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XOR2X1_3

****** XOR2X1 : Glitched version 4 : glitch at a_13_43# ******

.subckt XOR2X1_4 A B 0 Y vdd
Icharge 0 a_13_43# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_13_43# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# a_2_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_13_43# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_13_43# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y a_2_6# a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_13_43# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XOR2X1_4

****** XOR2X1 : Glitched version 5 : glitch at a_18_6# ******

.subckt XOR2X1_5 A B 0 Y vdd
Icharge 0 a_18_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_13_43# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# a_2_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_13_43# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_13_43# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y a_2_6# a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_13_43# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XOR2X1_5

****** XOR2X1 : Glitched version 6 : glitch at a_35_6# ******

.subckt XOR2X1_6 A B 0 Y vdd
Icharge 0 a_35_6# EXP (0 current_magnitude rise_delay rise_time_constant fall_delay fall_time_constant)

*Corrected
*Vvdd vdd 0 1.8
*V0 0 0 0


M0 vdd A a_2_6# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_13_43# vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A a_18_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# a_2_6# Y vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_13_43# B vdd vdd pfet w=4u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M6 0 A a_2_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_13_43# 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y a_2_6# a_18_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# A Y 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M10 0 B a_35_6# 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_13_43# B 0 0 nfet w=2u l=0.2u
+ ad=0p pd=0u as=0p ps=0u 
.ends XOR2X1_6

		**************************************** LIBRARAY INFORMATION ****************************************
 **** This Library contains 32 glitch free Subcircuits 
 **** This Library contains 136 glitch affected Subcircuits 
 **** Following are the details of these Subcircuits


**** SUBCIRCUIT		|VERSION COUNT
-----------------------------------------
**** AND2X1		|	3
**** AND2X2		|	3
**** AOI21X1		|	3
**** AOI22X1		|	4
**** BUFX2		|	1
**** BUFX4		|	1
**** CLKBUF1		|	4
**** CLKBUF2		|	6
**** CLKBUF3		|	7
**** DFFNEGX1		|	12
**** DFFPOSX1		|	12
**** DFFSR		|	8
**** FAX1		|	13
**** HAX1		|	6
**** INVX1		|	1
**** INVX2		|	1
**** INVX4		|	1
**** INVX8		|	1
**** LATCH		|	6
**** MUX2X1		|	1
**** NAND2X1		|	2
**** NAND3X1		|	3
**** NOR2X1		|	2
**** NOR3X1		|	3
**** OAI21X1		|	3
**** OAI22X1		|	4
**** OR2X1		|	3
**** OR2X2		|	3
**** TBUFX1		|	3
**** TBUFX2		|	4
**** XNOR2X1		|	6
**** XOR2X1		|	6
************************************************************ END ************************************************************

>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen29
%/home/sg24duk/vivadoworkspace/ip_repo2default:defaultZ19-1700h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen2D
0/home/sg24duk/tools/Xilinx/Vivado/2022.1/data/ip2default:defaultZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/utils_1/imports/synth_1/convolution_top.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2~
j/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/utils_1/imports/synth_1/convolution_top.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
�
Command: %s
53*	vivadotcl2O
;synth_design -top convolution_top -part xczu4cg-sfvc784-1-i2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xczu4cg2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xczu4cg2default:defaultZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
a
#Helper process launched with PID %s4824*oasys2
5251492default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2912.812 ; gain = 0.000 ; free physical = 10234 ; free virtual = 20981
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2#
convolution_top2default:default2
 2default:default2t
^/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/convolution_top.v2default:default2
42default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	buffer_CU2default:default2
 2default:default2n
X/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/buffer_CU.v2default:default2
32default:default8@Z8-6157h px� 
b
%s
*synth2J
6	Parameter IMG_BIT_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter IMG_WIDTH bound to: 1012 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2n
X/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/buffer_CU.v2default:default2
982default:default8@Z8-155h px� 
�
synthesizing module '%s'%s4497*oasys2

linebuffer2default:default2
 2default:default2o
Y/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/linebuffer.v2default:default2
32default:default8@Z8-6157h px� 
a
%s
*synth2I
5	Parameter IMG_WIDTH bound to: 1012 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter IMG_BIT_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

linebuffer2default:default2
 2default:default2
02default:default2
12default:default2o
Y/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/linebuffer.v2default:default2
32default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2n
X/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/buffer_CU.v2default:default2
3102default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	buffer_CU2default:default2
 2default:default2
02default:default2
12default:default2n
X/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/buffer_CU.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
CWODSP_Gaussian2default:default2
 2default:default2o
Y/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/convolutor.v2default:default2
852default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
MULTB2default:default2
 2default:default2o
Y/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/convolutor.v2default:default2
292default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MULTB2default:default2
 2default:default2
02default:default2
12default:default2o
Y/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/convolutor.v2default:default2
292default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
parametric_RCA2default:default2
 2default:default2x
b/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/airthmetic_circuits.v2default:default2
502default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter SIZE bound to: 24 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
FA2default:default2
 2default:default2x
b/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/airthmetic_circuits.v2default:default2
192default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
HA2default:default2
 2default:default2x
b/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/airthmetic_circuits.v2default:default2
92default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
HA2default:default2
 2default:default2
02default:default2
12default:default2x
b/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/airthmetic_circuits.v2default:default2
92default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FA2default:default2
 2default:default2
02default:default2
12default:default2x
b/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/airthmetic_circuits.v2default:default2
192default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
parametric_RCA2default:default2
 2default:default2
02default:default2
12default:default2x
b/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/airthmetic_circuits.v2default:default2
502default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
CWODSP_Gaussian2default:default2
 2default:default2
02default:default2
12default:default2o
Y/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/convolutor.v2default:default2
852default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
convolution_top2default:default2
 2default:default2
02default:default2
12default:default2t
^/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/convolution_top.v2default:default2
42default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
data_reg_reg2default:default2n
X/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/buffer_CU.v2default:default2
782default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2$
conv_started_reg2default:default2n
X/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/buffer_CU.v2default:default2
942default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
t_last_counter_reg2default:default2n
X/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/buffer_CU.v2default:default2
3562default:default8@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2 
video_tready2default:default2
	buffer_CU2default:default2n
X/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/buffer_CU.v2default:default2
182default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
sel_mux2default:default2
	buffer_CU2default:default2n
X/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/buffer_CU.v2default:default2
202default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
read_en2default:default2
	buffer_CU2default:default2n
X/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/buffer_CU.v2default:default2
212default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
valid_w2default:default2#
convolution_top2default:default2t
^/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.srcs/sources_1/new/convolution_top.v2default:default2
272default:default8@Z8-3848h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
video_tready2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

sel_mux[1]2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

sel_mux[0]2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

read_en[3]2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

read_en[2]2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

read_en[1]2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

read_en[0]2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
video_tlast2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
video_tuser2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
%s*synth2�
�Finished Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2912.812 ; gain = 0.000 ; free physical = 11343 ; free virtual = 22091
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2912.812 ; gain = 0.000 ; free physical = 11340 ; free virtual = 22088
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
N
%s
*synth26
"Loading part: xczu4cg-sfvc784-1-i
2default:defaulth p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
Z
Loading part %s157*device2'
xczu4cg-sfvc784-1-i2default:defaultZ21-403h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2920.816 ; gain = 8.004 ; free physical = 11338 ; free virtual = 22086
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
	buffer_CU2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                              000 |                             0000
2default:defaulth p
x
� 
�
%s
*synth2s
_                  FILLB0 |                              001 |                             0001
2default:defaulth p
x
� 
�
%s
*synth2s
_                  FILLB1 |                              010 |                             0010
2default:defaulth p
x
� 
�
%s
*synth2s
_                  FILLB2 |                              011 |                             0011
2default:defaulth p
x
� 
�
%s
*synth2s
_                  FILLB3 |                              100 |                             0100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
	buffer_CU2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2920.816 ; gain = 8.004 ; free physical = 11262 ; free virtual = 22011
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   13 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 12    
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 384   
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               72 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               13 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 30    
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
j
%s
*synth2R
>	               7K Bit	(1012 X 8 bit)          RAMs := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input   72 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    4 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 10    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 728 (col length:96)
BRAMs: 256 (col length: RAMB18 96 RAMB36 48)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
video_tready2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

sel_mux[1]2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

sel_mux[0]2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

read_en[3]2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

read_en[2]2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

read_en[1]2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

read_en[0]2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
video_tlast2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
video_tuser2default:default2
	buffer_CU2default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 3186.316 ; gain = 273.504 ; free physical = 10517 ; free virtual = 21269
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px� 
�
%s*synth2t
`+----------------+-------------------------+-----------+----------------------+---------------+
2default:defaulth px� 
�
%s*synth2u
a|Module Name     | RTL Object              | Inference | Size (Depth x Width) | Primitives    | 
2default:defaulth px� 
�
%s*synth2t
`+----------------+-------------------------+-----------+----------------------+---------------+
2default:defaulth px� 
�
%s*synth2u
a|convolution_top | controller/lB0/line_reg | Implied   | 1 K x 8              | RAM64M8 x 96  | 
2default:defaulth px� 
�
%s*synth2u
a|convolution_top | controller/lB1/line_reg | Implied   | 1 K x 8              | RAM64M8 x 96  | 
2default:defaulth px� 
�
%s*synth2u
a|convolution_top | controller/lB2/line_reg | Implied   | 1 K x 8              | RAM64M8 x 96  | 
2default:defaulth px� 
�
%s*synth2u
a|convolution_top | controller/lB3/line_reg | Implied   | 1 K x 8              | RAM64M8 x 96  | 
2default:defaulth px� 
�
%s*synth2u
a+----------------+-------------------------+-----------+----------------------+---------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 3186.316 ; gain = 273.504 ; free physical = 10519 ; free virtual = 21271
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
� 
�
%s
*synth2t
`+----------------+-------------------------+-----------+----------------------+---------------+
2default:defaulth p
x
� 
�
%s
*synth2u
a|Module Name     | RTL Object              | Inference | Size (Depth x Width) | Primitives    | 
2default:defaulth p
x
� 
�
%s
*synth2t
`+----------------+-------------------------+-----------+----------------------+---------------+
2default:defaulth p
x
� 
�
%s
*synth2u
a|convolution_top | controller/lB0/line_reg | Implied   | 1 K x 8              | RAM64M8 x 96  | 
2default:defaulth p
x
� 
�
%s
*synth2u
a|convolution_top | controller/lB1/line_reg | Implied   | 1 K x 8              | RAM64M8 x 96  | 
2default:defaulth p
x
� 
�
%s
*synth2u
a|convolution_top | controller/lB2/line_reg | Implied   | 1 K x 8              | RAM64M8 x 96  | 
2default:defaulth p
x
� 
�
%s
*synth2u
a|convolution_top | controller/lB3/line_reg | Implied   | 1 K x 8              | RAM64M8 x 96  | 
2default:defaulth p
x
� 
�
%s
*synth2u
a+----------------+-------------------------+-----------+----------------------+---------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 3186.316 ; gain = 273.504 ; free physical = 10509 ; free virtual = 21261
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 3186.316 ; gain = 273.504 ; free physical = 10509 ; free virtual = 21261
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 3186.316 ; gain = 273.504 ; free physical = 10509 ; free virtual = 21261
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 3186.316 ; gain = 273.504 ; free physical = 10509 ; free virtual = 21261
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 3186.316 ; gain = 273.504 ; free physical = 10509 ; free virtual = 21261
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 3186.316 ; gain = 273.504 ; free physical = 10510 ; free virtual = 21262
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 3186.316 ; gain = 273.504 ; free physical = 10510 ; free virtual = 21262
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |BUFG     |     1|
2default:defaulth px� 
F
%s*synth2.
|2     |CARRY8   |     2|
2default:defaulth px� 
F
%s*synth2.
|3     |LUT1     |   174|
2default:defaulth px� 
F
%s*synth2.
|4     |LUT2     |  1006|
2default:defaulth px� 
F
%s*synth2.
|5     |LUT3     |   361|
2default:defaulth px� 
F
%s*synth2.
|6     |LUT4     |    38|
2default:defaulth px� 
F
%s*synth2.
|7     |LUT5     |   115|
2default:defaulth px� 
F
%s*synth2.
|8     |LUT6     |   661|
2default:defaulth px� 
F
%s*synth2.
|9     |MUXF7    |   128|
2default:defaulth px� 
F
%s*synth2.
|10    |MUXF8    |    32|
2default:defaulth px� 
F
%s*synth2.
|11    |RAM64M8  |   192|
2default:defaulth px� 
F
%s*synth2.
|12    |RAM64X1D |   192|
2default:defaulth px� 
F
%s*synth2.
|13    |FDRE     |   420|
2default:defaulth px� 
F
%s*synth2.
|14    |IBUF     |    12|
2default:defaulth px� 
F
%s*synth2.
|15    |OBUF     |     9|
2default:defaulth px� 
F
%s*synth2.
|16    |OBUFT    |     1|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
m
%s
*synth2U
A+------+-----------------------------+------------------+------+
2default:defaulth p
x
� 
m
%s
*synth2U
A|      |Instance                     |Module            |Cells |
2default:defaulth p
x
� 
m
%s
*synth2U
A+------+-----------------------------+------------------+------+
2default:defaulth p
x
� 
m
%s
*synth2U
A|1     |top                          |                  |  3344|
2default:defaulth p
x
� 
m
%s
*synth2U
A|2     |  controller                 |buffer_CU         |  2119|
2default:defaulth p
x
� 
m
%s
*synth2U
A|3     |    lB0                      |linebuffer        |   478|
2default:defaulth p
x
� 
m
%s
*synth2U
A|4     |    lB1                      |linebuffer_589    |   526|
2default:defaulth p
x
� 
m
%s
*synth2U
A|5     |    lB2                      |linebuffer_590    |   503|
2default:defaulth p
x
� 
m
%s
*synth2U
A|6     |    lB3                      |linebuffer_591    |   478|
2default:defaulth p
x
� 
m
%s
*synth2U
A|7     |  myip                       |CWODSP_Gaussian   |  1202|
2default:defaulth p
x
� 
m
%s
*synth2U
A|8     |    mult1                    |MULTB             |     8|
2default:defaulth p
x
� 
m
%s
*synth2U
A|9     |    mult2                    |MULTB_0           |    10|
2default:defaulth p
x
� 
m
%s
*synth2U
A|10    |    mult3                    |MULTB_1           |     8|
2default:defaulth p
x
� 
m
%s
*synth2U
A|11    |    mult4                    |MULTB_2           |     8|
2default:defaulth p
x
� 
m
%s
*synth2U
A|12    |    mult5                    |MULTB_3           |     8|
2default:defaulth p
x
� 
m
%s
*synth2U
A|13    |    mult6                    |MULTB_4           |     8|
2default:defaulth p
x
� 
m
%s
*synth2U
A|14    |    mult7                    |MULTB_5           |     8|
2default:defaulth p
x
� 
m
%s
*synth2U
A|15    |    mult8                    |MULTB_6           |     8|
2default:defaulth p
x
� 
m
%s
*synth2U
A|16    |    mult9                    |MULTB_7           |     8|
2default:defaulth p
x
� 
m
%s
*synth2U
A|17    |    rca0                     |parametric_RCA    |   154|
2default:defaulth p
x
� 
m
%s
*synth2U
A|18    |      \genblk1[0].fa_param   |FA_517            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|19    |        ha0                  |HA_587            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|20    |        ha1                  |HA_588            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|21    |      \genblk1[10].fa_param  |FA_518            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|22    |        ha0                  |HA_585            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|23    |        ha1                  |HA_586            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|24    |      \genblk1[11].fa_param  |FA_519            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|25    |        ha0                  |HA_583            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|26    |        ha1                  |HA_584            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|27    |      \genblk1[12].fa_param  |FA_520            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|28    |        ha0                  |HA_581            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|29    |        ha1                  |HA_582            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|30    |      \genblk1[13].fa_param  |FA_521            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|31    |        ha0                  |HA_579            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|32    |        ha1                  |HA_580            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|33    |      \genblk1[14].fa_param  |FA_522            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|34    |        ha0                  |HA_577            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|35    |        ha1                  |HA_578            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|36    |      \genblk1[15].fa_param  |FA_523            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|37    |        ha0                  |HA_575            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|38    |        ha1                  |HA_576            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|39    |      \genblk1[16].fa_param  |FA_524            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|40    |        ha0                  |HA_573            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|41    |        ha1                  |HA_574            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|42    |      \genblk1[17].fa_param  |FA_525            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|43    |        ha0                  |HA_571            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|44    |        ha1                  |HA_572            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|45    |      \genblk1[18].fa_param  |FA_526            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|46    |        ha0                  |HA_569            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|47    |        ha1                  |HA_570            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|48    |      \genblk1[19].fa_param  |FA_527            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|49    |        ha0                  |HA_567            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|50    |        ha1                  |HA_568            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|51    |      \genblk1[1].fa_param   |FA_528            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|52    |        ha0                  |HA_565            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|53    |        ha1                  |HA_566            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|54    |      \genblk1[20].fa_param  |FA_529            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|55    |        ha0                  |HA_563            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|56    |        ha1                  |HA_564            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|57    |      \genblk1[21].fa_param  |FA_530            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|58    |        ha0                  |HA_561            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|59    |        ha1                  |HA_562            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|60    |      \genblk1[22].fa_param  |FA_531            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|61    |        ha0                  |HA_559            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|62    |        ha1                  |HA_560            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|63    |      \genblk1[23].fa_param  |FA_532            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|64    |        ha0                  |HA_557            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|65    |        ha1                  |HA_558            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|66    |      \genblk1[2].fa_param   |FA_533            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|67    |        ha0                  |HA_555            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|68    |        ha1                  |HA_556            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|69    |      \genblk1[3].fa_param   |FA_534            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|70    |        ha0                  |HA_553            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|71    |        ha1                  |HA_554            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|72    |      \genblk1[4].fa_param   |FA_535            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|73    |        ha0                  |HA_551            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|74    |        ha1                  |HA_552            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|75    |      \genblk1[5].fa_param   |FA_536            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|76    |        ha0                  |HA_549            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|77    |        ha1                  |HA_550            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|78    |      \genblk1[6].fa_param   |FA_537            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|79    |        ha0                  |HA_547            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|80    |        ha1                  |HA_548            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|81    |      \genblk1[7].fa_param   |FA_538            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|82    |        ha0                  |HA_545            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|83    |        ha1                  |HA_546            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|84    |      \genblk1[8].fa_param   |FA_539            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|85    |        ha0                  |HA_543            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|86    |        ha1                  |HA_544            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|87    |      \genblk1[9].fa_param   |FA_540            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|88    |        ha0                  |HA_541            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|89    |        ha1                  |HA_542            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|90    |    rca1                     |parametric_RCA_8  |   154|
2default:defaulth p
x
� 
m
%s
*synth2U
A|91    |      \genblk1[0].fa_param   |FA_445            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|92    |        ha0                  |HA_515            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|93    |        ha1                  |HA_516            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|94    |      \genblk1[10].fa_param  |FA_446            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|95    |        ha0                  |HA_513            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|96    |        ha1                  |HA_514            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|97    |      \genblk1[11].fa_param  |FA_447            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|98    |        ha0                  |HA_511            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|99    |        ha1                  |HA_512            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|100   |      \genblk1[12].fa_param  |FA_448            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|101   |        ha0                  |HA_509            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|102   |        ha1                  |HA_510            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|103   |      \genblk1[13].fa_param  |FA_449            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|104   |        ha0                  |HA_507            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|105   |        ha1                  |HA_508            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|106   |      \genblk1[14].fa_param  |FA_450            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|107   |        ha0                  |HA_505            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|108   |        ha1                  |HA_506            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|109   |      \genblk1[15].fa_param  |FA_451            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|110   |        ha0                  |HA_503            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|111   |        ha1                  |HA_504            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|112   |      \genblk1[16].fa_param  |FA_452            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|113   |        ha0                  |HA_501            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|114   |        ha1                  |HA_502            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|115   |      \genblk1[17].fa_param  |FA_453            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|116   |        ha0                  |HA_499            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|117   |        ha1                  |HA_500            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|118   |      \genblk1[18].fa_param  |FA_454            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|119   |        ha0                  |HA_497            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|120   |        ha1                  |HA_498            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|121   |      \genblk1[19].fa_param  |FA_455            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|122   |        ha0                  |HA_495            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|123   |        ha1                  |HA_496            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|124   |      \genblk1[1].fa_param   |FA_456            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|125   |        ha0                  |HA_493            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|126   |        ha1                  |HA_494            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|127   |      \genblk1[20].fa_param  |FA_457            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|128   |        ha0                  |HA_491            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|129   |        ha1                  |HA_492            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|130   |      \genblk1[21].fa_param  |FA_458            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|131   |        ha0                  |HA_489            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|132   |        ha1                  |HA_490            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|133   |      \genblk1[22].fa_param  |FA_459            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|134   |        ha0                  |HA_487            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|135   |        ha1                  |HA_488            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|136   |      \genblk1[23].fa_param  |FA_460            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|137   |        ha0                  |HA_485            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|138   |        ha1                  |HA_486            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|139   |      \genblk1[2].fa_param   |FA_461            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|140   |        ha0                  |HA_483            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|141   |        ha1                  |HA_484            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|142   |      \genblk1[3].fa_param   |FA_462            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|143   |        ha0                  |HA_481            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|144   |        ha1                  |HA_482            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|145   |      \genblk1[4].fa_param   |FA_463            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|146   |        ha0                  |HA_479            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|147   |        ha1                  |HA_480            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|148   |      \genblk1[5].fa_param   |FA_464            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|149   |        ha0                  |HA_477            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|150   |        ha1                  |HA_478            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|151   |      \genblk1[6].fa_param   |FA_465            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|152   |        ha0                  |HA_475            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|153   |        ha1                  |HA_476            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|154   |      \genblk1[7].fa_param   |FA_466            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|155   |        ha0                  |HA_473            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|156   |        ha1                  |HA_474            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|157   |      \genblk1[8].fa_param   |FA_467            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|158   |        ha0                  |HA_471            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|159   |        ha1                  |HA_472            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|160   |      \genblk1[9].fa_param   |FA_468            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|161   |        ha0                  |HA_469            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|162   |        ha1                  |HA_470            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|163   |    rca2                     |parametric_RCA_9  |   154|
2default:defaulth p
x
� 
m
%s
*synth2U
A|164   |      \genblk1[0].fa_param   |FA_373            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|165   |        ha0                  |HA_443            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|166   |        ha1                  |HA_444            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|167   |      \genblk1[10].fa_param  |FA_374            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|168   |        ha0                  |HA_441            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|169   |        ha1                  |HA_442            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|170   |      \genblk1[11].fa_param  |FA_375            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|171   |        ha0                  |HA_439            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|172   |        ha1                  |HA_440            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|173   |      \genblk1[12].fa_param  |FA_376            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|174   |        ha0                  |HA_437            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|175   |        ha1                  |HA_438            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|176   |      \genblk1[13].fa_param  |FA_377            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|177   |        ha0                  |HA_435            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|178   |        ha1                  |HA_436            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|179   |      \genblk1[14].fa_param  |FA_378            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|180   |        ha0                  |HA_433            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|181   |        ha1                  |HA_434            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|182   |      \genblk1[15].fa_param  |FA_379            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|183   |        ha0                  |HA_431            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|184   |        ha1                  |HA_432            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|185   |      \genblk1[16].fa_param  |FA_380            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|186   |        ha0                  |HA_429            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|187   |        ha1                  |HA_430            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|188   |      \genblk1[17].fa_param  |FA_381            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|189   |        ha0                  |HA_427            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|190   |        ha1                  |HA_428            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|191   |      \genblk1[18].fa_param  |FA_382            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|192   |        ha0                  |HA_425            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|193   |        ha1                  |HA_426            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|194   |      \genblk1[19].fa_param  |FA_383            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|195   |        ha0                  |HA_423            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|196   |        ha1                  |HA_424            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|197   |      \genblk1[1].fa_param   |FA_384            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|198   |        ha0                  |HA_421            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|199   |        ha1                  |HA_422            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|200   |      \genblk1[20].fa_param  |FA_385            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|201   |        ha0                  |HA_419            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|202   |        ha1                  |HA_420            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|203   |      \genblk1[21].fa_param  |FA_386            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|204   |        ha0                  |HA_417            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|205   |        ha1                  |HA_418            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|206   |      \genblk1[22].fa_param  |FA_387            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|207   |        ha0                  |HA_415            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|208   |        ha1                  |HA_416            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|209   |      \genblk1[23].fa_param  |FA_388            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|210   |        ha0                  |HA_413            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|211   |        ha1                  |HA_414            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|212   |      \genblk1[2].fa_param   |FA_389            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|213   |        ha0                  |HA_411            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|214   |        ha1                  |HA_412            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|215   |      \genblk1[3].fa_param   |FA_390            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|216   |        ha0                  |HA_409            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|217   |        ha1                  |HA_410            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|218   |      \genblk1[4].fa_param   |FA_391            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|219   |        ha0                  |HA_407            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|220   |        ha1                  |HA_408            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|221   |      \genblk1[5].fa_param   |FA_392            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|222   |        ha0                  |HA_405            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|223   |        ha1                  |HA_406            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|224   |      \genblk1[6].fa_param   |FA_393            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|225   |        ha0                  |HA_403            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|226   |        ha1                  |HA_404            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|227   |      \genblk1[7].fa_param   |FA_394            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|228   |        ha0                  |HA_401            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|229   |        ha1                  |HA_402            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|230   |      \genblk1[8].fa_param   |FA_395            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|231   |        ha0                  |HA_399            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|232   |        ha1                  |HA_400            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|233   |      \genblk1[9].fa_param   |FA_396            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|234   |        ha0                  |HA_397            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|235   |        ha1                  |HA_398            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|236   |    rca3                     |parametric_RCA_10 |   154|
2default:defaulth p
x
� 
m
%s
*synth2U
A|237   |      \genblk1[0].fa_param   |FA_301            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|238   |        ha0                  |HA_371            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|239   |        ha1                  |HA_372            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|240   |      \genblk1[10].fa_param  |FA_302            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|241   |        ha0                  |HA_369            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|242   |        ha1                  |HA_370            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|243   |      \genblk1[11].fa_param  |FA_303            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|244   |        ha0                  |HA_367            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|245   |        ha1                  |HA_368            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|246   |      \genblk1[12].fa_param  |FA_304            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|247   |        ha0                  |HA_365            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|248   |        ha1                  |HA_366            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|249   |      \genblk1[13].fa_param  |FA_305            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|250   |        ha0                  |HA_363            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|251   |        ha1                  |HA_364            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|252   |      \genblk1[14].fa_param  |FA_306            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|253   |        ha0                  |HA_361            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|254   |        ha1                  |HA_362            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|255   |      \genblk1[15].fa_param  |FA_307            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|256   |        ha0                  |HA_359            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|257   |        ha1                  |HA_360            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|258   |      \genblk1[16].fa_param  |FA_308            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|259   |        ha0                  |HA_357            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|260   |        ha1                  |HA_358            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|261   |      \genblk1[17].fa_param  |FA_309            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|262   |        ha0                  |HA_355            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|263   |        ha1                  |HA_356            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|264   |      \genblk1[18].fa_param  |FA_310            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|265   |        ha0                  |HA_353            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|266   |        ha1                  |HA_354            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|267   |      \genblk1[19].fa_param  |FA_311            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|268   |        ha0                  |HA_351            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|269   |        ha1                  |HA_352            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|270   |      \genblk1[1].fa_param   |FA_312            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|271   |        ha0                  |HA_349            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|272   |        ha1                  |HA_350            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|273   |      \genblk1[20].fa_param  |FA_313            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|274   |        ha0                  |HA_347            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|275   |        ha1                  |HA_348            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|276   |      \genblk1[21].fa_param  |FA_314            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|277   |        ha0                  |HA_345            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|278   |        ha1                  |HA_346            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|279   |      \genblk1[22].fa_param  |FA_315            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|280   |        ha0                  |HA_343            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|281   |        ha1                  |HA_344            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|282   |      \genblk1[23].fa_param  |FA_316            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|283   |        ha0                  |HA_341            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|284   |        ha1                  |HA_342            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|285   |      \genblk1[2].fa_param   |FA_317            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|286   |        ha0                  |HA_339            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|287   |        ha1                  |HA_340            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|288   |      \genblk1[3].fa_param   |FA_318            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|289   |        ha0                  |HA_337            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|290   |        ha1                  |HA_338            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|291   |      \genblk1[4].fa_param   |FA_319            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|292   |        ha0                  |HA_335            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|293   |        ha1                  |HA_336            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|294   |      \genblk1[5].fa_param   |FA_320            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|295   |        ha0                  |HA_333            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|296   |        ha1                  |HA_334            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|297   |      \genblk1[6].fa_param   |FA_321            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|298   |        ha0                  |HA_331            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|299   |        ha1                  |HA_332            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|300   |      \genblk1[7].fa_param   |FA_322            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|301   |        ha0                  |HA_329            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|302   |        ha1                  |HA_330            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|303   |      \genblk1[8].fa_param   |FA_323            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|304   |        ha0                  |HA_327            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|305   |        ha1                  |HA_328            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|306   |      \genblk1[9].fa_param   |FA_324            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|307   |        ha0                  |HA_325            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|308   |        ha1                  |HA_326            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|309   |    rca4                     |parametric_RCA_11 |   138|
2default:defaulth p
x
� 
m
%s
*synth2U
A|310   |      \genblk1[0].fa_param   |FA_229            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|311   |        ha0                  |HA_299            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|312   |        ha1                  |HA_300            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|313   |      \genblk1[10].fa_param  |FA_230            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|314   |        ha0                  |HA_297            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|315   |        ha1                  |HA_298            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|316   |      \genblk1[11].fa_param  |FA_231            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|317   |        ha0                  |HA_295            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|318   |        ha1                  |HA_296            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|319   |      \genblk1[12].fa_param  |FA_232            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|320   |        ha0                  |HA_293            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|321   |        ha1                  |HA_294            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|322   |      \genblk1[13].fa_param  |FA_233            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|323   |        ha0                  |HA_291            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|324   |        ha1                  |HA_292            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|325   |      \genblk1[14].fa_param  |FA_234            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|326   |        ha0                  |HA_289            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|327   |        ha1                  |HA_290            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|328   |      \genblk1[15].fa_param  |FA_235            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|329   |        ha0                  |HA_287            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|330   |        ha1                  |HA_288            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|331   |      \genblk1[16].fa_param  |FA_236            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|332   |        ha0                  |HA_285            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|333   |        ha1                  |HA_286            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|334   |      \genblk1[17].fa_param  |FA_237            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|335   |        ha0                  |HA_283            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|336   |        ha1                  |HA_284            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|337   |      \genblk1[18].fa_param  |FA_238            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|338   |        ha0                  |HA_281            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|339   |        ha1                  |HA_282            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|340   |      \genblk1[19].fa_param  |FA_239            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|341   |        ha0                  |HA_279            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|342   |        ha1                  |HA_280            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|343   |      \genblk1[1].fa_param   |FA_240            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|344   |        ha0                  |HA_277            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|345   |        ha1                  |HA_278            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|346   |      \genblk1[20].fa_param  |FA_241            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|347   |        ha0                  |HA_275            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|348   |        ha1                  |HA_276            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|349   |      \genblk1[21].fa_param  |FA_242            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|350   |        ha0                  |HA_273            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|351   |        ha1                  |HA_274            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|352   |      \genblk1[22].fa_param  |FA_243            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|353   |        ha0                  |HA_271            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|354   |        ha1                  |HA_272            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|355   |      \genblk1[23].fa_param  |FA_244            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|356   |        ha0                  |HA_269            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|357   |        ha1                  |HA_270            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|358   |      \genblk1[2].fa_param   |FA_245            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|359   |        ha0                  |HA_267            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|360   |        ha1                  |HA_268            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|361   |      \genblk1[3].fa_param   |FA_246            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|362   |        ha0                  |HA_265            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|363   |        ha1                  |HA_266            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|364   |      \genblk1[4].fa_param   |FA_247            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|365   |        ha0                  |HA_263            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|366   |        ha1                  |HA_264            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|367   |      \genblk1[5].fa_param   |FA_248            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|368   |        ha0                  |HA_261            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|369   |        ha1                  |HA_262            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|370   |      \genblk1[6].fa_param   |FA_249            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|371   |        ha0                  |HA_259            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|372   |        ha1                  |HA_260            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|373   |      \genblk1[7].fa_param   |FA_250            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|374   |        ha0                  |HA_257            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|375   |        ha1                  |HA_258            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|376   |      \genblk1[8].fa_param   |FA_251            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|377   |        ha0                  |HA_255            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|378   |        ha1                  |HA_256            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|379   |      \genblk1[9].fa_param   |FA_252            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|380   |        ha0                  |HA_253            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|381   |        ha1                  |HA_254            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|382   |    rca5                     |parametric_RCA_12 |   122|
2default:defaulth p
x
� 
m
%s
*synth2U
A|383   |      \genblk1[0].fa_param   |FA_157            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|384   |        ha0                  |HA_227            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|385   |        ha1                  |HA_228            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|386   |      \genblk1[10].fa_param  |FA_158            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|387   |        ha0                  |HA_225            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|388   |        ha1                  |HA_226            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|389   |      \genblk1[11].fa_param  |FA_159            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|390   |        ha0                  |HA_223            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|391   |        ha1                  |HA_224            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|392   |      \genblk1[12].fa_param  |FA_160            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|393   |        ha0                  |HA_221            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|394   |        ha1                  |HA_222            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|395   |      \genblk1[13].fa_param  |FA_161            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|396   |        ha0                  |HA_219            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|397   |        ha1                  |HA_220            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|398   |      \genblk1[14].fa_param  |FA_162            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|399   |        ha0                  |HA_217            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|400   |        ha1                  |HA_218            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|401   |      \genblk1[15].fa_param  |FA_163            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|402   |        ha0                  |HA_215            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|403   |        ha1                  |HA_216            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|404   |      \genblk1[16].fa_param  |FA_164            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|405   |        ha0                  |HA_213            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|406   |        ha1                  |HA_214            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|407   |      \genblk1[17].fa_param  |FA_165            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|408   |        ha0                  |HA_211            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|409   |        ha1                  |HA_212            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|410   |      \genblk1[18].fa_param  |FA_166            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|411   |        ha0                  |HA_209            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|412   |        ha1                  |HA_210            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|413   |      \genblk1[19].fa_param  |FA_167            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|414   |        ha0                  |HA_207            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|415   |        ha1                  |HA_208            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|416   |      \genblk1[1].fa_param   |FA_168            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|417   |        ha0                  |HA_205            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|418   |        ha1                  |HA_206            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|419   |      \genblk1[20].fa_param  |FA_169            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|420   |        ha0                  |HA_203            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|421   |        ha1                  |HA_204            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|422   |      \genblk1[21].fa_param  |FA_170            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|423   |        ha0                  |HA_201            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|424   |        ha1                  |HA_202            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|425   |      \genblk1[22].fa_param  |FA_171            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|426   |        ha0                  |HA_199            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|427   |        ha1                  |HA_200            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|428   |      \genblk1[23].fa_param  |FA_172            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|429   |        ha0                  |HA_197            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|430   |        ha1                  |HA_198            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|431   |      \genblk1[2].fa_param   |FA_173            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|432   |        ha0                  |HA_195            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|433   |        ha1                  |HA_196            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|434   |      \genblk1[3].fa_param   |FA_174            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|435   |        ha0                  |HA_193            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|436   |        ha1                  |HA_194            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|437   |      \genblk1[4].fa_param   |FA_175            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|438   |        ha0                  |HA_191            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|439   |        ha1                  |HA_192            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|440   |      \genblk1[5].fa_param   |FA_176            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|441   |        ha0                  |HA_189            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|442   |        ha1                  |HA_190            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|443   |      \genblk1[6].fa_param   |FA_177            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|444   |        ha0                  |HA_187            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|445   |        ha1                  |HA_188            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|446   |      \genblk1[7].fa_param   |FA_178            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|447   |        ha0                  |HA_185            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|448   |        ha1                  |HA_186            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|449   |      \genblk1[8].fa_param   |FA_179            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|450   |        ha0                  |HA_183            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|451   |        ha1                  |HA_184            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|452   |      \genblk1[9].fa_param   |FA_180            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|453   |        ha0                  |HA_181            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|454   |        ha1                  |HA_182            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|455   |    rca6                     |parametric_RCA_13 |   122|
2default:defaulth p
x
� 
m
%s
*synth2U
A|456   |      \genblk1[0].fa_param   |FA_85             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|457   |        ha0                  |HA_155            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|458   |        ha1                  |HA_156            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|459   |      \genblk1[10].fa_param  |FA_86             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|460   |        ha0                  |HA_153            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|461   |        ha1                  |HA_154            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|462   |      \genblk1[11].fa_param  |FA_87             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|463   |        ha0                  |HA_151            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|464   |        ha1                  |HA_152            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|465   |      \genblk1[12].fa_param  |FA_88             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|466   |        ha0                  |HA_149            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|467   |        ha1                  |HA_150            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|468   |      \genblk1[13].fa_param  |FA_89             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|469   |        ha0                  |HA_147            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|470   |        ha1                  |HA_148            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|471   |      \genblk1[14].fa_param  |FA_90             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|472   |        ha0                  |HA_145            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|473   |        ha1                  |HA_146            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|474   |      \genblk1[15].fa_param  |FA_91             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|475   |        ha0                  |HA_143            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|476   |        ha1                  |HA_144            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|477   |      \genblk1[16].fa_param  |FA_92             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|478   |        ha0                  |HA_141            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|479   |        ha1                  |HA_142            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|480   |      \genblk1[17].fa_param  |FA_93             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|481   |        ha0                  |HA_139            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|482   |        ha1                  |HA_140            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|483   |      \genblk1[18].fa_param  |FA_94             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|484   |        ha0                  |HA_137            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|485   |        ha1                  |HA_138            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|486   |      \genblk1[19].fa_param  |FA_95             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|487   |        ha0                  |HA_135            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|488   |        ha1                  |HA_136            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|489   |      \genblk1[1].fa_param   |FA_96             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|490   |        ha0                  |HA_133            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|491   |        ha1                  |HA_134            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|492   |      \genblk1[20].fa_param  |FA_97             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|493   |        ha0                  |HA_131            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|494   |        ha1                  |HA_132            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|495   |      \genblk1[21].fa_param  |FA_98             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|496   |        ha0                  |HA_129            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|497   |        ha1                  |HA_130            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|498   |      \genblk1[22].fa_param  |FA_99             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|499   |        ha0                  |HA_127            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|500   |        ha1                  |HA_128            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|501   |      \genblk1[23].fa_param  |FA_100            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|502   |        ha0                  |HA_125            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|503   |        ha1                  |HA_126            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|504   |      \genblk1[2].fa_param   |FA_101            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|505   |        ha0                  |HA_123            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|506   |        ha1                  |HA_124            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|507   |      \genblk1[3].fa_param   |FA_102            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|508   |        ha0                  |HA_121            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|509   |        ha1                  |HA_122            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|510   |      \genblk1[4].fa_param   |FA_103            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|511   |        ha0                  |HA_119            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|512   |        ha1                  |HA_120            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|513   |      \genblk1[5].fa_param   |FA_104            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|514   |        ha0                  |HA_117            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|515   |        ha1                  |HA_118            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|516   |      \genblk1[6].fa_param   |FA_105            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|517   |        ha0                  |HA_115            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|518   |        ha1                  |HA_116            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|519   |      \genblk1[7].fa_param   |FA_106            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|520   |        ha0                  |HA_113            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|521   |        ha1                  |HA_114            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|522   |      \genblk1[8].fa_param   |FA_107            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|523   |        ha0                  |HA_111            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|524   |        ha1                  |HA_112            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|525   |      \genblk1[9].fa_param   |FA_108            |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|526   |        ha0                  |HA_109            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|527   |        ha1                  |HA_110            |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|528   |    rca7                     |parametric_RCA_14 |   122|
2default:defaulth p
x
� 
m
%s
*synth2U
A|529   |      \genblk1[0].fa_param   |FA                |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|530   |        ha0                  |HA_83             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|531   |        ha1                  |HA_84             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|532   |      \genblk1[10].fa_param  |FA_15             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|533   |        ha0                  |HA_81             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|534   |        ha1                  |HA_82             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|535   |      \genblk1[11].fa_param  |FA_16             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|536   |        ha0                  |HA_79             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|537   |        ha1                  |HA_80             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|538   |      \genblk1[12].fa_param  |FA_17             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|539   |        ha0                  |HA_77             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|540   |        ha1                  |HA_78             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|541   |      \genblk1[13].fa_param  |FA_18             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|542   |        ha0                  |HA_75             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|543   |        ha1                  |HA_76             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|544   |      \genblk1[14].fa_param  |FA_19             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|545   |        ha0                  |HA_73             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|546   |        ha1                  |HA_74             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|547   |      \genblk1[15].fa_param  |FA_20             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|548   |        ha0                  |HA_71             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|549   |        ha1                  |HA_72             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|550   |      \genblk1[16].fa_param  |FA_21             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|551   |        ha0                  |HA_69             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|552   |        ha1                  |HA_70             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|553   |      \genblk1[17].fa_param  |FA_22             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|554   |        ha0                  |HA_67             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|555   |        ha1                  |HA_68             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|556   |      \genblk1[18].fa_param  |FA_23             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|557   |        ha0                  |HA_65             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|558   |        ha1                  |HA_66             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|559   |      \genblk1[19].fa_param  |FA_24             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|560   |        ha0                  |HA_63             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|561   |        ha1                  |HA_64             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|562   |      \genblk1[1].fa_param   |FA_25             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|563   |        ha0                  |HA_61             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|564   |        ha1                  |HA_62             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|565   |      \genblk1[20].fa_param  |FA_26             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|566   |        ha0                  |HA_59             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|567   |        ha1                  |HA_60             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|568   |      \genblk1[21].fa_param  |FA_27             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|569   |        ha0                  |HA_57             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|570   |        ha1                  |HA_58             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|571   |      \genblk1[22].fa_param  |FA_28             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|572   |        ha0                  |HA_55             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|573   |        ha1                  |HA_56             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|574   |      \genblk1[23].fa_param  |FA_29             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|575   |        ha0                  |HA_53             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|576   |        ha1                  |HA_54             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|577   |      \genblk1[2].fa_param   |FA_30             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|578   |        ha0                  |HA_51             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|579   |        ha1                  |HA_52             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|580   |      \genblk1[3].fa_param   |FA_31             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|581   |        ha0                  |HA_49             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|582   |        ha1                  |HA_50             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|583   |      \genblk1[4].fa_param   |FA_32             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|584   |        ha0                  |HA_47             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|585   |        ha1                  |HA_48             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|586   |      \genblk1[5].fa_param   |FA_33             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|587   |        ha0                  |HA_45             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|588   |        ha1                  |HA_46             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|589   |      \genblk1[6].fa_param   |FA_34             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|590   |        ha0                  |HA_43             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|591   |        ha1                  |HA_44             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|592   |      \genblk1[7].fa_param   |FA_35             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|593   |        ha0                  |HA_41             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|594   |        ha1                  |HA_42             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|595   |      \genblk1[8].fa_param   |FA_36             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|596   |        ha0                  |HA_39             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|597   |        ha1                  |HA_40             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|598   |      \genblk1[9].fa_param   |FA_37             |     5|
2default:defaulth p
x
� 
m
%s
*synth2U
A|599   |        ha0                  |HA                |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A|600   |        ha1                  |HA_38             |     2|
2default:defaulth p
x
� 
m
%s
*synth2U
A+------+-----------------------------+------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 3186.316 ; gain = 273.504 ; free physical = 10510 ; free virtual = 21262
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 26 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 3186.316 ; gain = 273.504 ; free physical = 10518 ; free virtual = 21270
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 3186.324 ; gain = 273.504 ; free physical = 10518 ; free virtual = 21270
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.032default:default2
3186.3242default:default2
0.0002default:default2
106082default:default2
213602default:defaultZ17-722h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
5592default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3242.3442default:default2
0.0002default:default2
105402default:default2
212922default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 397 instances were transformed.
  BUFG => BUFGCE: 1 instance 
  IBUF => IBUF (IBUFCTRL, INBUF): 12 instances
  RAM64M8 => RAM64M8 (RAMD64E(x8)): 192 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 192 instances
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
3f7d31a42default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
402default:default2
262default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:262default:default2
00:00:242default:default2
3242.3442default:default2
329.5312default:default2
107472default:default2
214992default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2n
Z/home/sg24duk/vivadoworkspace/2DConvolution/2DConvolution.runs/synth_1/convolution_top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
tExecuting : report_utilization -file convolution_top_utilization_synth.rpt -pb convolution_top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Jan  7 21:01:40 20252default:defaultZ17-206h px� 


End Record
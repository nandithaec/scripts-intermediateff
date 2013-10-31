######################################################
#                                                    #
#  Cadence Design Systems                            #
#  FirstEncounter Floor Plan Information             #
#                                                    #
######################################################
# Created by First Encounter v08.10-p004_1 on Tue Oct 22 00:06:45 2013

Version: 8

Head Box: 0.0000 0.0000 255.1000 250.0000
IO Box: 0.0000 0.0000 255.1000 250.0000
Core Box: 40.0000 40.0000 215.1000 210.0000
UseStdUtil: false

######################################################
#  DesignRoutingHalo: <space> <bottomLayerName> <topLayerName>
######################################################

######################################################
#  Core Rows Parameters:                             #
######################################################
Row Spacing = 0.000000
Row SpacingType = 2
Row Flip = 2
Core Row Site: core 

##############################################################################
#  DefRow: <name> <site> <x> <y> <orient> <num_x> <num_y> <step_x> <step_y>  #
##############################################################################
DefRow: ROW_0 core 40.0000 40.0000 FS 218 1 0.8000 0.0000
DefRow: ROW_1 core 40.0000 50.0000 N 218 1 0.8000 0.0000
DefRow: ROW_2 core 40.0000 60.0000 FS 218 1 0.8000 0.0000
DefRow: ROW_3 core 40.0000 70.0000 N 218 1 0.8000 0.0000
DefRow: ROW_4 core 40.0000 80.0000 FS 218 1 0.8000 0.0000
DefRow: ROW_5 core 40.0000 90.0000 N 218 1 0.8000 0.0000
DefRow: ROW_6 core 40.0000 100.0000 FS 218 1 0.8000 0.0000
DefRow: ROW_7 core 40.0000 110.0000 N 218 1 0.8000 0.0000
DefRow: ROW_8 core 40.0000 120.0000 FS 218 1 0.8000 0.0000
DefRow: ROW_9 core 40.0000 130.0000 N 218 1 0.8000 0.0000
DefRow: ROW_10 core 40.0000 140.0000 FS 218 1 0.8000 0.0000
DefRow: ROW_11 core 40.0000 150.0000 N 218 1 0.8000 0.0000
DefRow: ROW_12 core 40.0000 160.0000 FS 218 1 0.8000 0.0000
DefRow: ROW_13 core 40.0000 170.0000 N 218 1 0.8000 0.0000
DefRow: ROW_14 core 40.0000 180.0000 FS 218 1 0.8000 0.0000
DefRow: ROW_15 core 40.0000 190.0000 N 218 1 0.8000 0.0000
DefRow: ROW_16 core 40.0000 200.0000 FS 218 1 0.8000 0.0000

######################################################
#  Track: dir start number space layer_num layer1 ...#
######################################################
Track: Y 0.5000 250 1.0000 1 6
Track: X 1.6000 212 1.2000 1 6
Track: X 0.4000 319 0.8000 1 5
Track: Y 0.5000 250 1.0000 1 5
Track: Y 0.5000 250 1.0000 1 4
Track: X 0.4000 319 0.8000 1 4
Track: X 0.4000 319 0.8000 1 3
Track: Y 0.5000 250 1.0000 1 3
Track: Y 0.5000 250 1.0000 1 2
Track: X 0.4000 319 0.8000 1 2
Track: X 0.4000 319 0.8000 1 1
Track: Y 0.5000 250 1.0000 1 1

######################################################
#  GCellGrid: dir start number space                 #
######################################################
GCellGrid: Y 250.0500 1 6.1500
GCellGrid: Y 19.6500 24 9.7500
GCellGrid: Y -0.0500 2 9.9500
GCellGrid: X 255.1500 1 11.3500
GCellGrid: X 19.5500 24 9.7500
GCellGrid: X -0.0500 2 9.8500

######################################################
#  SpareCell: cellName                               #
#  SpareInst: instName                               #
######################################################

######################################################
#  ScanGroup: groupName startPin stopPin             #
######################################################

######################################################
#  JtagCell:  leafCellName                           #
#  JtagInst:  <instName | HInstName>                 #
######################################################

######################################################################################
#  BlackBox: -cell <cell_name> { -size <x> <y> |  -area <um^2> | \                  #
#            -gatecount <count> <areapergate> <utilization> | \                     #
#            {-gateArea <gateAreaValue> [-macroArea <macroAreaValue>]} } \          #
#            [-minwidth <w> | -minheight <h> | -fixedwidh <w> | -fixedheight <h>] \ #
#            [-aspectratio <ratio>]                                                  #
#            [-boxList <nrConstraintBox>                                             #
#              ConstraintBox: <llx> <lly> <urx> <ury>                                #
#              ... ]                                                                 #
######################################################################################

#########################################################
#  PhysicalNet: <name> [-pwr|-gnd|-tiehi|-tielo]        #
#########################################################
PhysicalNet: vdd -pwr
PhysicalNet: gnd -gnd

#########################################################
#  PhysicalInstance: <name> <cell> <orient> <llx> <lly> #
#########################################################

#####################################################################
#  Group: <group_name> <nrHinst> [-isPhyHier]                       #
#    <inst_name>                                                    #
#    ...                                                            #
#####################################################################

#####################################################################
#  Fence:  <name> <llx> <lly> <urx> <ury> <nrConstraintBox>         #
#    ConstraintBox: <llx> <lly> <urx> <ury>                         #
#    ...                                                            #
#  Region: <name> <llx> <lly> <urx> <ury> <nrConstraintBox>         #
#    ConstraintBox: <llx> <lly> <urx> <ury>                         #
#    ...                                                            #
#  Guide:  <name> <llx> <lly> <urx> <ury> <nrConstraintBox>         #
#    ConstraintBox: <llx> <lly> <urx> <ury>                         #
#    ...                                                            #
#  SoftGuide: <name>                                                #
#    ...                                                            #
#####################################################################

###########################################################################
#  <HierarchicalPartitions>                                               #
#     <NetGroup name="group_name" nets=val spacing=val isOptOrder=val isAltLayer=val > #
#         <Net name="net_name" /> ...                                     #
#     </NetGroup>                                                         #
#     <Partition name="ptn_name"  hinst="name"                            #
#         coreToLeft=fval coreToRight=fval coreToTop=fval coreToBottom=fval   #
#         pinSpacingNorth=val pinSpacingWest=val pinSpacingSouth=val      #
#         pinSpacingEast=val  blockedLayers=xval >       #
#         <TrackHalfPitch Horizontal=val Vertical=val />                  #
#         <SpacingHalo left=10.0 right=11.0 top=11.0 bottom=11.0 />       #
#         <Clone hinst="hinst_name" orient=R0|R90|... />                  #
#         <PinLayer side="N|W|S|E" Metal1=yes Metal2=yes ... />           #
#         <RowSize cellHeight=1.0 railWidth=1.0 />                        #
#         <RoutingHalo sideSize=11.0 bottomLayer=M1 topLayer=M2  />       #
#         <SpacingHalo left=11.0 right=11.0 top=11.0 bottom=11.0 />       #
#     </Partition>                                                        #
#     <CellPinGroup name="group_name" cell="cell_name"                    #
#                       pins=nr spacing=val isOptOrder=1 isAltLayer=1 >   #
#         <GroupFTerm name="term_name" /> ...                             #
#     </CellPinGroup>                                                     #
#     <PartitionPinBlockage layerMap=x llx=1 lly=2 urx=3 ury=4 name="n" />#
#     <PinGuide name="name" boxes=num cell="name" >                       #
#        <Box llx=11.0 lly=22.0 urx=33.0 ury=44.0 layer=id /> ...         #
#     </PinGuide>                                                         #
#     <CellPtnCut name="name" cuts=Num >                                  #
#        <Box llx=11.0 lly=22.0 urx=33.0 ury=44.0 /> ...                  #
#     </CellPtnCut>                                                       #
#  </HierarchicalPartitions>                                              #
###########################################################################
<HierarchicalPartitions>
</HierarchicalPartitions>

######################################################
#  Instance: <name> <orient> <llx> <lly>             #
######################################################
Instance: clk__L2_I2 R0 64.8000 110.0000
Instance: clk__L2_I1 R0 117.6000 110.0000
Instance: clk__L2_I0 R0 187.2000 110.0000
Instance: clk__L1_I0 MX 123.2000 40.0000
Instance: iDFF_1/q_reg MX 75.2000 60.0000
Instance: iDFF_2/q_reg R0 74.4000 110.0000
Instance: iDFF_3/q_reg R0 49.6000 110.0000
Instance: iDFF_4/q_reg R180 65.6000 60.0000
Instance: iDFF_5/q_reg R180 92.8000 60.0000
Instance: iDFF_6/q_reg MY 93.6000 90.0000
Instance: iDFF_7/q_reg MX 40.0000 100.0000
Instance: iDFF_8/q_reg MX 40.0000 80.0000
Instance: iDFF_9/q_reg MX 88.8000 180.0000
Instance: iDFF_10/q_reg MY 112.0000 150.0000
Instance: iDFF_11/q_reg MX 51.2000 140.0000
Instance: iDFF_12/q_reg MX 40.0000 160.0000
Instance: iDFF_13/q_reg R0 90.4000 150.0000
Instance: iDFF_14/q_reg MX 72.0000 160.0000
Instance: iDFF_15/q_reg R0 51.2000 130.0000
Instance: iDFF_16/q_reg R0 49.6000 170.0000
Instance: iDFF_17/q_reg R180 204.0000 100.0000
Instance: iDFF_18/q_reg MY 192.0000 70.0000
Instance: iDFF_19/q_reg MX 163.2000 60.0000
Instance: iDFF_20/q_reg MX 123.2000 60.0000
Instance: iDFF_21/q_reg MY 179.2000 90.0000
Instance: iDFF_22/q_reg MX 178.4000 60.0000
Instance: iDFF_23/q_reg R0 148.0000 50.0000
Instance: iDFF_24/q_reg MX 148.0000 60.0000
Instance: iDFF_25/q_reg MY 192.0000 110.0000
Instance: iDFF_26/q_reg R180 192.0000 160.0000
Instance: iDFF_27/q_reg R0 159.2000 170.0000
Instance: iDFF_28/q_reg R180 159.2000 180.0000
Instance: iDFF_29/q_reg R180 192.0000 100.0000
Instance: iDFF_30/q_reg MY 200.8000 150.0000
Instance: iDFF_31/q_reg R0 148.0000 170.0000
Instance: iDFF_32/q_reg MX 137.6000 180.0000
Instance: iDFF_33/q_reg MX 113.6000 60.0000
Instance: iDFF_34/q_reg R180 114.4000 100.0000
Instance: iDFF_35/q_reg R0 93.6000 50.0000
Instance: iDFF_36/q_reg R0 104.0000 50.0000
Instance: iDFF_37/q_reg R0 126.4000 70.0000
Instance: iDFF_38/q_reg R0 121.6000 110.0000
Instance: iDFF_39/q_reg MY 148.8000 90.0000
Instance: iDFF_40/q_reg R0 104.8000 90.0000
Instance: iDFF_41/q_reg R0 116.8000 50.0000
Instance: DFF_1/q_reg R0 69.6000 50.0000
Instance: DFF_2/q_reg R180 49.6000 80.0000
Instance: DFF_3/q_reg R180 41.6000 120.0000
Instance: DFF_4/q_reg R0 42.4000 50.0000
Instance: DFF_5/q_reg R0 83.2000 50.0000
Instance: DFF_6/q_reg R180 90.4000 100.0000
Instance: DFF_7/q_reg R180 49.6000 100.0000
Instance: DFF_8/q_reg R0 48.8000 70.0000
Instance: DFF_9/q_reg MX 108.0000 180.0000
Instance: DFF_10/q_reg R0 116.8000 170.0000
Instance: DFF_11/q_reg MY 41.6000 150.0000
Instance: DFF_12/q_reg R180 51.2000 180.0000
Instance: DFF_13/q_reg R180 98.4000 180.0000
Instance: DFF_14/q_reg R180 79.2000 180.0000
Instance: DFF_15/q_reg R180 49.6000 160.0000
Instance: DFF_16/q_reg R180 69.6000 180.0000
Instance: DFF_17/q_reg R0 192.0000 90.0000
Instance: DFF_18/q_reg MX 203.2000 80.0000
Instance: DFF_19/q_reg R0 180.8000 50.0000
Instance: DFF_20/q_reg MX 132.8000 60.0000
Instance: DFF_21/q_reg R0 177.6000 110.0000
Instance: DFF_22/q_reg MX 193.6000 60.0000
Instance: DFF_23/q_reg R0 159.2000 50.0000
Instance: DFF_24/q_reg R0 128.8000 50.0000
Instance: DFF_25/q_reg MX 201.6000 140.0000
Instance: DFF_26/q_reg R0 180.0000 170.0000
Instance: DFF_27/q_reg MX 170.4000 180.0000
Instance: DFF_28/q_reg MX 127.2000 180.0000
Instance: DFF_29/q_reg MX 192.0000 120.0000
Instance: DFF_30/q_reg R0 192.0000 130.0000
Instance: DFF_31/q_reg MX 148.0000 180.0000
Instance: DFF_32/q_reg R180 134.4000 160.0000
Instance: oDFF_1/q_reg R180 72.0000 40.0000
Instance: oDFF_2/q_reg MY 41.6000 90.0000
Instance: oDFF_3/q_reg MY 40.8000 130.0000
Instance: oDFF_4/q_reg R180 61.6000 40.0000
Instance: oDFF_5/q_reg R180 92.0000 40.0000
Instance: oDFF_6/q_reg R180 78.4000 100.0000
Instance: oDFF_7/q_reg MY 40.0000 110.0000
Instance: oDFF_8/q_reg R180 48.8000 60.0000
Instance: oDFF_9/q_reg MY 114.4000 190.0000
Instance: oDFF_10/q_reg R180 117.6000 180.0000
Instance: oDFF_11/q_reg R180 40.8000 140.0000
Instance: oDFF_12/q_reg R180 40.8000 180.0000
Instance: oDFF_13/q_reg MY 89.6000 190.0000
Instance: oDFF_14/q_reg MY 72.0000 190.0000
Instance: oDFF_15/q_reg MY 40.0000 170.0000
Instance: oDFF_16/q_reg MY 61.6000 190.0000
Instance: oDFF_17/q_reg R0 204.0000 90.0000
Instance: oDFF_18/q_reg R0 204.0000 70.0000
Instance: oDFF_19/q_reg R180 179.2000 40.0000
Instance: oDFF_20/q_reg R180 132.8000 40.0000
Instance: oDFF_21/q_reg R0 204.0000 110.0000
Instance: oDFF_22/q_reg MY 192.0000 50.0000
Instance: oDFF_23/q_reg R180 159.2000 40.0000
Instance: oDFF_24/q_reg R180 148.0000 40.0000
Instance: oDFF_25/q_reg MX 204.0000 160.0000
Instance: oDFF_26/q_reg R180 180.8000 180.0000
Instance: oDFF_27/q_reg MY 175.2000 190.0000
Instance: oDFF_28/q_reg MY 129.6000 190.0000
Instance: oDFF_29/q_reg MX 204.0000 120.0000
Instance: oDFF_30/q_reg R0 204.0000 130.0000
Instance: oDFF_31/q_reg MY 148.8000 190.0000
Instance: oDFF_32/q_reg R180 124.8000 160.0000

#################################################################
#  Block: <name> <orient> [<llx> <lly>]                         #
#         [<haloLeftMargin>  <haloBottomMargin>                 #
#          <haloRightMargin> <haloTopMargin> <haloFromInstBox>] #
#         [<IsInstDefCovered> <IsInstPreplaced>]                #
#                                                               #
#  Block with INT_MAX loc is for recording the halo block with  #
#  non-prePlaced status                                         #
#################################################################

######################################################
#  BlockLayerObstruct: <name> <layerX> ...           #
######################################################

######################################################
#  FeedthroughBuffer: <instName>                     #
######################################################

#################################################################
#  <PlacementBlockages>                                         #
#     <Blockage name="blk_name" type="hard|soft|partial">       #
#       <Attr density=1.2 inst="inst_name" pushdown=yes />      #
#       <Box llx=1 lly=2 urx=3 ury=4 /> ...                     #
#     </Blockage>                                               #
#  </PlacementBlockages>                                        #
#################################################################

###########################################################################
#  <RouteBlockages>                                                       #
#     <Blockage name="blk_name" type="User|RouteGuide|PtnCut|WideWire">   #
#       <Attr spacing=1.2 drw=1.2 inst="name" pushdown=yes fills=yes />   #
#       <Layer type="route|cut|masterslice" id=layerNo />                 #
#       <Box llx=1 lly=2 urx=3 ury=4 /> ...                               #
#       <Poly points=nr x0=1 y0=1 x1=2 y2=2 ...  />                       #
#     </Blockage>                                                         #
#  </RouteBlockages>                                                      #
###########################################################################

######################################################
#  PrerouteAsObstruct: <layer_treated_as_obstruct>   #
######################################################
PrerouteAsObstruct: 0x3

######################################################
#  NetWeight: <net_name> <weight (in integer)>       #
######################################################

#################################################################
#  SprFile: <file_name>                                         #
#################################################################
SprFile: c499_clk_opFF.fp.spr

#########################################################################################
#  IOPin: <pinName> <x> <y> <side> <layerId> <width> <depth> {placed|fixed|cover|-} <nrBox> \ #
#         [-special] [-clock] [[-spacing <value>] | [-drw <value>]]                     #
#    PinBox: <llx> <lly> <urx> <ury> [-lyr <layerId>] \                                 #
#            [[-spacing <value>] | [-drw <value>]]                                      #
#    PinPoly: <nrPt> <x1> <y1> <x2> <y2> ...<xn> <yn> [-lyr <layerId>] \                #
#             [[-spacing <value>] | [-drw <value>]]                                     #
#    PinAntenna: <pinName> <ANTENNAPIN*> <value> LAYER <layer>                          #
#########################################################################################
IOPin: clk 123.6000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 123.4500 0.0000 123.7500 0.3000 -lyr 2
IOPin: N1 78.8000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 78.6500 0.0000 78.9500 0.3000 -lyr 2
IOPin: N5 0.0000 114.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 114.3500 0.3000 114.6500 -lyr 3
IOPin: N9 0.0000 114.5000 W 5 0.3000 0.3000 placed 1
  PinBox: 0.0000 114.3500 0.3000 114.6500 -lyr 5
IOPin: N13 71.6000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 71.4500 0.0000 71.7500 0.3000 -lyr 2
IOPin: N17 98.8000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 98.6500 0.0000 98.9500 0.3000 -lyr 2
IOPin: N21 100.4000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 100.2500 0.0000 100.5500 0.3000 -lyr 2
IOPin: N25 0.0000 105.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 105.3500 0.3000 105.6500 -lyr 3
IOPin: N29 0.0000 85.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 85.3500 0.3000 85.6500 -lyr 3
IOPin: N33 92.4000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 92.2500 249.7000 92.5500 250.0000 -lyr 2
IOPin: N37 118.0000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 117.8500 249.7000 118.1500 250.0000 -lyr 2
IOPin: N41 0.0000 145.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 145.3500 0.3000 145.6500 -lyr 3
IOPin: N45 0.0000 165.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 165.3500 0.3000 165.6500 -lyr 3
IOPin: N49 0.0000 154.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 154.3500 0.3000 154.6500 -lyr 3
IOPin: N53 0.0000 165.5000 W 5 0.3000 0.3000 placed 1
  PinBox: 0.0000 165.3500 0.3000 165.6500 -lyr 5
IOPin: N57 0.0000 134.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 134.3500 0.3000 134.6500 -lyr 3
IOPin: N61 0.0000 174.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 174.3500 0.3000 174.6500 -lyr 3
IOPin: N65 255.1000 105.5000 E 3 0.3000 0.3000 placed 1
  PinBox: 254.8000 105.3500 255.1000 105.6500 -lyr 3
IOPin: N69 255.1000 74.5000 E 3 0.3000 0.3000 placed 1
  PinBox: 254.8000 74.3500 255.1000 74.6500 -lyr 3
IOPin: N73 166.8000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 166.6500 0.0000 166.9500 0.3000 -lyr 2
IOPin: N77 126.8000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 126.6500 0.0000 126.9500 0.3000 -lyr 2
IOPin: N81 255.1000 94.5000 E 3 0.3000 0.3000 placed 1
  PinBox: 254.8000 94.3500 255.1000 94.6500 -lyr 3
IOPin: N85 182.0000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 181.8500 0.0000 182.1500 0.3000 -lyr 2
IOPin: N89 151.6000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 151.4500 0.0000 151.7500 0.3000 -lyr 2
IOPin: N93 151.6000 0.0000 S 4 0.3000 0.3000 placed 1
  PinBox: 151.4500 0.0000 151.7500 0.3000 -lyr 4
IOPin: N97 255.1000 114.5000 E 3 0.3000 0.3000 placed 1
  PinBox: 254.8000 114.3500 255.1000 114.6500 -lyr 3
IOPin: N101 255.1000 165.5000 E 3 0.3000 0.3000 placed 1
  PinBox: 254.8000 165.3500 255.1000 165.6500 -lyr 3
IOPin: N105 162.8000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 162.6500 249.7000 162.9500 250.0000 -lyr 2
IOPin: N109 165.2000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 165.0500 249.7000 165.3500 250.0000 -lyr 2
IOPin: N113 255.1000 105.5000 E 5 0.3000 0.3000 placed 1
  PinBox: 254.8000 105.3500 255.1000 105.6500 -lyr 5
IOPin: N117 255.1000 154.5000 E 3 0.3000 0.3000 placed 1
  PinBox: 254.8000 154.3500 255.1000 154.6500 -lyr 3
IOPin: N121 151.6000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 151.4500 249.7000 151.7500 250.0000 -lyr 2
IOPin: N125 141.2000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 141.0500 249.7000 141.3500 250.0000 -lyr 2
IOPin: N129 117.2000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 117.0500 0.0000 117.3500 0.3000 -lyr 2
IOPin: N130 120.4000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 120.2500 0.0000 120.5500 0.3000 -lyr 2
IOPin: N131 97.2000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 97.0500 0.0000 97.3500 0.3000 -lyr 2
IOPin: N132 107.6000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 107.4500 0.0000 107.7500 0.3000 -lyr 2
IOPin: N133 130.0000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 129.8500 0.0000 130.1500 0.3000 -lyr 2
IOPin: N134 123.6000 0.0000 S 4 0.3000 0.3000 placed 1
  PinBox: 123.4500 0.0000 123.7500 0.3000 -lyr 4
IOPin: N135 154.8000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 154.6500 0.0000 154.9500 0.3000 -lyr 2
IOPin: N136 109.2000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 109.0500 0.0000 109.3500 0.3000 -lyr 2
IOPin: N137 120.4000 0.0000 S 4 0.3000 0.3000 placed 1
  PinBox: 120.2500 0.0000 120.5500 0.3000 -lyr 4
IOPin: Qout_N724 73.2000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 73.0500 0.0000 73.3500 0.3000 -lyr 2
IOPin: Qout_N725 0.0000 91.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 91.3500 0.3000 91.6500 -lyr 3
IOPin: Qout_N726 0.0000 131.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 131.3500 0.3000 131.6500 -lyr 3
IOPin: Qout_N727 62.0000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 61.8500 0.0000 62.1500 0.3000 -lyr 2
IOPin: Qout_N728 92.4000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 92.2500 0.0000 92.5500 0.3000 -lyr 2
IOPin: Qout_N729 0.0000 108.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 108.3500 0.3000 108.6500 -lyr 3
IOPin: Qout_N730 0.0000 111.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 111.3500 0.3000 111.6500 -lyr 3
IOPin: Qout_N731 0.0000 68.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 68.3500 0.3000 68.6500 -lyr 3
IOPin: Qout_N732 114.8000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 114.6500 249.7000 114.9500 250.0000 -lyr 2
IOPin: Qout_N733 118.0000 250.0000 N 4 0.3000 0.3000 placed 1
  PinBox: 117.8500 249.7000 118.1500 250.0000 -lyr 4
IOPin: Qout_N734 0.0000 148.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 148.3500 0.3000 148.6500 -lyr 3
IOPin: Qout_N735 0.0000 188.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 188.3500 0.3000 188.6500 -lyr 3
IOPin: Qout_N736 90.0000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 89.8500 249.7000 90.1500 250.0000 -lyr 2
IOPin: Qout_N737 72.4000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 72.2500 249.7000 72.5500 250.0000 -lyr 2
IOPin: Qout_N738 0.0000 171.5000 W 3 0.3000 0.3000 placed 1
  PinBox: 0.0000 171.3500 0.3000 171.6500 -lyr 3
IOPin: Qout_N739 62.0000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 61.8500 249.7000 62.1500 250.0000 -lyr 2
IOPin: Qout_N740 255.1000 91.5000 E 3 0.3000 0.3000 placed 1
  PinBox: 254.8000 91.3500 255.1000 91.6500 -lyr 3
IOPin: Qout_N741 255.1000 71.5000 E 3 0.3000 0.3000 placed 1
  PinBox: 254.8000 71.3500 255.1000 71.6500 -lyr 3
IOPin: Qout_N742 179.6000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 179.4500 0.0000 179.7500 0.3000 -lyr 2
IOPin: Qout_N743 133.2000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 133.0500 0.0000 133.3500 0.3000 -lyr 2
IOPin: Qout_N744 255.1000 111.5000 E 3 0.3000 0.3000 placed 1
  PinBox: 254.8000 111.3500 255.1000 111.6500 -lyr 3
IOPin: Qout_N745 192.4000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 192.2500 0.0000 192.5500 0.3000 -lyr 2
IOPin: Qout_N746 159.6000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 159.4500 0.0000 159.7500 0.3000 -lyr 2
IOPin: Qout_N747 148.4000 0.0000 S 2 0.3000 0.3000 placed 1
  PinBox: 148.2500 0.0000 148.5500 0.3000 -lyr 2
IOPin: Qout_N748 255.1000 168.5000 E 3 0.3000 0.3000 placed 1
  PinBox: 254.8000 168.3500 255.1000 168.6500 -lyr 3
IOPin: Qout_N749 181.2000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 181.0500 249.7000 181.3500 250.0000 -lyr 2
IOPin: Qout_N750 175.6000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 175.4500 249.7000 175.7500 250.0000 -lyr 2
IOPin: Qout_N751 130.0000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 129.8500 249.7000 130.1500 250.0000 -lyr 2
IOPin: Qout_N752 255.1000 128.5000 E 3 0.3000 0.3000 placed 1
  PinBox: 254.8000 128.3500 255.1000 128.6500 -lyr 3
IOPin: Qout_N753 255.1000 131.5000 E 3 0.3000 0.3000 placed 1
  PinBox: 254.8000 131.3500 255.1000 131.6500 -lyr 3
IOPin: Qout_N754 149.2000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 149.0500 249.7000 149.3500 250.0000 -lyr 2
IOPin: Qout_N755 125.2000 250.0000 N 2 0.3000 0.3000 placed 1
  PinBox: 125.0500 249.7000 125.3500 250.0000 -lyr 2

##########################################################################
#  <IOPins>                                                              #
#    <Pin name="pin_name" type="clock|power|ground|analog"               #
#         status="covered|fixed|placed" is_special=1 >                   #
#      <Port>                                                            #
#        <Pref x=1 y=2 side="N|S|W|E|U|D" width=w depth=d />             #
#        <Via name="via_name" x=1 y=2 /> ...                             #
#        <Layer id=id spacing=1.2 drw=1.2>                               #
#          <Box llx=1 lly=2 urx=3 ury=4 /> ...                           #
#          <Poly points=nr x0=1 y0=1 x1=2 y2=2 ...           />          #
#        </Layer> ...                                                    #
#      </Port>  ...                                                      #
#    </Pin> ...                                                          #
#  </IOPins>                                                             #
##########################################################################
<IOPins>
  <Pin name="clk" status="placed" >
    <Port>
      <Pref x=123.6000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=123.4500 lly=0.0000 urx=123.7500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N1" status="placed" >
    <Port>
      <Pref x=78.8000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=78.6500 lly=0.0000 urx=78.9500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N5" status="placed" >
    <Port>
      <Pref x=0.0000 y=114.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=114.3500 urx=0.3000 ury=114.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N9" status="placed" >
    <Port>
      <Pref x=0.0000 y=114.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=114.3500 urx=0.3000 ury=114.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N13" status="placed" >
    <Port>
      <Pref x=71.6000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=71.4500 lly=0.0000 urx=71.7500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N17" status="placed" >
    <Port>
      <Pref x=98.8000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=98.6500 lly=0.0000 urx=98.9500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N21" status="placed" >
    <Port>
      <Pref x=100.4000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=100.2500 lly=0.0000 urx=100.5500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N25" status="placed" >
    <Port>
      <Pref x=0.0000 y=105.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=105.3500 urx=0.3000 ury=105.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N29" status="placed" >
    <Port>
      <Pref x=0.0000 y=85.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=85.3500 urx=0.3000 ury=85.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N33" status="placed" >
    <Port>
      <Pref x=92.4000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=92.2500 lly=249.7000 urx=92.5500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N37" status="placed" >
    <Port>
      <Pref x=118.0000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=117.8500 lly=249.7000 urx=118.1500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N41" status="placed" >
    <Port>
      <Pref x=0.0000 y=145.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=145.3500 urx=0.3000 ury=145.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N45" status="placed" >
    <Port>
      <Pref x=0.0000 y=165.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=165.3500 urx=0.3000 ury=165.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N49" status="placed" >
    <Port>
      <Pref x=0.0000 y=154.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=154.3500 urx=0.3000 ury=154.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N53" status="placed" >
    <Port>
      <Pref x=0.0000 y=165.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=0.0000 lly=165.3500 urx=0.3000 ury=165.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N57" status="placed" >
    <Port>
      <Pref x=0.0000 y=134.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=134.3500 urx=0.3000 ury=134.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N61" status="placed" >
    <Port>
      <Pref x=0.0000 y=174.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=174.3500 urx=0.3000 ury=174.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N65" status="placed" >
    <Port>
      <Pref x=255.1000 y=105.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=254.8000 lly=105.3500 urx=255.1000 ury=105.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N69" status="placed" >
    <Port>
      <Pref x=255.1000 y=74.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=254.8000 lly=74.3500 urx=255.1000 ury=74.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N73" status="placed" >
    <Port>
      <Pref x=166.8000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=166.6500 lly=0.0000 urx=166.9500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N77" status="placed" >
    <Port>
      <Pref x=126.8000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=126.6500 lly=0.0000 urx=126.9500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N81" status="placed" >
    <Port>
      <Pref x=255.1000 y=94.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=254.8000 lly=94.3500 urx=255.1000 ury=94.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N85" status="placed" >
    <Port>
      <Pref x=182.0000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=181.8500 lly=0.0000 urx=182.1500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N89" status="placed" >
    <Port>
      <Pref x=151.6000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=151.4500 lly=0.0000 urx=151.7500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N93" status="placed" >
    <Port>
      <Pref x=151.6000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=4 >
        <Box llx=151.4500 lly=0.0000 urx=151.7500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N97" status="placed" >
    <Port>
      <Pref x=255.1000 y=114.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=254.8000 lly=114.3500 urx=255.1000 ury=114.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N101" status="placed" >
    <Port>
      <Pref x=255.1000 y=165.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=254.8000 lly=165.3500 urx=255.1000 ury=165.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N105" status="placed" >
    <Port>
      <Pref x=162.8000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=162.6500 lly=249.7000 urx=162.9500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N109" status="placed" >
    <Port>
      <Pref x=165.2000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=165.0500 lly=249.7000 urx=165.3500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N113" status="placed" >
    <Port>
      <Pref x=255.1000 y=105.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=5 >
        <Box llx=254.8000 lly=105.3500 urx=255.1000 ury=105.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N117" status="placed" >
    <Port>
      <Pref x=255.1000 y=154.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=254.8000 lly=154.3500 urx=255.1000 ury=154.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N121" status="placed" >
    <Port>
      <Pref x=151.6000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=151.4500 lly=249.7000 urx=151.7500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N125" status="placed" >
    <Port>
      <Pref x=141.2000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=141.0500 lly=249.7000 urx=141.3500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N129" status="placed" >
    <Port>
      <Pref x=117.2000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=117.0500 lly=0.0000 urx=117.3500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N130" status="placed" >
    <Port>
      <Pref x=120.4000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=120.2500 lly=0.0000 urx=120.5500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N131" status="placed" >
    <Port>
      <Pref x=97.2000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=97.0500 lly=0.0000 urx=97.3500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N132" status="placed" >
    <Port>
      <Pref x=107.6000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=107.4500 lly=0.0000 urx=107.7500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N133" status="placed" >
    <Port>
      <Pref x=130.0000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=129.8500 lly=0.0000 urx=130.1500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N134" status="placed" >
    <Port>
      <Pref x=123.6000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=4 >
        <Box llx=123.4500 lly=0.0000 urx=123.7500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N135" status="placed" >
    <Port>
      <Pref x=154.8000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=154.6500 lly=0.0000 urx=154.9500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N136" status="placed" >
    <Port>
      <Pref x=109.2000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=109.0500 lly=0.0000 urx=109.3500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="N137" status="placed" >
    <Port>
      <Pref x=120.4000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=4 >
        <Box llx=120.2500 lly=0.0000 urx=120.5500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N724" status="placed" >
    <Port>
      <Pref x=73.2000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=73.0500 lly=0.0000 urx=73.3500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N725" status="placed" >
    <Port>
      <Pref x=0.0000 y=91.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=91.3500 urx=0.3000 ury=91.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N726" status="placed" >
    <Port>
      <Pref x=0.0000 y=131.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=131.3500 urx=0.3000 ury=131.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N727" status="placed" >
    <Port>
      <Pref x=62.0000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=61.8500 lly=0.0000 urx=62.1500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N728" status="placed" >
    <Port>
      <Pref x=92.4000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=92.2500 lly=0.0000 urx=92.5500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N729" status="placed" >
    <Port>
      <Pref x=0.0000 y=108.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=108.3500 urx=0.3000 ury=108.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N730" status="placed" >
    <Port>
      <Pref x=0.0000 y=111.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=111.3500 urx=0.3000 ury=111.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N731" status="placed" >
    <Port>
      <Pref x=0.0000 y=68.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=68.3500 urx=0.3000 ury=68.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N732" status="placed" >
    <Port>
      <Pref x=114.8000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=114.6500 lly=249.7000 urx=114.9500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N733" status="placed" >
    <Port>
      <Pref x=118.0000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=4 >
        <Box llx=117.8500 lly=249.7000 urx=118.1500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N734" status="placed" >
    <Port>
      <Pref x=0.0000 y=148.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=148.3500 urx=0.3000 ury=148.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N735" status="placed" >
    <Port>
      <Pref x=0.0000 y=188.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=188.3500 urx=0.3000 ury=188.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N736" status="placed" >
    <Port>
      <Pref x=90.0000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=89.8500 lly=249.7000 urx=90.1500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N737" status="placed" >
    <Port>
      <Pref x=72.4000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=72.2500 lly=249.7000 urx=72.5500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N738" status="placed" >
    <Port>
      <Pref x=0.0000 y=171.5000 side=W width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=171.3500 urx=0.3000 ury=171.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N739" status="placed" >
    <Port>
      <Pref x=62.0000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=61.8500 lly=249.7000 urx=62.1500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N740" status="placed" >
    <Port>
      <Pref x=255.1000 y=91.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=254.8000 lly=91.3500 urx=255.1000 ury=91.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N741" status="placed" >
    <Port>
      <Pref x=255.1000 y=71.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=254.8000 lly=71.3500 urx=255.1000 ury=71.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N742" status="placed" >
    <Port>
      <Pref x=179.6000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=179.4500 lly=0.0000 urx=179.7500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N743" status="placed" >
    <Port>
      <Pref x=133.2000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=133.0500 lly=0.0000 urx=133.3500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N744" status="placed" >
    <Port>
      <Pref x=255.1000 y=111.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=254.8000 lly=111.3500 urx=255.1000 ury=111.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N745" status="placed" >
    <Port>
      <Pref x=192.4000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=192.2500 lly=0.0000 urx=192.5500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N746" status="placed" >
    <Port>
      <Pref x=159.6000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=159.4500 lly=0.0000 urx=159.7500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N747" status="placed" >
    <Port>
      <Pref x=148.4000 y=0.0000 side=S width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=148.2500 lly=0.0000 urx=148.5500 ury=0.3000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N748" status="placed" >
    <Port>
      <Pref x=255.1000 y=168.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=254.8000 lly=168.3500 urx=255.1000 ury=168.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N749" status="placed" >
    <Port>
      <Pref x=181.2000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=181.0500 lly=249.7000 urx=181.3500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N750" status="placed" >
    <Port>
      <Pref x=175.6000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=175.4500 lly=249.7000 urx=175.7500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N751" status="placed" >
    <Port>
      <Pref x=130.0000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=129.8500 lly=249.7000 urx=130.1500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N752" status="placed" >
    <Port>
      <Pref x=255.1000 y=128.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=254.8000 lly=128.3500 urx=255.1000 ury=128.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N753" status="placed" >
    <Port>
      <Pref x=255.1000 y=131.5000 side=E width=0.3000 depth=0.3000 />
      <Layer id=3 >
        <Box llx=254.8000 lly=131.3500 urx=255.1000 ury=131.6500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N754" status="placed" >
    <Port>
      <Pref x=149.2000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=149.0500 lly=249.7000 urx=149.3500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="Qout_N755" status="placed" >
    <Port>
      <Pref x=125.2000 y=250.0000 side=N width=0.3000 depth=0.3000 />
      <Layer id=2 >
        <Box llx=125.0500 lly=249.7000 urx=125.3500 ury=250.0000 />
      </Layer>
    </Port>
  </Pin>
</IOPins>

#####################################################################
#  <Property>                                                       #
#     <obj_type name="inst_name" >                                  #
#       <prop name="name" type=type_name value=val />               #
#       <Attr name="name" type=type_name value=val />               #
#     </obj_type>                                                   #
#  </Property>                                                      #
#  where:                                                           #
#       type is data type: Box, String, Int, PTR, Loc, double, Bits #
#       obj_type are: inst, Design, instTerm, Bump, cell, net       #
#####################################################################
<Properties>
  <Design name="c499_clk_opFF">
  </Design>
</Properties>

###########################################################$############################################################################################
#  GlobalNetConnection: <net_name> {-pin|-inst|-net} <base_name_pattern> -type {pgpin|net|tiehi|tielo} {-all|-module <name>|-region <box>} [-override] #
########################################################################################################################################################
GlobalNetConnection: vdd -pin vdd -type pgpin -all
GlobalNetConnection: gnd -pin gnd -type pgpin -all
GlobalNetConnection: vdd -type tiehi -all
GlobalNetConnection: vdd -pin vdd -type pgpin -all -override
GlobalNetConnection: gnd -type tielo -all
GlobalNetConnection: gnd -pin gnd -type pgpin -all -override
GlobalNetConnection: vdd -type tiehi -all
GlobalNetConnection: vdd -pin vdd -type pgpin -all -override
GlobalNetConnection: gnd -type tielo -all
GlobalNetConnection: gnd -pin gnd -type pgpin -all -override

################################################################################
#  NetProperties: <net_name> [-special] [-def_prop {int|dbl|str} <value>]...   #
################################################################################

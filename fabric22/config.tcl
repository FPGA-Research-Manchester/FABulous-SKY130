# User config
set ::env(DESIGN_NAME) fabric22

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# Fill this
#set ::env(CLOCK_PERIOD) "50"
set ::env(CLOCK_PERIOD) "40"
set ::env(CLOCK_PORT) "UserCLK"
set ::env(CLOCK_TREE_SYNTH) 0
set ::env(CELL_PAD) 4

set ::env(PL_ESTIMATE_PARASITICS) 0 ; #default 1 (true/enable)
set ::env(PL_OPENPHYSYN_OPTIMIZATIONS) 0 ; #default 1 (true/enable)
set ::env(GLB_RT_ESTIMATE_PARASITICS) 0 ; #default 1 (true/enable)
set ::env(ROUTING_CORES) 12 ; #default 4 
set ::env(GLB_RT_TILES) 15 ; # openroads fastroute default value 15
set ::env(GLB_RT_OVERFLOW_ITERS) 50 ; # default value is 50
#set ::env(GLOBAL_ROUTER) cugr ; # default fastroute
set ::env(FP_CORE_UTIL) 50
set ::env(PL_TARGET_DENSITY) 0.55

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

#####
#set ::env(SYNTH_NO_FLAT) "1"
# set in configuration/synthesis.tcl
#set ::env(DESIGN_IS_CORE) 0 
#set ::env(FP_PDN_CORE_RING) 0
#set ::env(GLB_RT_MAXLAYER) 5
set ::env(SYNTH_LATCH_MAP) $::env(OPENLANE_ROOT)/designs/fabric22/latch_map.v
#change sdc file 
set ::env(BASE_SDC_FILE) $::env(OPENLANE_ROOT)/designs/fabric22/fabric22.sdc


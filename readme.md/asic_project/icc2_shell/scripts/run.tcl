# Set search paths
set search_path "../source ./lib"

# Set design name
set DESIGN_NAME CIC_ADPCM_Wrapper

# Set libraries
set target_library "../lib/saed14rvt_tt0p8v25c.db"
set link_library "* ../ref/lib/db_nldm/saed14rvt_tt0p8v25c.db"

# Read RTL (relative to search_path)
if { [get_designs $DESIGN_NAME] ==  "" }  {
read_verilog CIC_ADPCM_synthWrapper.v
}

# Set top module
set top_design $DESIGN_NAME
current_design $top_design

# Link design
link

# Optional: read constraints
# read_sdc ./constraints/design.sdc

# Check design
check_design -checks timing



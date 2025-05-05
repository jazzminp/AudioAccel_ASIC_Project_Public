# Set library and design name
set DESIGN_NAME_syn CIC_ADPCM_Wrapper

# Create working directory
file mkdir ../work
set_app_var search_path "../source ../lib"
set_app_var target_library "../lib/saed14rvt_tt0p8v25c.db"
set_app_var link_library "* ../lib/saed14rvt_tt0p8v25c.db"

# Read Verilog
read_verilog ../source/CIC_ADPCM_Wrapper.v


# Set Top Module
current_design $DESIGN_NAME_syn

# Elaborate
link

# Constraints (add clock if needed)
create_clock -name clk -period 10 [get_ports clk]

read_sdc ../source/johnson.sdc
set_dont_use {saed14rvt_tt0p8v25c/SAEDRVT14_ADDH_0P5}			
compile -exact_map

# Synthesize
compile_ultra

# Save design
write -f ddc -hierarchy -output ../work/$DESIGN_NAME_syn.ddc
write_sdf ../work/$DESIGN_NAME_syn.sdf
write -f verilog -hierarchy -output ../work/$DESIGN_NAME_syn.v
report_area > ../work/area.rpt
report_timing > ../work/timing.rpt
report_power > ../work/power.rpt

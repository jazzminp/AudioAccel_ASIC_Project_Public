# ==========================================
# SDC File for ADPCM Encoder ASIC Project
# Author: [Your Name]
# Date: [Today’s Date]
# ==========================================

#------------------------------------------
# Define the primary clock (clk @ 100 MHz)
#------------------------------------------
create_clock -name clk -period 10.0 [get_ports clk]

# If you use slow_clk as a generated clock from clk:
create_generated_clock -name slow_clk -source [get_ports clk] -divide_by 8 [get_ports slow_clk]

#------------------------------------------
# Input delay (data arrives relative to clk)
# Adjust values based on your IO pad delays / setup time budget
#------------------------------------------
set_input_delay 2.0 -clock clk [get_ports pdm_in]
set_input_delay 2.0 -clock clk [get_ports block_enable]

#------------------------------------------
# Output delay (data launched relative to clk)
#------------------------------------------
set_output_delay 2.0 -clock clk [get_ports encPcm]
set_output_delay 2.0 -clock clk [get_ports outValid]

#------------------------------------------
# Set false paths if needed (e.g., testbench I/O not used in synthesis)
#------------------------------------------
# set_false_path -from [get_ports some_debug_signal]

#------------------------------------------
# Set drive strength and load constraints if needed
# For example:
# set_drive 1.0 [get_ports pdm_in]
# set_load 0.1 [get_ports encPcm]

#------------------------------------------
# Design Compiler-specific settings (if needed)
#------------------------------------------
# Uncomment the next line if this is a top-level design
# set_current_design ima_adpcm_enc

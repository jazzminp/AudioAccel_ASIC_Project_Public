# DFT Script for Synopsys DC/DFT Compiler
# Target top module: CIC_ADPCM_Wrapper

# Step 1: Read RTL
read_verilog ./ima_adpcm_enc.v
read_verilog ./CIC_ADPCM_Wrapper.v
current_design CIC_ADPCM_Wrapper

# Step 2: Elaborate
elaborate

# Step 3: Set constraints (basic clock, will refine later)
create_clock -name clk -period 10 [get_ports clk]

# Step 4: Set DFT signals
set_dft_signal -type ScanEnable -port SE -active_high
set_dft_signal -type ScanIn     -port SI
set_dft_signal -type ScanOut    -port SO

# Step 5: Create a scan chain
create_test_scan_chain -chain_count 1

# Step 6: Insert scan logic
insert_dft

# Optional: Check if scan was inserted correctly
report_scan_path

# Step 7: Write out DFT-enabled netlist
write -format verilog -hierarchy -output CIC_ADPCM_Wrapper_dft.v

# Optional: Write scan-inserted design database
write -format ddc -hierarchy -output CIC_ADPCM_Wrapper_dft.ddc

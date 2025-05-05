# Project_Template

## Team Name: 
AudioAccel

## Team Members:
-Maiva Ndjiakou
-Jazzmin Poitier

## Project Title:
AudioAccel

## Project Description:
The goal of this project is to design a custom ASIC that accelerates audio signal processing 
using a Cascaded Integrator-Comb (CIC) filter, targeting efficient sample rate conversion for
real-time audio applications. The main problem we are addressing is the inefficiency of
traditional signal processing pipelines, especially in devices like wireless audio systems,
hearing aids, and professional audio equipment, which require efficient downsampling and
upsampling. By implementing the CIC filter directly in hardware, we aim to reduce latency, 
improving both performance and energy efficiency for audio processing tasks.

## Key Objectives:
•	Objective 1: Implement a highly efficient CIC filter in Verilog/VHDL for real-time audio 
processing (decimation and interpolation).
•	Objective 2: Synthesize and optimize the ASIC design using industry-standard EDA tools (DC 
Shell, ICC2 Shell).
•	Objective 3: Verify functional correctness and attempt optimizing performance for area and
speed using formal verification and simulation tools.

## Technology Stack:
Hardware Platform: ASIC design targeting integration with audio front-end components (e.g.,
microphones, ADCs) for real-time processing.
•	Software Tools:
Synopsys Design Compiler (DC Shell): For RTL synthesis, logic synthesis, and optimization.
IC Compiler II (ICC2 Shell): For place-and-route and physical design.
Formal Verification (FM Shell): For functional verification and logic equivalence checking.
Verdi/DVE: For simulation and waveform analysis.
•	Programming Languages:
Verilog/VHDL: For RTL design of the CIC filter.
TCL scripts: For EDA automation (e.g., running synthesis, simulation).


## Expected Outcomes:
•	CIC-based ASIC Design capable of efficient sample rate conversion for real-time audio 
processing.
•	Optimized Performance: Significant improvements in speed and area usage compared to software
-based or FPGA implementations.
•	Functional Verification: Successful simulation and verification with DVE, ensuring the CIC 
filter performs as expected in various audio signal scenarios.
•	Documentation & Analysis: Comprehensive report covering design, optimizations, performance 
metrics, and comparisons with traditional software-based or FPGA solutions


## Tasks:

RTL Design Implementation
•	Task: Implement the CIC filter design in Verilog/VHDL, focusing on the structure and 
modularity to make it scalable for different audio sample rates. Jazzmin

3. RTL Synthesis
•	Task: Use DC Shell for RTL synthesis, focusing on optimizing the design for  area and timing.

5. Formal Verification
•	Task: Perform functional verification using FM Shell to ensure the design works as expected 
for different audio sample rate inputs. Jazzmin

7. Place-and-Route
•	Task: Use ICC2 Shell to perform physical design, focusing on power and timing closure. Maiva

9. Simulation & Testing
•	Task: Integrate the design and test it with audio signal simulations. Use Verdi/DVE for analyzing waveforms and ensuring the design meets performance targets. Jazzmin

11. Documentation & Reporting
•	Task: Document the entire design process, results, optimizations, and performance analysis. Prepare the final report and presentation. Jazzmin & Maiva


## Timeline:
Week 1 literature review, and basic CIC design in Verilog/VHDL - Completed Week 2 Synthesis with DC Shell and functional verification using FM Shell and Design optimization for speed and area Week 3 -Place-and-route using ICC2 Shell and power/timing analysis Week 4- Final simulation with FM Shell, documentation, and presentation prep


## FINAL PROJECT DOCUMENTATION:


The Cascaded Integrator-Comb (CIC) filter is a highly efficient digital filter used to process
and enhance resampled audio signals. It plays a critical role in enabling area-efficient and 
high-throughput sample rate conversion, especially in systems like Digital Down Converters (DDC)
and Digital Up Converters (DUC). 

This AudioAccel project successfully designed and optimized a custom ASIC that accelerates audio
signal processing using a Cascaded Integrator-Comb (CIC) filter. This work targeted a real-world
need: efficient sample rate conversion for real-time audio systems such as wireless headsets,
hearing aids, and embedded DSPs. The key accomplishments and contributions of this project are
summarized below:

1. Functional Hardware Implementation
•	A working CIC filter RTL design was sourced, reviewed, and adapted for hardware implementation
 using Verilog.

•	The filter enables efficient decimation of high-frequency PDM microphone input, reducing data
 rate and mitigating aliasing artifacts with minimal computational complexity.

2. Design Flow and Toolchain Proficiency
•	The design was initially synthesized in Vivado, which helped catch early-stage design issues
and ease debugging. This practical step enabled quicker design iterations before transitioning
to more advanced industry-standard tools.

![image](https://github.com/user-attachments/assets/03d9a0d8-5df4-411c-ae84-00b34a43f8e7)
Figure 1: Showing Initial Vivado Simulation – Run Behavioral Simualtion


•	RTL was fully synthesized using Synopsys Design Compiler (DC Shell) to generate a gate-level
netlist optimized for area and timing.

![image](https://github.com/user-attachments/assets/7c286695-c03a-4759-b332-f53471168d48)
Figure 2: Opening schematic view of CIC Filer

![image](https://github.com/user-attachments/assets/cf56eb25-127b-4388-acec-2af8024130fa)

Figure 3: Design view from DC

![image](https://github.com/user-attachments/assets/8a1f646d-df98-40ac-9d6d-86c1c4ca71e7)
Figure 4: Design view from DC after compile

•	Formal verification via FM Shell ensured functional equivalence between RTL and synthesized 
netlist across different input scenarios—critical for ASIC reliability.

![image](https://github.com/user-attachments/assets/21b4e3bf-7717-4258-820d-5deab9d51808)
Figure 5: Setup the Design Window
![image](https://github.com/user-attachments/assets/99276c1c-33b1-4571-957d-bc69ec2c9c21)
Figure 6: Match compare points
![image](https://github.com/user-attachments/assets/69764079-afc5-475a-b30d-862348634cc1)
Figure 7: Verify the design
![image](https://github.com/user-attachments/assets/c6aa26d9-ddeb-4c9a-bf4a-425f57984935)
Figure 8: SDC schematic 


3. Physical Implementation
•	The gate-level netlist was imported into ICC2 for place-and-route (physical design), where
key objectives like clock routing, congestion reduction, and timing closure were addressed.

![image](https://github.com/user-attachments/assets/4cbc354d-4d25-4757-b98b-ae6900d4149d)
Figure 9: Design view after importing

![image](https://github.com/user-attachments/assets/39467acd-e163-49aa-8779-be77e72fa205)
Figure 10: Initialize floorplan window

![image](https://github.com/user-attachments/assets/996a13db-74f6-4249-b446-a5ed0026d4e3)
Figure 11: Create Floor Plan 

![image](https://github.com/user-attachments/assets/d5643ce1-49f7-49f4-a5a5-80356560f613)
Figure 12: Power and Ground Planning

![image](https://github.com/user-attachments/assets/30144680-2dd4-467b-83f8-b2285e109f6e)
Figure 13: Clock Opt command

![image](https://github.com/user-attachments/assets/6cb6ec1e-9610-4f17-ba1a-af3fb264d8b6)
Figure 14: Route Auto

![image](https://github.com/user-attachments/assets/6a16693f-bcb2-4033-9d8b-b901cf39750c)
Figure 15: Route Eco 

•	Check commands and timing reports were consistently run to ensure DRC/LVS readiness and to 
confirm physical constraints were being met.

![image](https://github.com/user-attachments/assets/0d184edc-732d-4341-8319-1b660a49c2ec)
Figure 16: List of Check Commands used for ICC2 Shell due to Liscence Issues


Verification and Simulation

•	Post-synthesis simulations were conducted using FM Shell, where waveform analysis were not  
validated by  the CIC filter’s functionality in realistic audio processing conditions, but 
veried that your ICC2 netlist is functionally identical to the synthesized netlist (DC output).


![image](https://github.com/user-attachments/assets/d57f7bd9-4481-4d0f-b34d-6c255d371afd)
Figure 17: 0 Unmatched Compare Points

![image](https://github.com/user-attachments/assets/2313bf63-1ee8-4aa6-bd7d-cc07a8a01b73)
Figure 18:Reverification through FM Shell

![image](https://github.com/user-attachments/assets/7083334f-d378-4618-9580-5b340de2b6b1)
Figure 19: Schematic Post ICC – captured from FM Shell 


•	The final design passed multiple stages of functional and formal validation, making it suitable for real-time audio applications.

![image](https://github.com/user-attachments/assets/6c5e4645-6dfc-4f2f-86aa-5b9cd930498e)
Figure 20: Final Vivado Simulation  - Run Behavioral Simulation

## Conclusion
Through careful RTL design, synthesis, verification, and physical implementation, this project
not only validated a functional CIC-based audio accelerator but also demonstrated a complete 
ASIC design flow from high-level Verilog to placed-and-routed silicon-ready netlists. This 
showcases the team’s technical competency in using professional EDA tools and optimizing 
digital designs for real-world embedded applications.








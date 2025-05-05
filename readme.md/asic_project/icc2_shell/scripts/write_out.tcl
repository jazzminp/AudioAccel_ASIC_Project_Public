write_parasitics -output ../results/cic.spef -no_name_mapping -compress -hierarchical -rde_corr -format spef

write_verilog ../results/cic_compiled.v -include all

set design CIC_ADPCM_Wrapper
set gdsout_map ../ref/tech/saed14nm_1p9m_gdsout_mw_icc2.map
set gds_files ../ref/tech/saed14_rvt.gds


write_gds       -design $design                 -layer_map $gdsout_map          -output_pin all                 -hierarchy all          -keep_data_type                 -merge_files $gds_files         -merge_gds_top_cell $design             -units 2000             -lib_cell_view frame    -allow_design_mismatch  cic_compiled.gds


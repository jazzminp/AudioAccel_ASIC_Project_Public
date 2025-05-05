write_parasitics -output ../results/johnson.spef -no_name_mapping -compress -hierarchical -rde_corr -format spef

write_verilog ../results/johnson_compiled.v -include all

set design johnson
set gdsout_map ../ref/tech/saed14nm_1p9m_gdsout_mw_icc2.map
set gds_files ../ref/tech/saed14_rvt.gds


write_gds       -design $design                 -layer_map $gdsout_map          -output_pin all                 -hierarchy all          -keep_data_type                 -merge_files $gds_files         -merge_gds_top_cell $design             -units 2000             -lib_cell_view frame    -allow_design_mismatch  johnson_compiled.gds


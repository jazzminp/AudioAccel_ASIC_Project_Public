save_lib cic

set_app_options -name signoff.check_drc.runset -value "../ref/tech/icv_drc/saed14nm_1p9m_drc_rules.rs"
signoff_check_drc

check_lvs -nets [get_nets] -checks {short open} -check_child_cells true -report_floating_pins true -open_reporting detailed > cic.err

set_component mss_top_sb_MSS
# Microsemi Corp.
# Date: 2019-Jul-09 23:16:01
#

create_clock -period 40 [ get_pins { MSS_ADLIB_INST/CLK_CONFIG_APB } ]
set_false_path -ignore_errors -through [ get_pins { MSS_ADLIB_INST/CONFIG_PRESET_N } ]

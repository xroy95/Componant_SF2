set_component PLL_Sound_speed_PLL_Sound_speed_0_FCCC
# Microsemi Corp.
# Date: 2019-Jul-20 23:03:42
#

create_clock -period 10 [ get_pins { CCC_INST/CLK0 } ]
create_generated_clock -multiply_by 71 -divide_by 10000 -source [ get_pins { CCC_INST/CLK0 } ] -phase 0 [ get_pins { CCC_INST/GL0 } ]

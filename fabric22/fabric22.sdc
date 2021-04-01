create_clock [get_ports $::env(CLOCK_PORT)]  -name $::env(CLOCK_PORT)  -period $::env(CLOCK_PERIOD)
set input_delay_value [expr $::env(CLOCK_PERIOD) * $::env(IO_PCT)]
set output_delay_value [expr $::env(CLOCK_PERIOD) * $::env(IO_PCT)]
puts "\[INFO\]: Setting output delay to: $output_delay_value"
puts "\[INFO\]: Setting input delay to: $input_delay_value"


set clk_indx [lsearch [all_inputs] [get_port $::env(CLOCK_PORT)]]
#set rst_indx [lsearch [all_inputs] [get_port resetn]]
set all_inputs_wo_clk [lreplace [all_inputs] $clk_indx $clk_indx]
#set all_inputs_wo_clk_rst [lreplace $all_inputs_wo_clk $rst_indx $rst_indx]
set all_inputs_wo_clk_rst $all_inputs_wo_clk


# correct resetn
set_input_delay $input_delay_value  -clock [get_clocks $::env(CLOCK_PORT)] $all_inputs_wo_clk_rst
#set_input_delay 0.0 -clock [get_clocks $::env(CLOCK_PORT)] {resetn}
set_output_delay $output_delay_value  -clock [get_clocks $::env(CLOCK_PORT)] [all_outputs]

# TODO set this as parameter
set_driving_cell -lib_cell $::env(SYNTH_DRIVING_CELL) -pin $::env(SYNTH_DRIVING_CELL_PIN) [all_inputs]
set cap_load [expr $::env(SYNTH_CAP_LOAD) / 1000.0]
puts "\[INFO\]: Setting load to: $cap_load"
set_load  $cap_load [all_outputs]


#set_disable_timing for timing loops 
#Tile_X1Y0_N_term_single
set_disable_timing [get_pins Tile_X1Y0_N_term_single/Inst_N_term_single_switch_matrix/S1BEG*]
set_disable_timing [get_pins Tile_X1Y0_N_term_single/Inst_N_term_single_switch_matrix/S2BEG*]
set_disable_timing [get_pins Tile_X1Y0_N_term_single/Inst_N_term_single_switch_matrix/S2BEGb*]
set_disable_timing [get_pins Tile_X1Y0_N_term_single/Inst_N_term_single_switch_matrix/S4BEG*]

#Tile_X2Y0_N_term_single
set_disable_timing [get_pins Tile_X2Y0_N_term_single/Inst_N_term_single_switch_matrix/S1BEG*]
set_disable_timing [get_pins Tile_X2Y0_N_term_single/Inst_N_term_single_switch_matrix/S2BEG*]
set_disable_timing [get_pins Tile_X2Y0_N_term_single/Inst_N_term_single_switch_matrix/S2BEGb*]
set_disable_timing [get_pins Tile_X2Y0_N_term_single/Inst_N_term_single_switch_matrix/S4BEG*]

#Tile_X0Y1_W_IO
set_disable_timing [get_pins Tile_X0Y1_W_IO/Inst_W_IO_switch_matrix/E1BEG*]
set_disable_timing [get_pins Tile_X0Y1_W_IO/Inst_W_IO_switch_matrix/E2BEG*]
set_disable_timing [get_pins Tile_X0Y1_W_IO/Inst_W_IO_switch_matrix/E2BEGb*]
set_disable_timing [get_pins Tile_X0Y1_W_IO/Inst_W_IO_switch_matrix/E6BEG*]

#Tile_X0Y2_W_IO
set_disable_timing [get_pins Tile_X0Y2_W_IO/Inst_W_IO_switch_matrix/E1BEG*]
set_disable_timing [get_pins Tile_X0Y2_W_IO/Inst_W_IO_switch_matrix/E2BEG*]
set_disable_timing [get_pins Tile_X0Y2_W_IO/Inst_W_IO_switch_matrix/E2BEGb*]
set_disable_timing [get_pins Tile_X0Y2_W_IO/Inst_W_IO_switch_matrix/E6BEG*]

#set_disable_timing Tile_X1Y3_S_term_single
set_disable_timing [get_pins Tile_X1Y3_S_term_single/Inst_S_term_single_switch_matrix/N1BEG*]
set_disable_timing [get_pins Tile_X1Y3_S_term_single/Inst_S_term_single_switch_matrix/N2BEG*]
set_disable_timing [get_pins Tile_X1Y3_S_term_single/Inst_S_term_single_switch_matrix/N2BEGb*]
set_disable_timing [get_pins Tile_X1Y3_S_term_single/Inst_S_term_single_switch_matrix/N4BEG*]

#set_disable_timing Tile_X2Y3_S_term_single
set_disable_timing [get_pins Tile_X2Y3_S_term_single/Inst_S_term_single_switch_matrix/N1BEG*]
set_disable_timing [get_pins Tile_X2Y3_S_term_single/Inst_S_term_single_switch_matrix/N2BEG*]
set_disable_timing [get_pins Tile_X2Y3_S_term_single/Inst_S_term_single_switch_matrix/N2BEGb*]
set_disable_timing [get_pins Tile_X2Y3_S_term_single/Inst_S_term_single_switch_matrix/N4BEG*]

#Tile_X1Y1_LUT4AB
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_ABa_BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_CDa_BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_EFa_BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_GHa_BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_ABb_BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_CDb_BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_EFb_BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_GHb_BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_AB_BEG*] 
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_CD_BEG*] 
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_EF_BEG*] 
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_GH_BEG*] 
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/JN2BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/JE2BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/JS2BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/JW2BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_AB_BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_CD_BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_EF_BEG*]
set_disable_timing [get_pins Tile_X1Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_GH_BEG*]

#Tile_X1Y2_LUT4AB
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_ABa_BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_CDa_BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_EFa_BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_GHa_BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_ABb_BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_CDb_BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_EFb_BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_GHb_BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_AB_BEG*] 
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_CD_BEG*] 
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_EF_BEG*] 
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_GH_BEG*] 
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/JN2BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/JE2BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/JS2BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/JW2BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_AB_BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_CD_BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_EF_BEG*]
set_disable_timing [get_pins Tile_X1Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_GH_BEG*]

#Tile_X2Y1_LUT4AB
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_ABa_BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_CDa_BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_EFa_BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_GHa_BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_ABb_BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_CDb_BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_EFb_BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_GHb_BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_AB_BEG*] 
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_CD_BEG*] 
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_EF_BEG*] 
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_GH_BEG*] 
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/JN2BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/JE2BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/JS2BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/JW2BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_AB_BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_CD_BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_EF_BEG*]
set_disable_timing [get_pins Tile_X2Y1_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_GH_BEG*]

#Tile_X2Y2_LUT4AB
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_ABa_BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_CDa_BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_EFa_BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_GHa_BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_ABb_BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_CDb_BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_EFb_BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2MID_GHb_BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_AB_BEG*] 
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_CD_BEG*] 
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_EF_BEG*] 
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J2END_GH_BEG*] 
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/JN2BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/JE2BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/JS2BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/JW2BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_AB_BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_CD_BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_EF_BEG*]
set_disable_timing [get_pins Tile_X2Y2_LUT4AB/Inst_LUT4AB_switch_matrix/J_l_GH_BEG*]

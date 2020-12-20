create_clock -name clka -period 20 [get_ports clka]
set_input_delay -max 2 -clock [get_clocks clka] [remove_from_collection [all_inputs] [get_ports clka]]
set_output_delay -max 2 -clock [get_clocks clka] [all_outputs]
set_clock_uncertainty 0.35 [get_clocks]
set_false_path -hold -from [remove_from_collection [all_inputs] [get_ports clka]]
set_false_path -hold -to [all_outputs]


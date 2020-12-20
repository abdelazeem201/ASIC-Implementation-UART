###################################################################

# Created by write_sdc on Mon Nov 19 01:14:36 2018

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
create_clock [get_ports clka]  -period 20  -waveform {0 10}
set_clock_uncertainty 0.35  [get_clocks clka]
set_false_path -hold   -from [list [get_ports clkb] [get_ports reset] [get_ports {tx_data[7]}]       \
[get_ports {tx_data[6]}] [get_ports {tx_data[5]}] [get_ports {tx_data[4]}]     \
[get_ports {tx_data[3]}] [get_ports {tx_data[2]}] [get_ports {tx_data[1]}]     \
[get_ports {tx_data[0]}] [get_ports tx_rdy] [get_ports rx_rdy]]
set_false_path -hold   -to [list [get_ports tx_busy] [get_ports {tx_out[7]}] [get_ports {tx_out[6]}] \
[get_ports {tx_out[5]}] [get_ports {tx_out[4]}] [get_ports {tx_out[3]}]        \
[get_ports {tx_out[2]}] [get_ports {tx_out[1]}] [get_ports {tx_out[0]}]        \
[get_ports tx_done] [get_ports {tcount[3]}] [get_ports {tcount[2]}] [get_ports \
{tcount[1]}] [get_ports {tcount[0]}] [get_ports {tstate[3]}] [get_ports        \
{tstate[2]}] [get_ports {tstate[1]}] [get_ports {tstate[0]}] [get_ports        \
tx_error] [get_ports tx_idle] [get_ports rx_busy] [get_ports {rx_out[7]}]      \
[get_ports {rx_out[6]}] [get_ports {rx_out[5]}] [get_ports {rx_out[4]}]        \
[get_ports {rx_out[3]}] [get_ports {rx_out[2]}] [get_ports {rx_out[1]}]        \
[get_ports {rx_out[0]}] [get_ports rx_done] [get_ports {rcount[3]}] [get_ports \
{rcount[2]}] [get_ports {rcount[1]}] [get_ports {rcount[0]}] [get_ports        \
{rstate[3]}] [get_ports {rstate[2]}] [get_ports {rstate[1]}] [get_ports        \
{rstate[0]}] [get_ports rx_error] [get_ports rx_idle] [get_ports match]        \
[get_ports {rxrxout[7]}] [get_ports {rxrxout[6]}] [get_ports {rxrxout[5]}]     \
[get_ports {rxrxout[4]}] [get_ports {rxrxout[3]}] [get_ports {rxrxout[2]}]     \
[get_ports {rxrxout[1]}] [get_ports {rxrxout[0]}]]
set_input_delay -clock clka  -max 2  [get_ports clkb]
set_input_delay -clock clka  -max 2  [get_ports reset]
set_input_delay -clock clka  -max 2  [get_ports {tx_data[7]}]
set_input_delay -clock clka  -max 2  [get_ports {tx_data[6]}]
set_input_delay -clock clka  -max 2  [get_ports {tx_data[5]}]
set_input_delay -clock clka  -max 2  [get_ports {tx_data[4]}]
set_input_delay -clock clka  -max 2  [get_ports {tx_data[3]}]
set_input_delay -clock clka  -max 2  [get_ports {tx_data[2]}]
set_input_delay -clock clka  -max 2  [get_ports {tx_data[1]}]
set_input_delay -clock clka  -max 2  [get_ports {tx_data[0]}]
set_input_delay -clock clka  -max 2  [get_ports tx_rdy]
set_input_delay -clock clka  -max 2  [get_ports rx_rdy]
set_output_delay -clock clka  -max 2  [get_ports tx_busy]
set_output_delay -clock clka  -max 2  [get_ports {tx_out[7]}]
set_output_delay -clock clka  -max 2  [get_ports {tx_out[6]}]
set_output_delay -clock clka  -max 2  [get_ports {tx_out[5]}]
set_output_delay -clock clka  -max 2  [get_ports {tx_out[4]}]
set_output_delay -clock clka  -max 2  [get_ports {tx_out[3]}]
set_output_delay -clock clka  -max 2  [get_ports {tx_out[2]}]
set_output_delay -clock clka  -max 2  [get_ports {tx_out[1]}]
set_output_delay -clock clka  -max 2  [get_ports {tx_out[0]}]
set_output_delay -clock clka  -max 2  [get_ports tx_done]
set_output_delay -clock clka  -max 2  [get_ports {tcount[3]}]
set_output_delay -clock clka  -max 2  [get_ports {tcount[2]}]
set_output_delay -clock clka  -max 2  [get_ports {tcount[1]}]
set_output_delay -clock clka  -max 2  [get_ports {tcount[0]}]
set_output_delay -clock clka  -max 2  [get_ports {tstate[3]}]
set_output_delay -clock clka  -max 2  [get_ports {tstate[2]}]
set_output_delay -clock clka  -max 2  [get_ports {tstate[1]}]
set_output_delay -clock clka  -max 2  [get_ports {tstate[0]}]
set_output_delay -clock clka  -max 2  [get_ports tx_error]
set_output_delay -clock clka  -max 2  [get_ports tx_idle]
set_output_delay -clock clka  -max 2  [get_ports rx_busy]
set_output_delay -clock clka  -max 2  [get_ports {rx_out[7]}]
set_output_delay -clock clka  -max 2  [get_ports {rx_out[6]}]
set_output_delay -clock clka  -max 2  [get_ports {rx_out[5]}]
set_output_delay -clock clka  -max 2  [get_ports {rx_out[4]}]
set_output_delay -clock clka  -max 2  [get_ports {rx_out[3]}]
set_output_delay -clock clka  -max 2  [get_ports {rx_out[2]}]
set_output_delay -clock clka  -max 2  [get_ports {rx_out[1]}]
set_output_delay -clock clka  -max 2  [get_ports {rx_out[0]}]
set_output_delay -clock clka  -max 2  [get_ports rx_done]
set_output_delay -clock clka  -max 2  [get_ports {rcount[3]}]
set_output_delay -clock clka  -max 2  [get_ports {rcount[2]}]
set_output_delay -clock clka  -max 2  [get_ports {rcount[1]}]
set_output_delay -clock clka  -max 2  [get_ports {rcount[0]}]
set_output_delay -clock clka  -max 2  [get_ports {rstate[3]}]
set_output_delay -clock clka  -max 2  [get_ports {rstate[2]}]
set_output_delay -clock clka  -max 2  [get_ports {rstate[1]}]
set_output_delay -clock clka  -max 2  [get_ports {rstate[0]}]
set_output_delay -clock clka  -max 2  [get_ports rx_error]
set_output_delay -clock clka  -max 2  [get_ports rx_idle]
set_output_delay -clock clka  -max 2  [get_ports match]
set_output_delay -clock clka  -max 2  [get_ports {rxrxout[7]}]
set_output_delay -clock clka  -max 2  [get_ports {rxrxout[6]}]
set_output_delay -clock clka  -max 2  [get_ports {rxrxout[5]}]
set_output_delay -clock clka  -max 2  [get_ports {rxrxout[4]}]
set_output_delay -clock clka  -max 2  [get_ports {rxrxout[3]}]
set_output_delay -clock clka  -max 2  [get_ports {rxrxout[2]}]
set_output_delay -clock clka  -max 2  [get_ports {rxrxout[1]}]
set_output_delay -clock clka  -max 2  [get_ports {rxrxout[0]}]

# Q6
# Add input transistion

create_clock -name clk -period 10 [get_ports clk]
set_propagated_clock [get_clocks clk]

set_input_delay -clock clk 1 [get_ports {in1 in2}]
# Increase from 0.01 to 1
set_input_transition 1 [get_ports {in1 in2}]
# set_input_transition 0.01 [get_ports {in1 in2}]

set_output_delay -clock clk 0.2 [get_ports {out}]
set_load 0.05 [get_ports {out}]

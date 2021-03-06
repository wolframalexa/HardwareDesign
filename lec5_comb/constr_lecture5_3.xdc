# Assign inputs/outputs to actual pins on the FPGA 
set_property PACKAGE_PIN M15 [get_ports {A[0]}] 
set_property PACKAGE_PIN H17 [get_ports {A[1]}] 
set_property PACKAGE_PIN H18 [get_ports {B[0]}] 
set_property PACKAGE_PIN H19 [get_ports {B[1]}] 
set_property PACKAGE_PIN F21 [get_ports {S[0]}] 
set_property PACKAGE_PIN W22 [get_ports {Y[0]}] 
set_property PACKAGE_PIN V22 [get_ports {Y[1]}] 

# Define voltage levels (3.3 for LEDs and 1.8 for Switches) 
set_property IOSTANDARD LVCMOS18 [get_ports {A[1]}] 
set_property IOSTANDARD LVCMOS18 [get_ports {A[0]}] 
set_property IOSTANDARD LVCMOS18 [get_ports {B[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {B[0]}] 
set_property IOSTANDARD LVCMOS18 [get_ports {S[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {Y[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {Y[0]}] 
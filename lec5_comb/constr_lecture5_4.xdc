# Defines ports for each of the input and output pins 

set_property PACKAGE_PIN M15 [get_ports {A[0]}] 

set_property PACKAGE_PIN H17 [get_ports {A[1]}] 

set_property PACKAGE_PIN H18 [get_ports {B[0]}] 

set_property PACKAGE_PIN H19 [get_ports {B[1]}] 

set_property PACKAGE_PIN F21 [get_ports {C[0]}] 

set_property PACKAGE_PIN H22 [get_ports {C[1]}] 

set_property PACKAGE_PIN G22 [get_ports {S1[0]}] 

set_property PACKAGE_PIN F22 [get_ports {S2[0]}] 

set_property PACKAGE_PIN V22 [get_ports {Y2[0]}] 

set_property PACKAGE_PIN U21 [get_ports {Y2[1]}] 

  

# Define voltage levels (3.3 for LEDs and 1.8 for Switches) 

set_property IOSTANDARD LVCMOS18 [get_ports {A[0]}] 

set_property IOSTANDARD LVCMOS18 [get_ports {A[1]}] 

set_property IOSTANDARD LVCMOS18 [get_ports {B[0]}] 

set_property IOSTANDARD LVCMOS18 [get_ports {B[1]}] 

set_property IOSTANDARD LVCMOS18 [get_ports {C[1]}] 

set_property IOSTANDARD LVCMOS18 [get_ports {C[0]}] 

  

set_property IOSTANDARD LVCMOS18 [get_ports {S1[0]}] 

set_property IOSTANDARD LVCMOS18 [get_ports {S2[0]}] 

  

set_property IOSTANDARD LVCMOS33 [get_ports {Y2[1]}] 

set_property IOSTANDARD LVCMOS33 [get_ports {Y2[0]}] 
set_property PACKAGE_PIN M15 [get_ports D[0]]
set_property PACKAGE_PIN H17 [get_ports D[1]]
set_property PACKAGE_PIN H18 [get_ports D[2]]
set_property PACKAGE_PIN H19 [get_ports D[3]]
 
set_property PACKAGE_PIN F21 [get_ports Clk] 
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets Clk_IBUF] 
set_property PACKAGE_PIN H22 [get_ports reset]
set_property PACKAGE_PIN G22 [get_ports load]

set_property PACKAGE_PIN U14 [get_ports Q[0]]
set_property PACKAGE_PIN U19 [get_ports Q[1]]
set_property PACKAGE_PIN W22 [get_ports Q[2]]
set_property PACKAGE_PIN V22 [get_ports Q[3]]

set_property IOSTANDARD LVCMOS18 [get_ports D[0]]
set_property IOSTANDARD LVCMOS18 [get_ports D[1]]
set_property IOSTANDARD LVCMOS18 [get_ports D[2]]
set_property IOSTANDARD LVCMOS18 [get_ports D[3]]

set_property IOSTANDARD LVCMOS18 [get_ports Clk] 
set_property IOSTANDARD LVCMOS18 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports load]
 
set_property IOSTANDARD LVCMOS33 [get_ports Q[0]]
set_property IOSTANDARD LVCMOS33 [get_ports Q[1]]
set_property IOSTANDARD LVCMOS33 [get_ports Q[2]]
set_property IOSTANDARD LVCMOS33 [get_ports Q[3]]

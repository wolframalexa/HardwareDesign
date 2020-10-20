# Assign inputs/outputs to actual pins on the FPGA
set_property PACKAGE_PIN M15 [get_ports x[2]]
set_property PACKAGE_PIN H17 [get_ports x[1]]
set_property PACKAGE_PIN H18 [get_ports x[0]]
set_property PACKAGE_PIN H19 [get_ports g[2]]
set_property PACKAGE_PIN F21 [get_ports g[1]]
set_property PACKAGE_PIN H22 [get_ports g[0]]


set_property PACKAGE_PIN U14 [get_ports y[0]]
set_property PACKAGE_PIN U19 [get_ports y[1]]
set_property PACKAGE_PIN W22 [get_ports y[2]]
set_property PACKAGE_PIN V22 [get_ports y[3]]
set_property PACKAGE_PIN U21 [get_ports y[4]]
set_property PACKAGE_PIN U22 [get_ports y[5]]
set_property PACKAGE_PIN T21 [get_ports y[6]]
set_property PACKAGE_PIN T22 [get_ports y[7]]

# set voltage levels
set_property IOSTANDARD LVCMOS18 [get_ports x[0]]
set_property IOSTANDARD LVCMOS18 [get_ports x[1]]
set_property IOSTANDARD LVCMOS18 [get_ports x[2]]
set_property IOSTANDARD LVCMOS18 [get_ports g[0]]
set_property IOSTANDARD LVCMOS18 [get_ports g[1]]
set_property IOSTANDARD LVCMOS18 [get_ports g[2]]


set_property IOSTANDARD LVCMOS33 [get_ports y[0]]
set_property IOSTANDARD LVCMOS33 [get_ports y[1]]
set_property IOSTANDARD LVCMOS33 [get_ports y[2]]
set_property IOSTANDARD LVCMOS33 [get_ports y[3]]
set_property IOSTANDARD LVCMOS33 [get_ports y[4]]
set_property IOSTANDARD LVCMOS33 [get_ports y[5]]
set_property IOSTANDARD LVCMOS33 [get_ports y[6]]
set_property IOSTANDARD LVCMOS33 [get_ports y[7]]
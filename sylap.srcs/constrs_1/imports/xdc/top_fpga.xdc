## FPGA PINOUT MAP
set_property -dict {PACKAGE_PIN AD12 IOSTANDARD DIFF_SSTL15} [get_ports clk200_p]
set_property -dict {PACKAGE_PIN AD11 IOSTANDARD DIFF_SSTL15} [get_ports clk200_n]
# SW11.4 Y29 (SW0)
# SW11.3 W29 (SW1)
# SW11.2 AA28 (SW2)



# SI560 (156.25MHz) input


### TIMING CONSTRAINTS
### INPUT DELAY DATA
### OUTPUT DELAY DATA
### FALSE PATHS
### set_false_path -from [get_clocks clk_out1_clk_wiz_1] -to [get_clocks clk_240_clockMainGen]
### set_false_path -from [get_clocks clk_240_clockMainGen] -to [get_clocks clk_out1_clk_wiz_1]
### set_false_path -from [get_clocks clk_100_clockMainGen] -to [get_clocks clk_out1_clk_wiz_1]
### set_false_path -from [get_clocks clk_out1_clk_wiz_1] -to [get_clocks clk_100_clockMainGen]

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets laser_synchronizator/inst/clk_in1_clk_wiz_1]
###set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sylap_clkGen/inst/clk_in1_clk_wiz_2]



set_property CFGBVS Vcco [current_design]
set_property CONFIG_VOLTAGE 2.5 [current_design]

### I/Os


### CLK EMCCCLK 66MHz source








## J12 on Green FMC
## J17 on Green FMC



#FMC_HPC_LA25P
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS25} [get_ports {extraHPC[0]}]
#FMC_HPC_LA25N
set_property -dict {PACKAGE_PIN F17 IOSTANDARD LVCMOS25} [get_ports {extraHPC[1]}]
#FMC_HPC_LA29P
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS25} [get_ports {extraHPC[2]}]
#FMC_HPC_LA29N
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS25} [get_ports {extraHPC[3]}]
#FMC_HPC_LA31P
set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS25} [get_ports {extraHPC[4]}]
#FMC_HPC_LA31N
set_property -dict {PACKAGE_PIN F22 IOSTANDARD LVCMOS25} [get_ports {extraHPC[5]}]



## FIFO FULL DEBUG
## LATCHED OUTPUT for FIFO FULL
#GPIO_LED_7
#GPIO_LED_5
#CENTRAL Button for manual FIFO FULL RESET - SW5

#LED

set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVCMOS15} [get_ports {LED[0]}]
set_property -dict {PACKAGE_PIN AA8 IOSTANDARD LVCMOS15} [get_ports {LED[1]}]
set_property -dict {PACKAGE_PIN AC9 IOSTANDARD LVCMOS15} [get_ports {LED[2]}]
set_property -dict {PACKAGE_PIN AB9 IOSTANDARD LVCMOS15} [get_ports {LED[3]}]
set_property -dict {PACKAGE_PIN AE26 IOSTANDARD LVCMOS25} [get_ports {LED[4]}]
set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS25} [get_ports {LED[5]}]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS25} [get_ports {LED[6]}]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS25} [get_ports {LED[7]}]

set_property -dict {PACKAGE_PIN K24 IOSTANDARD LVCMOS25} [get_ports UART_PORT_TX]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS25} [get_ports UART_PORT_RX]

set_property -dict {PACKAGE_PIN L26 IOSTANDARD LVCMOS25} [get_ports SM_FAN_PWM]


set_property PACKAGE_PIN Y23 [get_ports J13]
set_property IOSTANDARD LVCMOS25 [get_ports J13]

set_property PACKAGE_PIN Y24 [get_ports J14]
set_property IOSTANDARD LVCMOS25 [get_ports J14]

set_property PACKAGE_PIN K25 [get_ports J12]
set_property IOSTANDARD LVCMOS25 [get_ports J12]

set_property PACKAGE_PIN L25 [get_ports J11]
set_property IOSTANDARD LVCMOS25 [get_ports J11]





set_property SLEW FAST [get_ports J11]
set_property SLEW FAST [get_ports J12]
set_property SLEW FAST [get_ports J13]
set_property SLEW FAST [get_ports J14]
set_property DRIVE 16 [get_ports J11]
set_property DRIVE 16 [get_ports J13]
set_property DRIVE 16 [get_ports J12]
set_property DRIVE 16 [get_ports J14]

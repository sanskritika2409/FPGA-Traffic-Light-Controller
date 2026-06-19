iverilog -o traffic_sim ^
../rtl/clk_en.v ^
../rtl/traffic_fsm.v ^
../rtl/top.v ^
../tb/traffic_tb.v

vvp traffic_sim
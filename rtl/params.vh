cd FPGA-Traffic-Light-Controller

mkdir rtl tb constraints simulation waveforms images reports docs

type nul > README.md
type nul > .gitignore

type nul > rtl\params.vh
type nul > rtl\clk_en.v
type nul > rtl\debounce_sync.v
type nul > rtl\timer.v
type nul > rtl\traffic_fsm.v
type nul > rtl\top.v

type nul > tb\traffic_tb.v

type nul > constraints\traffic_controller.xdc

type nul > simulation\run_iverilog.bat
type nul > simulation\run_verilator.bat

type nul > reports\project_report.md
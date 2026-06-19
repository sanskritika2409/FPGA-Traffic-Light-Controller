# 🚦 FPGA-Based Traffic Light Controller with Streamlit Dashboard

![FPGA](https://img.shields.io/badge/FPGA-Verilog-blue)
![HDL](https://img.shields.io/badge/HDL-Verilog-orange)
![Simulation](https://img.shields.io/badge/Simulation-Icarus%20Verilog-green)
![Dashboard](https://img.shields.io/badge/Dashboard-Streamlit-red)

---

# 📌 Project Overview

The **FPGA-Based Traffic Light Controller** is a digital hardware design project implemented using **Verilog HDL** and **Finite State Machine (FSM)** architecture.

The project simulates a real-world 4-way traffic intersection controller where traffic lights operate according to predefined timing sequences.

A professional **Streamlit Dashboard** is integrated to visualize:

- 🚦 Traffic light states
- ⏱ Timing behavior
- 📊 FSM transitions
- 🔄 Controller operation

This project demonstrates concepts used in:

- VLSI Design
- FPGA Development
- RTL Design
- Digital Logic Design
- Hardware Verification

---

# 🎯 Objective

Design and verify a traffic light controller using:

- Verilog HDL
- FSM based control logic
- Clock divider
- Sequential logic
- Combinational logic
- Testbench verification

The controller manages:

- North-South traffic
- East-West traffic

with safe signal transitions.

---

# 🏗️ System Architecture
         Clock Input
              |
              |
        Clock Divider
              |
              |
        FSM Controller
              |
              |
      Traffic Light Logic
              |
    ---------------------
    |                   |
    North-South East-West
Traffic Lights Traffic Lights

---

# 🔥 Features

## Hardware Design

✅ Verilog RTL Implementation  
✅ FSM Based Controller  
✅ Clock Divider  
✅ Reset Logic  
✅ Modular Architecture  


## Simulation

✅ Icarus Verilog Simulation  
✅ Testbench Verification  
✅ VCD Waveform Generation  


## Dashboard

✅ Streamlit Interface  
✅ Animated Traffic Signals  
✅ FSM Monitoring  
✅ Timing Charts  
✅ Interactive Controls  


---

# 🧠 FSM Design

The controller contains four main states:


| State | North-South | East-West |
|------|-------------|-----------|
| S0 | 🟢 Green | 🔴 Red |
| S1 | 🟡 Yellow | 🔴 Red |
| S2 | 🔴 Red | 🟢 Green |
| S3 | 🔴 Red | 🟡 Yellow |


FSM Flow:
S0
|
v
S1
|
v
S2
|
v
S3
|
v
S0

---

# 📂 Project Structure
FPGA-Traffic-Light-Controller

│
├── rtl
│ ├── clk_en.v
│ ├── traffic_fsm.v
│ ├── timer.v
│ └── top.v
│
├── tb
│ └── traffic_tb.v
│
├── simulation
│ └── traffic.vcd
│
├── dashboard
│ ├── app.py
│ └── requirements.txt
│
├── constraints
│ └── traffic_controller.xdc
│
├── images
│ ├── traffic_simulation.png
│ ├── traffic_vcd.png
│ ├── dashboard1.png
│ ├── dashboard2.png
│ └── dashboard3.png
│
├── reports
│
├── README.md
└── .gitignore


---

# 🛠️ Tools Used

## Hardware Design

- Verilog HDL
- FPGA Architecture
- FSM Design


## Simulation

- Icarus Verilog
- GTKWave


## Dashboard

- Python
- Streamlit
- Plotly
- Pandas


---

# ▶️ Simulation


## Compile

```bash
iverilog -o traffic_sim rtl/clk_en.v rtl/traffic_fsm.v rtl/top.v tb/traffic_tb.v
Run
vvp traffic_sim

Output:

VCD info: dumpfile traffic.vcd opened for output
📊 Streamlit Dashboard

Install dependencies:

cd dashboard

pip install -r requirements.txt

Run:

streamlit run app.py

Dashboard provides:

Real-time traffic visualization
FSM state tracking
Timing analysis
Interactive control
📸 Project Screenshots
# 📸 Project Screenshots


## 🚦 Traffic Simulation

![Traffic Simulation](https://raw.githubusercontent.com/sanskritika2409/FPGA-Traffic-Light-Controller/main/images/traffic_simulation.png)


---

## 📈 VCD Waveform

![Traffic VCD](https://raw.githubusercontent.com/sanskritika2409/FPGA-Traffic-Light-Controller/main/images/traffic_vcd.png)


---

# 🖥️ Streamlit Dashboard


## Dashboard View 1

![Dashboard 1](https://raw.githubusercontent.com/sanskritika2409/FPGA-Traffic-Light-Controller/main/images/dashboard1.png)


---

## Dashboard View 2

![Dashboard 2](https://raw.githubusercontent.com/sanskritika2409/FPGA-Traffic-Light-Controller/main/images/dashboard2.png)


---

## Dashboard View 3

![Dashboard 3](https://raw.githubusercontent.com/sanskritika2409/FPGA-Traffic-Light-Controller/main/images/dashboard3.png)


Interactive dashboard showing:

Current traffic state
Signal visualization
Timing charts
FSM monitoring
🔬 Verification

The testbench verifies:

✔ Clock operation
✔ Reset behavior
✔ FSM transitions
✔ Correct traffic sequence
✔ No conflicting green signals

🚀 FPGA Implementation Flow
Verilog RTL

      ↓

Synthesis

      ↓

Implementation

      ↓

Bitstream Generation

      ↓

FPGA Programming

      ↓

LED Traffic Simulation

🌍 Real World Applications

This design concept is used in:

Smart city traffic systems
Industrial automation
Embedded controllers
Automotive electronics
Digital control systems
🔮 Future Improvements

Future upgrades:

🚶 Pedestrian crossing support
🚑 Emergency vehicle priority
🚗 Vehicle density sensors
🌐 IoT traffic monitoring
🤖 AI based adaptive traffic control

🎓 Learning Outcomes

Through this project:

Designed RTL modules using Verilog
Implemented FSM based hardware controller
Created verification environment
Generated simulation waveforms
Developed FPGA-ready architecture
Built Streamlit visualization dashboard
👩‍💻 Author

Sanskritika Awasthi

VLSI | FPGA | Verilog | Digital Design




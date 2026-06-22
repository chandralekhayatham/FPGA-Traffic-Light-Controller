# FPGA-Traffic-Light-Controller
FPGA-Based Traffic Light Controller using Verilog HDL featuring FSM-based traffic sequencing, pedestrian crossing support, emergency vehicle priority, night mode operation, debounced inputs, simulation verification, and FPGA implementation.
# 🚦 FPGA-Based Traffic Light Controller

## 📌 Overview

This project implements a Traffic Light Controller using Verilog HDL and FPGA design techniques. The controller manages traffic signals at a four-way intersection using a Finite State Machine (FSM).

The system supports:

- North-South and East-West Traffic Control
- Pedestrian Crossing Requests
- Emergency Vehicle Priority
- Night Mode Flashing Operation
- Debounced Inputs
- Clock Enable Timing Generation

The project demonstrates important VLSI concepts such as FSM design, sequential logic, combinational logic, clock division, verification, and FPGA implementation.

---

## 🎯 Objective

To design and verify a parameterized FPGA-based traffic controller capable of safely managing vehicle and pedestrian traffic through FSM-based digital control.

---

## 🏗 System Architecture

```text
Clock Input
     │
     ▼
Clock Enable Divider
     │
     ▼
Input Conditioning
(Synchronizer + Debounce)
     │
     ▼
Traffic Light FSM
     │
     ▼
Output Logic
     │
     ▼
Traffic LEDs
```

---

## 🚦 FSM States

| State | Description |
|---------|------------|
| S0 | NS Green, EW Red |
| S1 | NS Yellow, EW Red |
| S2 | All Red |
| S3 | EW Green, NS Red |
| S4 | EW Yellow, NS Red |
| S5 | All Red |
| S6 | Pedestrian Walk |
| S7 | Emergency All Red |
| S8 | Night Flash Mode |

---

## 📥 Inputs

- Clock
- Reset
- Vehicle Sensor NS
- Vehicle Sensor EW
- Pedestrian Button
- Emergency Input
- Night Mode Switch

---

## 📤 Outputs

- NS Green
- NS Yellow
- NS Red
- EW Green
- EW Yellow
- EW Red
- Pedestrian Walk
- Pedestrian Don't Walk

---

## 🧠 VLSI Concepts Used

- Verilog HDL
- Finite State Machine (FSM)
- Sequential Logic
- Combinational Logic
- Clock Divider
- Debouncing
- Synchronization
- RTL Design
- FPGA Implementation
- Verification Methodology

---

## 📂 Folder Structure

```text
FPGA-Traffic-Light-Controller/

├── rtl/
├── tb/
├── constraints/
├── simulation/
├── waveforms/
├── images/
├── reports/
├── docs/
├── README.md
└── .gitignore
```

---

## 🛠 Tools Used

- Verilog HDL
- Vivado
- ModelSim
- GTKWave
- Yosys
- EDA Playground

---

## ▶️ Simulation

### Icarus Verilog

```bash
iverilog -o traffic_sim rtl/*.v tb/traffic_tb.v
vvp traffic_sim
gtkwave traffic.vcd
```

### ModelSim

```bash
vlog rtl/*.v
vlog tb/traffic_tb.v

vsim traffic_tb

run -all
```

---

## 📊 Verification Checklist

✅ State Transitions

✅ Traffic Signal Timing

✅ Pedestrian Request Handling

✅ Emergency Pre-emption

✅ Night Mode Operation

✅ No Conflicting Green Signals

---

## 📸 Screenshots

Capture:

- RTL Source Code
- FSM Diagram
- Testbench Code
- Simulation Output
- Waveform Analysis
- State Transition Table
- Synthesis Report
- Implementation Report
- GitHub Repository

---

## 🌍 Applications

- Smart Traffic Systems
- Intelligent Transportation Systems (ITS)
- Smart Cities
- Industrial Automation
- Campus Traffic Management
- Parking Facilities

---

## 🚀 Future Enhancements

- Traffic Density Detection
- Adaptive Signal Timing
- Multi-Intersection Synchronization
- IoT Connectivity
- Mobile Monitoring Dashboard
- AI-Based Traffic Prediction

---

## 🎓 Learning Outcomes

- FSM Design
- Verilog HDL Programming
- RTL Design
- FPGA Development
- Verification & Debugging
- Embedded Control Systems


VLSI / FPGA Project

---

⭐ If you found this project useful, please star the repository.

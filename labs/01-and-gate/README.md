# Lab 1 — Implementation of AND Gate Using Verilator

## Objective

Implement a basic AND gate using synthesizable Verilog RTL, simulate it using Verilator, generate a VCD waveform, and inspect the simulation results using GTKWave.

## Directory Structure

```text
01-and-gate/
├── README.md
├── rtl/
│   └── and_gate_design.v
├── tb/
│   └── and_gate_tb.v
├── sim/
├── waveforms/
│   └── dump_and_gate.vcd
├── screenshots/
└── results/

---

## Step 6 — Create the workshop curriculum tracker

This will become our **master progress document**.

```bash
cat > docs/workshop/curriculum.md <<'EOF'
# Bootcamp 2.0 — Workshop Curriculum

## Workshop

**Bootcamp 2.0: RTL, IP Integration, and SoC Signoff**

Platform: eChipHub / NIELIT

Duration: 30 Hours

---

# Module 1 — RTL Design & IP Integration

Duration: 15 Hours

## 1. Verilog Coding Fundamentals

Status: 🔄 In Progress

Topics:

- Verilog fundamentals
- RTL coding
- Modules
- Ports
- Combinational logic
- Sequential logic

Labs / Implementations:

- [x] Lab 1 — AND Gate
- [ ] Additional exercises

---

## 2. Synthesizable RTL

Status: ⬜ Not Started

Topics:

- Synthesizable constructs
- RTL coding discipline
- Combinational logic
- Sequential logic
- Reset structures
- Design-for-synthesis considerations

---

## 3. RTL Best Practices

Status: ⬜ Not Started

Topics:

- Coding style
- Readability
- Modularity
- Parameterization
- Avoiding unintended latches
- Verification-friendly RTL

---

## 4. IP Integration

Status: ⬜ Not Started

Topics:

- IP interfaces
- Subsystem integration
- Interconnect
- Address mapping
- Integration methodology

---

## 5. APB

Status: ⬜ Not Started

Topics:

- APB architecture
- APB signals
- APB transfer
- APB master
- APB slave
- APB integration

---

## 6. AHB-Lite

Status: ⬜ Not Started

Topics:

- AHB-Lite architecture
- AHB-Lite signals
- Transfer phases
- Address/control phase
- Data phase
- Master/slave interaction
- AHB-Lite integration

---

# Module 2 — Advanced RTL Design and CDC/RDC Handling

Duration: 15 Hours

## 1. Multi-Clock Design

Status: ⬜ Not Started

Topics:

- Multiple clock domains
- Clock-domain interactions
- Clock relationships

---

## 2. Asynchronous Reset

Status: ⬜ Not Started

Topics:

- Asynchronous reset
- Reset assertion
- Reset deassertion
- Reset synchronization

---

## 3. CDC

Status: ⬜ Not Started

Topics:

- Clock Domain Crossing
- Synchronization
- Metastability
- CDC structures

---

## 4. RDC

Status: ⬜ Not Started

Topics:

- Reset Domain Crossing
- Reset synchronization
- RDC issues
- RDC-safe structures

---

## 5. Asynchronous FIFO

Status: ⬜ Not Started

Topics:

- FIFO architecture
- Dual-clock operation
- Gray-code pointers
- CDC synchronization
- Full/empty detection

---

## 6. Clock Gating

Status: ⬜ Not Started

Topics:

- Clock gating
- Power reduction
- Glitch-free clock gating
- Low-power RTL

---

# Workshop Progress

| Area | Status |
|---|---|
| Environment Setup | ✅ Complete |
| Verilator | ✅ Installed |
| GTKWave | ✅ Installed |
| Yosys | ✅ Installed |
| OpenLane | ✅ Installed |
| SKY130 PDK | ✅ Installed |
| Magic | ✅ Installed |
| Xschem | ✅ Installed |
| Lab 1 — AND Gate | ✅ Simulation Complete |
| Module 1 | 🔄 In Progress |
| Module 2 | ⬜ Not Started |


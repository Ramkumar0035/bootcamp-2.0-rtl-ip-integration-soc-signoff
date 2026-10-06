# Bootcamp 2.0 — RTL, IP Integration & SoC Signoff

A structured engineering repository documenting my work, experiments, RTL implementations, simulations, verification results, and notes from **Bootcamp 2.0: RTL, IP Integration, and SoC Signoff**.

The repository follows the workshop progression from basic RTL design through IP integration, bus protocols, CDC/RDC, asynchronous FIFOs, clock gating, synthesis, and signoff-oriented flows.

---

## 📚 Workshop Overview

**Platform:** eChipHub / NIELIT  
**Workshop:** Bootcamp 2.0 — RTL, IP Integration, and SoC Signoff  
**Duration:** 30 Hours

### Module 1 — RTL Design & IP Integration

- Verilog coding fundamentals
- Synthesizable RTL
- RTL design best practices
- Subsystem-level IP integration
- APB
- AHB-Lite

### Module 2 — Advanced RTL Design & CDC/RDC Handling

- Multi-clock domain design
- Asynchronous resets
- Clock Domain Crossing (CDC)
- Reset Domain Crossing (RDC)
- Asynchronous FIFOs
- Low-power clock gating

---

# 🏗️ Repository Structure

```text
bootcamp-2.0-rtl-ip-integration-soc-signoff/
│
├── README.md
│
├── docs/
│   ├── concepts/
│   │   ├── rtl-design.md
│   │   ├── synthesis.md
│   │   ├── ip-integration.md
│   │   ├── apb.md
│   │   ├── ahb-lite.md
│   │   ├── cdc.md
│   │   ├── rdc.md
│   │   ├── async-fifo.md
│   │   └── clock-gating.md
│   │
│   ├── setup/
│   │   ├── environment.md
│   │   ├── tool-versions.md
│   │   └── troubleshooting.md
│   │
│   └── workshop/
│       ├── curriculum.md
│       ├── progress.md
│       └── workshop-log.md
│
├── module-1-rtl-ip-integration/
│   ├── 01-verilog-fundamentals/
│   ├── 02-synthesizable-rtl/
│   ├── 03-rtl-best-practices/
│   ├── 04-ip-integration/
│   ├── 05-apb/
│   └── 06-ahb-lite/
│
├── module-2-advanced-rtl-cdc-rdc/
│   ├── 01-multi-clock-design/
│   ├── 02-asynchronous-reset/
│   ├── 03-cdc/
│   ├── 04-rdc/
│   ├── 05-asynchronous-fifo/
│   └── 06-clock-gating/
│
├── labs/
│   └── 01-and-gate/
│
├── scripts/
│   ├── verilator/
│   ├── yosys/
│   └── openlane/
│
└── results/
    ├── simulation/
    ├── synthesis/
    ├── sta/
    ├── cdc/
    ├── rdc/
    └── physical-design/

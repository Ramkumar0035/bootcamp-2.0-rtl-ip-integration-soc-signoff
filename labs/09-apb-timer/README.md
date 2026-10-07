# Lab 9 — APB Timer

Implemented and verified an APB-based countdown timer peripheral.

## Features

- APB interface
- 8-bit timer counter
- Load register at `0x00`
- Control register at `0x04`
- Status register at `0x08`
- Start/stop control
- Timer completion indication
- Countdown to zero

## Verification

- Verilator simulation: PASS
- GTKWave waveform: PASS
- Timer load value: `5`
- Timer countdown: `5 → 4 → 3 → 2 → 1 → 0`
- Timer load value: `3`
- Timer countdown: `3 → 2 → 1 → 0`
- `timer_done` observed for both timer runs

## Tools

- Verilator 5.038
- GTKWave 3.3.116
- Verilog

**Status: Complete**

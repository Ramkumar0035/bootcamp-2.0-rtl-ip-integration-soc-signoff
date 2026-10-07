# Lab 8 — UART Receiver

Implemented and verified an 8-bit UART receiver operating at 115200 baud with a 25 MHz system clock.

## Features

- 2-stage synchronizer for asynchronous serial input
- UART FSM: IDLE → START → RECV → STOP
- 8-bit data reception
- LSB-first sampling
- `data_ready` pulse after successful reception
- `CLKS_PER_BIT = 217`

## Verification

- Verilator simulation: PASS
- GTKWave waveform: PASS
- `8'h3C` received correctly
- `8'h2F` received correctly

## Tools

- Verilator 5.038
- GTKWave 3.3.116
- Verilog

**Status: Complete**

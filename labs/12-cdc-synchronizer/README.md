# Lab 12 — 2-Stage CDC Synchronizer

Implemented and verified a 2-stage synchronizer for safely sampling an asynchronous input.

## Features

- Asynchronous input
- Two flip-flop synchronization stages
- Synchronized output
- One-cycle synchronization delay

## Verification

- Verilator simulation: PASS
- GTKWave waveform: PASS
- Verified `clk`, `async_in`, and `synced`

## Tools

- Verilator 5.038
- GTKWave 3.3.116
- Verilog

**Status: Complete**

# Lab 11 — Metastability Without Synchronization

Implemented and verified direct sampling of an asynchronous input without synchronization.

## Features

- Asynchronous input signal
- Direct sampling on the positive clock edge
- Demonstrates an unsafe CDC structure
- Used as the baseline for the 2-stage synchronizer in Lab 12

## Verification

- Verilator simulation: PASS
- GTKWave waveform: PASS
- Verified `clk`, `async_in`, and `sampled`

## Tools

- Verilator 5.038
- GTKWave 3.3.116
- Verilog

**Status: Complete**

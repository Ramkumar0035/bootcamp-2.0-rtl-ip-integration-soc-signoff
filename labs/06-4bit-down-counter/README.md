# Lab 6 — 4-bit DOWN Counter

Implemented and verified a 4-bit binary down counter with asynchronous active-high reset.

## Operation

- Reset → `1111`
- Counter decrements on every rising clock edge
- Counts from `1111` to `0000`
- Wraps from `0000` to `1111`

## Verification

- Verilator simulation: PASS
- GTKWave waveform: PASS
- Asynchronous reset: PASS
- 4-bit counting and rollover: PASS

## Tools

- Verilator 5.038
- GTKWave 3.3.116
- Verilog

**Status: Complete**

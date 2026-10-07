# Lab 5 — 4-bit UP Counter

Implemented and verified a 4-bit binary up counter with asynchronous active-high reset.

## Operation

- Reset → `0000`
- Counter increments on every rising clock edge
- Counts from `0000` to `1111`
- Wraps from `1111` to `0000`
- Asynchronous reset forces the count to `0000`

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

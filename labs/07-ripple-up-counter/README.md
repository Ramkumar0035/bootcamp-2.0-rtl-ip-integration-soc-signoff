# Lab 7 — 4-bit Ripple UP Counter

Implemented and verified a 4-bit ripple up counter using cascaded T flip-flops.

## Operation

- Asynchronous reset → `0000`
- T flip-flops toggle sequentially
- Each stage clocks the next stage
- Counts from `0000` to `1111`
- Wraps from `1111` to `0000`
- Ripple propagation produces intermediate transition states

## Verification

- Verilator simulation: PASS
- GTKWave waveform: PASS
- Ripple propagation: PASS
- 4-bit counting and rollover: PASS

## Tools

- Verilator 5.038
- GTKWave 3.3.116
- Verilog

**Status: Complete**

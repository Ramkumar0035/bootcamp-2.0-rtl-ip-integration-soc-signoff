# Lab 10 — APB UART Interface

Implemented and verified an APB UART bridge integrating an APB interface with a UART loopback model.

## Architecture

APB Master/Testbench
        |
        v
APB UART Bridge
        |
        v
UART Loopback
        |
        v
RX Data / Status

## Register Map

| Address | Access | Description |
|---------|--------|-------------|
| 0x00 | Write | TX data |
| 0x04 | Read | RX data |
| 0x08 | Read | UART status |

## Features

- APB setup and access phases
- APB read/write transactions
- UART TX data handling
- UART loopback
- RX data reporting
- RX ready indication
- TX busy indication

## Verification

- Verilator simulation: PASS
- GTKWave waveform generated
- `8'hA5` transmitted and received correctly
- `8'h3C` transmitted and received correctly
- APB RX reads matched transmitted data

## Tools

- Verilator 5.038
- GTKWave 3.3.116
- Verilog

**Status: Complete**

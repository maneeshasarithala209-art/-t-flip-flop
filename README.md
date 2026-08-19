# T Flip-Flop using Verilog

## Description

This project implements a T (Toggle) flip-flop using Verilog HDL.

The T flip-flop changes its output according to the value of the
T input at the positive edge of the clock.

The design contains:

- Clock input (clk)
- Reset input (reset)
- Toggle input (T)
- Output (Q)
- Complementary output (Qbar)

## Truth Table

| T | Q(next) | Operation |
|---|---------|-----------|
| 0 | Q       | Hold      |
| 1 | ~Q      | Toggle    |

## Files

```text
t_flipflop/
├── README.md
├── t_flipflop.v
└── tb_t_flipflop.v
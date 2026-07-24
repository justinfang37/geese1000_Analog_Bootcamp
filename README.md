# UWASIC Analog Onboarding

## 2-Stage Op-Amp Performance Summary
=====================================
DC Gain:              82.1359 dB  (Target: ≥20 dB)
Input Offset:         0.6353087 mV  (Target: ≤5 mV)  
CMRR:                 64.1934 dB  (Target: ≥40 dB)
Input Impedance:      5.793134e6 MΩ  (Target: ≥1 MΩ)
Output Impedance:     0.01800298 kΩ  (Target: ≤1 kΩ)
Power Consumption:    0.2194589 mW  (Target: ≤5 mW)
3dB Bandwidth:        0.00369663 MHz

GBW Product:          9.23232 MHz

PASS/FAIL: PASS

## Documentation

**Full documentation is available in the [`docs/`](./docs) directory.**

Please refer to the documentation for:

- [Environment Setup](./docs/src/content/Environment)
- [Digital Workflow](./docs/src/content/Flows/Digital.ts)
- [Analog Workflow](./docs/src/content/Flows/Analog.ts)
- [Mixed-Signal Workflow](./docs/src/content/Flows/MixedSignal.ts)
- [TinyTapeout Integration](./docs/src/content/TinyTapeout)

### Quick Start Docs

To view the documentation locally:

```bash
cd docs/
bun install
bun run dev
```

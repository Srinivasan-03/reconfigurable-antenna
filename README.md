## Reconfigurable Patch Antenna for Vehicle-to-Vehicle (V2V) Communication

This project presents the design and simulation of a frequency-reconfigurable 
microstrip patch antenna targeting the 5.9 GHz DSRC (Dedicated Short Range 
Communication) band used in Vehicle-to-Vehicle (V2V) communication systems.

### Key Features
- Microstrip patch antenna designed on FR-4 substrate (εr = 4.4, h = 1.6 mm)
- Operates at 5.9 GHz (DSRC band) in default state
- PIN diode modeled as a lumped element to achieve frequency switching
- Slot introduced in the patch to enable reconfigurability
- Simulated in CST Studio Suite 2025 using Time Domain Solver

### Antenna States
| State | Diode | Frequency |
|-------|-------|-----------|
| State 1 | OFF (open circuit) | 5.9 GHz |
| State 2 | ON (short circuit) | Secondary band |

### Results
- S11 (Return Loss) plots for both states
- Radiation pattern at 5.9 GHz
- Gain and VSWR analysis

### Tools Used
- CST Studio Suite 2025
- Time Domain Solver
- Farfield Monitors for radiation pattern extraction

### Application
Smart vehicle communication systems requiring adaptive, 
multi-frequency antenna operation for safety and reliability.

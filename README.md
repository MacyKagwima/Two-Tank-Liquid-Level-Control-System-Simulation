# Two-Tank-Liquid-Level-Control-System-Simulation

## Overview
This repository contains MATLAB code used to simulate and analyze a two-tank liquid level control system connected in series. The simulation was developed as part of a Control Engineering laboratory experiment and demonstrates system modeling, controller design, and closed-loop performance analysis.

The objective of the experiment was to model the dynamic behavior of the two-tank system, derive the corresponding transfer functions, and design an appropriate controller to regulate the liquid level in the second tank.

---

## System Description
The system consists of two interconnected tanks where liquid flows from the first tank into the second tank. The liquid level in the second tank is controlled by adjusting the inflow to the first tank.

The mathematical model was developed using:
- Mass balance equations
- Linearization about an operating point
- Transfer function representation

---

## Controller Design
A Proportional–Integral (PI) controller was implemented to regulate the liquid level in the second tank. The PI controller was selected to ensure:
- Zero steady-state error
- Acceptable transient response
- Improved disturbance rejection

---

## Simulation Environment
- **Software:** MATLAB
- **Toolboxes:** Control System Toolbox
- **Method:** Time-domain simulation using transfer functions

---

## Files Included
- `Two-Tank-Liquid-Level-Control-System-Simulation.m` – MATLAB script implementing:
  - System modeling
  - Controller design
  - Closed-loop simulation
  - Result visualization

---

## How to Run the Simulation
1. Open MATLAB.
2. Ensure the Control System Toolbox is installed.
3. Place the script in your MATLAB working directory.
4. Run the script:
   ```matlab
   two_tank_simulation

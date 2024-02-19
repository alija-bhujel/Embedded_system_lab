# Embedded System VHDL Lab Assignments

This repository contains our solutions to various VHDL lab assignments. The code is compiled using GHDL and the waveforms are visualized using GTKWave. The development environment used is Visual Studio Code (VSCode).

## How to Run

### Requirements
1. GHDL
2. GTK Wave
3. Visual Studio Code (VSCode)

### How to Start
1. Clone the repository:
    ```bash
    git clone https://github.com/alija-bhujel/Embedded_system_lab.git
    cd Embedded_system_lab
    ```

2. **Steps to Follow:**
   - Installing GHDL
   - Installing GTKWave
   - Installing make tools

## After Installation

Go to a specific file you want to observe the output in the terminal. For example:
```bash
cd gcd
```

Run the Makefile:
```bash
make
```

This will create a file `result.vcd`. To observe the output, run:
```bash
gtkwave result.vcd
```

This will open GTKWave with the waveform visualization.


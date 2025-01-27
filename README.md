# vla-dev
A repository for VLA-COSMIC FPGA F-engine firmware and control software.

## Software Versions:
- Ubuntu 18.04
- Xilinx Vivado System Edition 2019.1.3
- MATLAB/Simulink 2019a

## To open/modify/compile:

1. Clone this repository
2. Clone submodules:
```
git submodule update --init --recursive
```
3. Create a local environment specification file `firmware/startsg.local`.
4. From `firmware/`, run `startsg` (if your environment file is called `startsg.local`) or `startsg <my_local_environment_file.local>`.

## Repository Layout

 - `firmware/` -- Firmware source files and libraries
 - `software/` -- Libraries providing communication to ADM-PCIe-9H7 hardware and firmware
 - `docs/` -- Documentation

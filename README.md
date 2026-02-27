# SoC Design Lab Experiments

This repository contains lab experiments completed as part of the **System-on-Chip Design** coursework.
The experiments focus on **FPGA-based design**, **High-Level Synthesis (HLS)**, and **PS–PL integration** on the Zynq platform, emphasizing performance–area trade-offs and hardware–software interaction.

---

## 🧩 Lab Experiments

### Experiment 1: FIR Filter Design using Vivado HLS

- Implemented an **11-tap FIR filter** using multiple C-based models in Vivado HLS.
- All implementations use the **same coefficients and functionality**, but differ in coding style and optimization techniques.

**Explored techniques:**
- Single-loop FIR implementation
- Boundary-condition optimization
- Loop fission (separating shift and MAC)
- Manual loop unrolling
- Array partitioning and parallel MAC operations

**Learning Outcome:**
- Understanding how **loop structure, data dependencies, and pragmas** affect latency, initiation interval, and FPGA resource utilization in HLS.
- Observing **performance vs area trade-offs** for algorithmically identical designs.

---

### Experiment 2: PS-Based LED–Switch Controller on Zynq

- Designed a **PS-controlled LED–Switch system** using the Zynq-7000 platform.
- Implemented a **custom AXI4-Lite peripheral** connected to the Processing System.

**Key tasks:**
- AXI4-Lite slave IP integration with Zynq PS
- Memory-mapped I/O access from ARM Cortex-A9
- Control of LEDs using DIP switch inputs
- Platform and application development using Vitis

**Learning Outcome:**
- Understanding **PS–PL communication** using AXI
- Practical exposure to **hardware–software co-design**
- Debugging platform build and toolchain-related issues in FPGA workflows


---

### Experiment 3: Experiment 3: FIR Filter using Zynq PS + AXI DMA + HLS IP

- Implemented an **FIR filter** hardware accelerator in the Programmable Logic (PL) **using Vitis HLS**.
- Integrated the generated FIR IP with the **Zynq Processing System (PS) using the AXI4-Stream protocol**.
- Used **AXI DMA** to transfer input samples from DDR memory to the FIR accelerator and store filtered output back into DDR.

**Key tasks:**
- FIR filter design using **AXI-Stream** interfaces in HLS
- Exporting HLS design as a Vivado IP core from Vitis HLS
- Building a Zynq block design in Vivado with:
  - Zynq Processing System (as Master)
  - AXI DMA (MM2S and S2MM channels) (as Slave)
  - FIR HLS IP connected through AXI Stream
- Bitstream generation and hardware export to Vitis IDE
- Developing a Vitis C application to:
  - Initialize DMA
  - Send input samples through MM2S (Master to Slave)
  - Receive filtered output through S2MM (Slave to Master)
  - Print results using UART

**Learning Outcome:**
- Understanding high-speed PS–PL data movement using AXI DMA
- Practical experience with AXI4-Stream handshaking (TVALID/TREADY/TLAST)
- Implementing real-time hardware acceleration using HLS + DMA + Zynq integration

---


## 🧑‍🎓 Author

**Kaushik Balaji M S**  
M.Tech – System-on-Chip Design  
Indian Institute of Technology, Palakkad

---

## 📄 License

This repository is intended for academic and educational use.

# Verilog Designs 

A collection of **Verilog HDL** codes for practicing and understanding **digital design** concepts.  
It includes both **combinational** and **sequential** circuits, implemented along with their testbenches.  

The goal of this repo is to build a strong foundation in **RTL design, digital electronics, and VLSI basics**.  

---

## 📂 Table of Contents

### 🔸 Combinational Circuits
- [4:1 MUX](./4:1%20mux.v) | [Testbench](./4:1%20mux_tb)  
- [4:2 Priority Encoder](./4:2%20priority%20encoder.v) | [Testbench](./4:2%20priority%20encoder_tb)  
- [3:8 Decoder](./3:8%20decoder.v) | [Testbench](./3:8%20decoder.tb)  
- [4-bit Comparator](./4bit%20comparator.v) | [Testbench](./4bit%20comparator_tb)  
- [Half Adder](./half%20adder.v) | [Testbench](./half%20adder_tb)  
- [Full Adder](./full%20adder.v) | [Testbench](./full%20adder_tb)  

### 🔸 Sequential Circuits
- [D Flip-Flop (Sync)](./D%20flip%20flop%20synchronous.v) | [Testbench](./D%20flip%20flop%20synchronous_tb)  
- [JK Flip-Flop](./JK%20flip%20flop.v) | [Testbench](./JK%20flip%20flop_tb)   
- [D Latch Async](./dlatch%20asynchronous.v) | [Testbench](./dlatch_async_tb)  
- [Up Counter](./up%20counter%20async.v) | [Testbench](./up%20counter%20async_tb)  
- [Up/Down Counter](./up%20and%20down%20counter.v) | [Testbench](./up%20and%20down%20counter_tb)  
- [Mod Counter](./mod%20counter.v) | [Testbench](./mod%20up%20counter_tb)  
- [Range Up Counter](./range%20up%20counter.v) | [Testbench](./range%20up%20counter_tb)  
- [Frequency Divider by 2](./frequency%20divider%20by%202.v) | [Testbench](./Frequency%20divider%20by%202_tb)  
- [Frequency Divider by 4](./frequency%20divider%20by%204.v) | [Testbench](./Frequency%20divider%20by%204_tb)  

### 🔸 Shift Registers
- [Left Shift Register](./Left%20Shift%20register%20sync.v) | [Testbench](./Left%20shift%20register%20sync_tb)  
- [Right Shift Register](./shift%20right%20register.v) | [Testbench](./right%20shift%20register_tb)  
- [Universal Shift Register](./universal%20shift%20register.v) | [Testbench](./universal%20shift%20register_tb)  

### 🔸 Memory & Other Designs
- [ALU 4-bit](./ALU%204bit.v) | [Testbench](./ALU%204bit_tb)  
- [8-bit Twin Register](./8%20bit%20twin%20register.v) | [Testbench](./8%20bit%20twin%20register_tb)  
- [Single Clock FIFO](./single_clock_fifo.v) | [Testbench](./single_clock_fifo_tb)  
- [Dual Clock FIFO](./Dual%20clock%20fifo.v) | [Testbench](./Dual%20clock%20fifo%20counter_tb)  
- [Single Port RAM](./single%20port%20ram.v) | [Testbench](./single%20port%20ram_tb)  
- [Dual Port RAM](./Dual%20port%20ram.v) | [Testbench](./Dual%20port%20ram_tb)    

---

## 🖥️ How to Run

You can simulate the designs using **Icarus Verilog** or **ModelSim**.  

Example (using Icarus Verilog + GTKWave):  
```bash
# Compile design + testbench
iverilog -g2012 -o mux4_tb "4:1 mux.v" "4:1 mux_tb"

# Run simulation
vvp mux4_tb

# View waveform
gtkwave mux4_tb.vcd


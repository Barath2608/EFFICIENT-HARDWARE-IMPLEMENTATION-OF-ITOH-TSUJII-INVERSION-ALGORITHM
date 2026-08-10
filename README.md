# Efficient Hardware Implementation of Itoh–Tsujii Inversion Algorithm

## Overview

This project presents a hardware-efficient implementation of the **Itoh–Tsujii multiplicative inversion algorithm** over binary finite fields.

The architecture is designed and evaluated for three field sizes:

* **GF(2¹⁹³)**
* **GF(2²³³)**
* **GF(2⁴⁰⁹)**

The implementations are targeted toward cryptographic hardware applications, particularly operations used in **Elliptic Curve Cryptography (ECC).

The project evaluates the proposed architecture on both **FPGA** and **ASIC** platforms, with emphasis on performance, area, power consumption, and scalability.

---

Objectives

The main objectives of this project are:

* To implement the Itoh–Tsujii multiplicative inversion algorithm in hardware.
* To support large binary finite fields of 193, 233, and 409 bits.
* To develop an efficient hardware architecture for finite-field inversion.
* To evaluate the architecture using FPGA synthesis.
* To evaluate the architecture using ASIC synthesis.
* To analyze the trade-offs between area, timing, power, and performance.
* To study the scalability of the architecture with increasing field size.


## Architecture

The proposed architecture consists of several major hardware components, including:

* Control block
* Multiplexers
* Hybrid Karatsuba multiplier
* Quad block
* Register/data storage elements
* Finite-field reduction logic

The control block coordinates the data flow and controls the different computational stages of the inversion operation.

The multiplication stage uses a **Karatsuba-based approach** to reduce the multiplication complexity, while the Quad block is used as part of the optimized Itoh–Tsujii architecture.

---

## Supported Field Sizes

| Field    | Description                 |
| -------- | --------------------------- |
| GF(2¹⁹³) | 193-bit binary finite field |
| GF(2²³³) | 233-bit binary finite field |
| GF(2⁴⁰⁹) | 409-bit binary finite field |

The three implementations allow the architecture to be evaluated for different cryptographic field sizes.

---

## Repository Structure


.
├── 193/
│   └── GF(2¹⁹³) implementation files
│
├── 233/
│   └── GF(2²³³) implementation files
│
├── 409/
│   └── GF(2⁴⁰⁹) implementation files
│
├── results/
│   └── FPGA and ASIC synthesis results
│
├── README.md


## Tools and Technologies

### HDL
Verilog HDL

### FPGA

* Xilinx ISE 14.7
* Xilinx Virtex FPGA families

### ASIC

* Cadence Genus
* Nangate 45 nm Open Cell Library

### Target Applications

* Cryptographic hardware
* Elliptic Curve Cryptography (ECC)
* Finite-field arithmetic
* Hardware accelerators

---

## FPGA Implementation

The proposed architecture was evaluated on multiple Xilinx Virtex FPGA families:

* Virtex-4
* Virtex-5
* Virtex-6
* Virtex-7

The FPGA evaluation considers parameters such as:

* LUT utilization
* Maximum operating frequency (Fmax)
* Clock cycles
* Critical path delay
* Execution time
* Performance

The results show improved operating frequency and reduced delay on newer FPGA generations, with Virtex-7 providing the strongest overall performance among the evaluated FPGA families.

---

## ASIC Implementation

The architecture was synthesized using **Cadence Genus** with a **45 nm standard-cell library**.

The ASIC evaluation considers:

* Cell count
* Silicon area
* Operating frequency
* Critical path delay
* Power consumption
* Performance

All three field sizes were evaluated at a target frequency of **100 MHz**.

The 409-bit implementation requires substantially more hardware resources than the 193-bit and 233-bit implementations due to the increased computational complexity of the larger finite field.

---

## Results

### ASIC Results

| Field    | Cell Count | Area (µm²) | Frequency | Critical Delay |    Power |
| -------- | ---------: | ---------: | --------: | -------------: | -------: |
| GF(2¹⁹³) |     33,826 |     51,741 |   100 MHz |        4.91 ns | 21.17 mW |
| GF(2²³³) |     43,240 |     66,023 |   100 MHz |        4.49 ns | 25.88 mW |
| GF(2⁴⁰⁹) |    109,122 |    167,708 |   100 MHz |       3.651 ns | 75.70 mW |

The ASIC synthesis results show that increasing the field size increases cell count, silicon area, and power consumption. All three implementations meet the applied timing requirements at 100 MHz.

### FPGA Results

The architecture was evaluated across Virtex-4, Virtex-5, Virtex-6, and Virtex-7 FPGA families.

For example, the GF(2¹⁹³) implementation achieved the following maximum operating frequencies:

| FPGA     |        Fmax |
| -------- | ----------: |
| Virtex-4 | 118.245 MHz |
| Virtex-5 | 145.698 MHz |
| Virtex-6 |     170 MHz |
| Virtex-7 |     188 MHz |

For larger field sizes, LUT utilization and computational complexity increase. However, newer FPGA generations provide improved frequency and delay characteristics.

---

## Simulation

Simulation testbenches are provided with the corresponding field-size implementations where applicable.

The simulations can be used to verify:

* Input/output behavior
* Finite-field multiplication
* Intermediate operations
* Multiplicative inversion
* Functional correctness

Before running the simulations, make sure the required Verilog source files and testbench files are included in the simulator project.

---

## How to Use

### 1. Clone the repository

bash
git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git


### 2. Enter the repository

```bash
cd YOUR-REPOSITORY
```

### 3. Select the required field size

Navigate to the corresponding implementation:


193/
233/
409/


### 4. Open the design in the appropriate HDL/FPGA tool

For FPGA implementation, open the relevant Verilog project using the supported Xilinx ISE environment.

For ASIC synthesis, use the provided synthesis scripts and constraints when available.

### 5. Run simulation

Compile the required RTL files and the corresponding testbench, then execute the simulation using the supported simulator.

---

## Performance and Scalability

The implementation demonstrates scalability across the three evaluated binary field sizes.

As the field size increases from 193 bits to 409 bits:

* Hardware resource utilization increases.
* LUT utilization increases on FPGA.
* ASIC cell count and silicon area increase.
* Power consumption increases.
* Computational complexity increases.

At the same time, newer FPGA architectures provide improved operating frequency and reduced delay.

The results demonstrate that the architecture can be adapted to multiple field sizes and implementation platforms.

---

## Future Work

Potential future improvements include:

* Hybrid architectures combining optimized exponentiation and Karatsuba multiplication.
* Adaptive pipelining for improved throughput.
* A reconfigurable architecture supporting multiple field sizes.
* Power optimization using clock gating and power gating.
* Evaluation using advanced technology nodes.
* Integration with a complete ECC accelerator.
* Parallel inversion for high-throughput applications.
* Evaluation on newer FPGA architectures.

---

## Project Report

Detailed project methodology, architecture, implementation, and synthesis results are available in the project documentation.


## Applications

The proposed hardware architecture can be useful in applications involving:

* Elliptic Curve Cryptography
* Cryptographic accelerators
* Finite-field arithmetic
* Secure hardware implementations
* FPGA-based cryptographic systems
* ASIC cryptographic accelerators

---

## References

1. B. Rashidi, R. Rezaeian Farashahi, and S. M. Sayedi, "High-performance and high-speed implementation of polynomial basis Itoh-Tsujii inversion algorithm over GF(2^m)."

2. B. Rashidi, "High-performance and high-speed FPGA implementations of polynomial basis Itoh–Tsujii inversion algorithm."

3. C. Rebeiro, S. Sinha Roy, D. Sankara Reddy, and D. Mukhopadhyay, "A modified ITA algorithm for efficient FPGA implementations."

4. C. Rebeiro, S. Sinha Roy, D. Sankara Reddy, and D. Mukhopadhyay, "Revisiting the Itoh-Tsujii Inversion Algorithm for FPGA Platforms," IEEE Transactions on VLSI Systems, 2011.

---

## Author

Barath Kumar S B

Final Year Project – Electronics and Communication Engineering

---

## License

This project is intended for academic and research purposes.

# RAM-DESIGN

*COMPANY *  :CODTECH IT SOLUTIONS
*NAME*      :VEDANT DARJI
*INTERN ID* :CT08DN1242
*DOMAIN*    :VLSI
*DURATION*  :8 WEEKS
*MENTOR*    :NEELA SANTOSH

The SRAM (Static Random-Access Memory) module in Verilog is used to model a small memory unit that can store data persistently as long as power is supplied. Unlike dynamic RAM, SRAM does not require refreshing, making it faster and simpler to implement in small-scale memory applications.

In the Verilog implementation, the SRAM is designed as a 2D register array to represent memory cells, where:

Each row corresponds to a memory address.

Each column stores a bit of the data word.

The module typically includes the following:

Inputs:

clk: Clock signal to synchronize operations

addr: Address input to select the memory location

data_in: Data to be written into memory

we (Write Enable): Control signal to write data

Output:

data_out: Data read from the selected address

The write operation occurs on the positive edge of the clock when the write enable signal is active, storing the input data at the specified address. The read operation is typically combinational, allowing data to be accessed from the memory location indicated by the address at any time.

This Verilog SRAM model is ideal for simulating memory in digital designs such as cache, register files, or temporary storage in processors and microcontrollers.

output:
<img width="1574" height="814" alt="Image" src="https://github.com/user-attachments/assets/b1b38c1f-5366-41a4-86d2-674121a73406" />


# Memory
> Calculator design using  VHDL

 ## Table of contents
* [Labs](#labs)
   * [1](#alu-n-register-file)
   * [2](#datapath-charis-processor)
   * [3](#control-unit)
   * [4](#operations-for-calculator-design)
   * [5](#pipeline-proc) 
   * [6](#pipeline-proc) 
* [How to run](#how-to-run)
* [Acknowledgments](#acknowledgments)


## ALU N REGISTER FILE
### ALU

| Name |  Width  |  Action  | 
| ------- | ----- | -------| 
| Α | IN (32 bits) | 2's compiment operative| 
| Β | IN (32 bits) |  2's compiment operative | 
| Op | IN (4 bits) | Action code | 
| Out | OUT (32 bits)|  2's compiment result | 
| Zero | IN (1 bit) | Signal for Zero output|  
| C<sub>out</sub> | OUT (1 bit) | Signal for Carry Out output | 
| Ovf | OUT (1 bit) | Signal for Overflow output | 

| Code |  Action  |  Result  | 
| ------- | ----- | ------ | 
| 0000 | Add | Out = A + B| 
| 0001 | Sub |  Out = A - B | 
| 0010 | Logic NOT AND |Out = A NAND B | 
| 0011 | Logic OR|  Out = A OR B | 
| 0100 | Reverse Input | Out = !A|  
| 1000 | Arithmetic shift right | Out = (int)A>>1 | 
| 1001 | Logic shift right | Out = (unsigned int)A>>1| 
| 1010 | Logic shift left | Out = A<<1 | 
| 1100 | Rotate shift left | Rotate from MSB to LSB | 
| 1101 | Rotate shift right | Rotate from LSB to MSB | 
 
 ### REG
| Name |  Width  |  Action  | 
| ------- | ----- | ------ | 
| Αrd1 | IN (5 bits) | Address source register #1| 
| Ard2 | IN (5 bits) |  Address source register #2| 
| Awr | IN (5 bits) | Address destination register | 
| Dout1 | OUT (32 bits)|  Data  register #1 | 
| Dout2 | OUT (32 bit) | Data  register #2|  
| Din | IN (32 bits) | Data for writing | 
| WrEn | IN (1 bit) | Enable writing | 
| Clk | IN (1 bit) | Clock | 


## Datapath CHARIS processor
### R type
| Name |  Width  | 
| ------- | ----- | 
| Opcode | 6 bits | 
| rs | 5 bits |  
| rd | 5 bits|
| rt | 5 bits|  
| not-used | 5 bits | 
| func | 6 bits | 

### I type
| Name |  Width  | 
| ------- | ----- | 
| Opcode | 6 bits | 
| rs | 5 bits |  
| rd | 5 bits|
| Immediate | 16 bits|  

| Opcode |  Func  |  Comm  |  Action
| ------- | ----- | ------ | ---------- | 
| 100000 | 110000 | add | RF[rd]<-RF[rs]+RF[rt] | 
| 100000 | 110001 |  sub | RF[rd]<-RF[rs]-RF[rt]| 
| 100000 | 110010 | nand | RF[rd]<-RF[rs] NAND RF[rt] | 
| 100000 | 110100| not | RF[rd]<-!RF[rs] | 
| 100000 | 110011 | or |  RF[rd]<-RF[rs] OR RF[rt] | 
| 100000| 111000 | sra | RF[rd]<-RF[rs]>>1| 
| 100000| 111001 | sll | RF[rd]<-RF[rs]<<1 (logical) | 
| 100000 | 111010  | srl | RF[rd]<-RF[rs]>>1 (logical) | 
| 100000| 111100 | rol | RF[rd]<-Rotate left(RF[rs]) | 
| 100000| 111101 | ror | RF[rd]<-Rotate right(RF[rs]) | 
| 111000| - | li | RF[rd]<-SignExtend(Imm) | 
| 111001| - | lui | RF[rd]<-Imm<< 16 (zero fill) | 
| 110000| - | addi | RF[rd]<-RF[rs] + SignExtend(Imm) | 
| 110010| - | nandi | RF[rd]<-RF[rs] NAND ZeroFill(Imm) | 
| 110011| - | ori | RF[rd]<-RF[rs] | ZeroFill(Imm) | 
| 111111| - | b | PC<-PC + 4 + (SignExtend(Imm)<<2 |
| 000000| - | beq | Branch when equal sources | 
| 000001| - | bne | Branch when not equal sources| 
| 000011| - | lb | RF[rd]<- ZeroFill(31 downto 8) & MEM[RF[rs]+SignExtend(Imm)](7 downto 0) | 
| 000111| - | sb | MEM[RF[rs]+SignExtend(Imm)]<-ZeroFill(31 down to 8) & RF[rd][7 downto 0] | 
| 001111| - | lw | RF[rd]<- MEM[RF[rs]+SignExtend(Imm)] | 
| 011111| - | sw | MEM[RF[rs]+SignExtend(Imm)]<-RF[rd] | 


* MAIN MEMORY 2048x32
* IF STAGE
* DECODE
* ALU
* MEM



## Control Unit
* Connection of the stages.
* Design FSM for control signals.

## Advanced Custom commands
1. addi_MMX_byte
2. poly2 
3. rfld
4. rfst

| Opcode |  Func  |  Comm  |  Action
| ------- | ----- | ------ | ---------------------------------------------------- | 
| 110001 | - | MMX_addi_byte | RF[rd]<-RF[rs](31 downto 24) + immed(7 downto 0) &..& RF[rd]<-RF[rs](7 downto 0) + immed(7 downto 0) | 
| 100000 | 010000 |  poly2 | RF[rd]<- RF[rt]* RF[rt] * MEM[RF[rs]] + RF[rt]* MEM[RF[rs]+4]+ MEM[RF[rs]+8]| 
| 011100 | - | rfld | base_addr = RF[rs]+ SignExtend(Imm) for(i=1;i<32;i++) RF[i]<-MEM[base_addr+4*i]  | 
| 011110 | - | rfst | base_addr = RF[rs]+ SignExtend(Imm) for(i=1;i<32;i++) MEM[base_addr+4*i]<-RF[i] | 


# Pipeline proc
1. Mods on Datapath
   * new registers
   * solve stalls/forwarding
3. Modification on Control
   * solve hazards (data/control)


# How to run
Projects have been created in an older version of Xilinx. For incompatibility probles, create an new project and copy project.

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:37:11 02/26/2018 
-- Design Name: 
-- Module Name:    DATAPATH - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DATAPATH is
port(     
			 Clk : in  STD_LOGIC;
          Reset : in  STD_LOGIC;
			 Instr : out std_logic_vector(31 downto 0)			 
);
end DATAPATH;

architecture Behavioral of DATAPATH is
component modiule is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Outm : out  STD_LOGIC);
end component;
component IFSTAGE is
    Port ( PC_Immed : in  STD_LOGIC_VECTOR (31 downto 0);
           PC_sel : in  STD_LOGIC;
           PC_LdEn : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Instr : out  STD_LOGIC_VECTOR (10 downto 0));
end component;

component DECSTAGE is
    Port ( Instr : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_WrEn : in  STD_LOGIC;
           ALU_out : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_out : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_WrData_sel : in  STD_LOGIC;
			  Awr:in std_logic_vector(4 downto 0);
           RF_B_sel : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Immed : out  STD_LOGIC_VECTOR (31 downto 0);
           RF_A : out  STD_LOGIC_VECTOR (31 downto 0);
           RF_B : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALUSTAGE is
    Port ( RF_A : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_B : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_func : in  STD_LOGIC_VECTOR (3 downto 0);
           ALU_out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component RAM is  
    port (  
        clk:in std_logic;  
        inst_addr: in std_logic_vector(10 downto 0);  
        inst_dout: out std_logic_vector(31 downto 0);  
        data_we: in std_logic;
        data_addr: in std_logic_vector(10 downto 0);  
        data_din: in std_logic_vector(31 downto 0);  
        data_dout: out std_logic_vector(31 downto 0));  
end component;  

component Mux2to1_32bit is
	port(	Q0 : in  STD_LOGIC_VECTOR(31 downto 0);
         Q1 : in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC;
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

component Mux4to1_32bit is
port(		Q0 : in  STD_LOGIC_VECTOR(31 downto 0);
         Q1 : in  STD_LOGIC_VECTOR(31 downto 0);
			Q2 : in  STD_LOGIC_VECTOR(31 downto 0);
			Q3 : in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC_VECTOR(1 downto 0);
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

component Mux2to1_1bit is
    Port ( Q0 : in  STD_LOGIC;
           Q1 : in  STD_LOGIC;
           Sign : in  STD_LOGIC;
           Outm : out  STD_LOGIC);
end component;


component CONTROLLER is
port (Clk:in std_logic;
		Instr:in std_logic_vector(31 downto 0);
		Reset:in std_logic;
		RF_WrEn:out std_logic;
		RF_WrData_sel:out std_logic;
		ALU_func:out std_logic_vector(3 downto 0);
		RF_B_sel:out std_logic;
		MEM_WrEn:out std_logic
);
end component;

component DECEX is
	port(Clk:in std_logic;
	RF_A:in std_logic_vector(31 downto 0);
	RF_B:in std_logic_vector(31 downto 0);
	rs:in std_logic_vector(4 downto 0);
	rt:in std_logic_vector(4 downto 0);
	rd:in std_logic_vector(4 downto 0);
	Immed:in std_logic_vector(31 downto 0);
	RF_WrData_sel:in std_logic;
	RF_WrEn:in std_logic;
	ALU_func:in std_logic_vector(3 downto 0);
	MEM_WrEn:in std_logic;
	Opcode:in std_logic_vector(5 downto 0);
	RegMEM_WrEn:out std_logic;
	RegALU_func:out std_logic_vector(3 downto 0);
	RegRF_WrEn:out std_logic;
	RegRF_WrData_sel:out std_logic;
	RegA:out std_logic_vector(31 downto 0);
	RegB:out std_logic_vector(31 downto 0);
	RegImmed: out std_logic_vector(31 downto 0);
	RegRs:out std_logic_vector(4 downto 0);
	RegRt:out std_logic_vector(4 downto 0);
	RegOpcode:out std_logic_vector(5 downto 0);
	RegW:out std_logic_vector(4 downto 0));
end component;

component EXMEM is
port (Clk:in std_logic;
		ALUout:in std_logic_vector(31 downto 0);
		RF_B:in std_logic_vector(31 downto 0);
		rd:in std_logic_vector(4 downto 0);
		rs:in std_logic_vector(4 downto 0);
		rt:in std_logic_vector(4 downto 0);
		RF_WrData_sel:in std_logic;
		RF_WrEn:in std_logic;
		MEM_WrEn:in std_logic;
		RegMEM_WrEn:out std_logic;
		RegRF_WrEn:out std_logic;
		RegRF_WrData_sel:out std_logic;
		RegALU:out std_logic_vector(31 downto 0);
		RegB:out std_logic_vector(31 downto 0);
		RegRt:out std_logic_vector(4 downto 0);
		RegRs:out std_logic_vector(4 downto 0);
		RegW:out std_logic_vector(4 downto 0)
);
end component;

component MEMWB is
port (Clk:in std_logic;
		ALUout:in std_logic_vector(31 downto 0);
		rd:in std_logic_vector(4 downto 0);
		rs:in std_logic_vector(4 downto 0);
		rt:in std_logic_vector(4 downto 0);
		RF_WrData_sel:in std_logic;
		RF_WrEn:in std_logic;
		RegRF_WrData_sel:out std_logic;
		RegRF_WrEn:out std_logic;
		RegALU:out std_logic_vector(31 downto 0);
		RegRt:out std_logic_vector(4 downto 0);
		RegRs:out std_logic_vector(4 downto 0);
		RegW:out std_logic_vector(4 downto 0)
		
);
end component;

component ForwardModule is
port(	Opcode:in std_logic_vector(5 downto 0);
		decRS:in std_logic_vector(4 downto 0);
		decRT:in std_logic_vector(4 downto 0);
		exRD:in std_logic_vector(4 downto 0);
		wbRD:in std_logic_vector(4 downto 0);
		exWrEn:in std_logic;
		stall:in std_logic;
		wbWrEn:in std_logic;	
		FWCntrA:out std_logic_vector(1 downto 0);
		FWCntrB:out std_logic_vector(1 downto 0)
);
end component;


component Reg is
    Port ( Clk : in  STD_LOGIC;
           Data : in  STD_LOGIC_VECTOR (31 downto 0);
			  Rst: in std_logic;
           Dout : out  STD_LOGIC_VECTOR (31 downto 0);
           WE : in  STD_LOGIC);
end component;

component StallModule is
port (Clk:in std_logic;
		Reset:in std_logic;
		ifOpcode:in std_logic_vector(5 downto 0);
		decOpcode:in std_logic_vector(5 downto 0);
		ifRS:in std_logic_vector(4 downto 0);
		ifRT:in std_logic_vector(4 downto 0);
		decRD:in std_logic_vector(4 downto 0);
		Stallout:out std_logic;
		stallout2:out std_logic;
		PC_LdEn:out std_logic;
		IRen:out std_logic);
end component;

component Stalling is
port (
Clk:in std_logic;
		Reset:in std_logic;
		ifOpcode:in std_logic_vector(5 downto 0);
		decOpcode:in std_logic_vector(5 downto 0);
		ifRS:in std_logic_vector(4 downto 0);
		ifRT:in std_logic_vector(4 downto 0);
		decRD:in std_logic_vector(4 downto 0);
		PC_LdEn:out std_logic;
		StallOut:out std_logic);
end component;


signal imm,meminstrout,aluout,memoryout,rfaout,rfbout:std_logic_vector(31 downto 0);
signal instrout,aluaddrnew:std_logic_vector(10 downto 0);
signal memin1,memin2,memmuxout1,memmuxout2:std_logic_vector(31 downto 0);
signal sigrfbsel,sigrfwren,sigrfwrdatasel,sigmemwren:std_logic;
signal sigalufunc:std_logic_vector(3 downto 0);
signal memwrentoEX,rfwrentoEX,rfwrdataseltoEX:std_logic;
signal regAtoEX,regBtoEX,immedtoEX,fwmuxaout,fwmuxbout:std_logic_vector(31 downto 0);
signal regRStoEX,regRTtoEX,regRDtoEX:std_logic_vector(4 downto 0);
signal alufunctoEX:std_logic_vector(3 downto 0);
signal aluouttoMEM:std_logic_vector(31 downto 0);
signal memwrentoMEM,rfwrentoMEM,rfwrdataseltoMEM:std_logic;
signal regRStoMEM,regRTtoMEM,regRDtoMEM:std_logic_vector(4 downto 0);
signal regBtoMEM:std_logic_vector(31 downto 0);
signal rfwrentoWB,rfwrdataseltoWB:std_logic;
signal aluouttoWB:std_logic_vector(31 downto 0);
signal regRStoWB,regRTtoWB,regRDtoWB:std_logic_vector(4 downto 0);
signal irregisterout:std_logic_vector(31 downto 0);
signal optoEX:std_logic_vector(5 downto 0);
signal fwsignA,fwsignB:std_logic_vector(1 downto 0);
signal stallsig,stallsig2:std_logic;
signal temp,ensig:std_logic;
signal sigpclden,sigiren:std_logic;
signal stallregout:std_logic_vector(31 downto 0);
signal stallmuxout:std_logic_vector(31 downto 0);
signal exmuxout,exmuxout2,mmout:std_logic;
begin
temp<=not sigpclden;
IFS:IFSTAGE
PORT MAP( PC_Immed=>imm,
           PC_sel=>temp,
           PC_LdEn=>sigpclden,
           Reset=>Reset,
           Clk=>Clk,
           Instr=>instrout);
			  

CONTROL:CONTROLLER
port MAP (Clk=>Clk,
		Instr=>irregisterout,
		Reset=>Reset,
		RF_WrEn=>sigrfwren,
		RF_WrData_sel=>sigrfwrdatasel,
		ALU_func=>sigalufunc,
		RF_B_sel=>sigrfbsel,
		MEM_WrEn=>sigmemwren
);

IRREG: Reg
Port map( Clk=>Clk,
           Data=>meminstrout,
			  Rst=>'0',
           Dout=>irregisterout,
			  WE=>sigiren);

DECS:DECSTAGE
PORT MAP(Instr=>irregisterout,
         RF_WrEn=>rfwrentoWB,
         ALU_out=>aluouttoWB,
         MEM_out=>memoryout,
			Awr=>regRDtoWB,
         RF_WrData_sel=>rfwrdataseltoWB,
         RF_B_sel=>sigrfbsel,
         Clk=>Clk,
         Immed=>imm,
         RF_A=>rfaout,
         RF_B=>rfbout);
			
DEC_EX:DECEX
port map(Clk=>Clk,
	RF_A=>rfaout,
	RF_B=>rfbout,
	rs=>irregisterout(25 downto 21),
	rt=>irregisterout(15 downto 11),
	rd=>irregisterout(20 downto 16),
	Opcode=>irregisterout(31 downto 26),
	Immed=>imm,
	RF_WrData_sel=>sigrfwrdatasel,
	RF_WrEn=>sigrfwren,
	ALU_func=>sigalufunc,
	MEM_WrEn=>sigmemwren,
	RegMEM_WrEn=>memwrentoEX,
	RegALU_func=>alufunctoEX,
	RegRF_WrEn=>rfwrentoEX,
	RegRF_WrData_sel=>rfwrdataseltoEX,
	RegA=>regAtoEX,
	RegB=>regBtoEX,
	RegImmed=>immedtoEX,
	RegOpcode=>optoEX,
	RegRs=>regRStoEX,
	RegRt=>regRTtoEX,
	RegW=>regRDtoEX
);

FWMUXA: Mux4to1_32bit
port MAP(Q0=>regAtoEX,
         Q1=>aluouttoMEM,
			Q2=>aluouttoWB,
			Q3=>"00000000000000000000000000000000",
         Sign=>fwsignA,
         Outm=>fwmuxaout);
			
FW: ForwardModule
port map(Opcode=>optoEX,
		decRS=>regRStoEX,
		decRT=>regRTtoEX,
		exRD=>regRDtoMEM,
		wbRD=>regRDtoWB,
		stall=>stallsig,
		exWrEn=>rfwrentoMEM,
		wbWrEn=>rfwrentoWB,
		FWCntrA=>fwsignA,
		FWCntrB=>fwsignB
);


		

--StallU:Stalling
--port map (
--Clk=>Clk,
--		Reset=>Reset,
--		ifOpcode=>irregisterout(31 downto 26),
--		decOpcode=>optoEX,
--		ifRS=>irregisterout(25 downto 21),
--		ifRT=>irregisterout(15 downto 11),
--		decRD=>regRDtoEX,
--		StallOut=>stallsig,
--		PC_LdEn=>sigpclden);
--		





			
FWMUXB: Mux4to1_32bit
port MAP(Q0=>regBtoEX,
         Q1=>aluouttoMEM,
			Q2=>aluouttoWB,
			Q3=>immedtoEX,
         Sign=>fwsignB,
         Outm=>fwmuxbout);
			
ALUS:ALUSTAGE
PORT MAP(  RF_A=>fwmuxaout,
           RF_B=>fwmuxbout,
           ALU_func=>alufunctoEX,
           ALU_out=>aluout);
			  
EXMUX:Mux2to1_1bit
port map(Q0=>rfwrentoEX,
			Q1=>'0',
			Sign=>mmout,
			Outm=>exmuxout);

EXMUX2:Mux2to1_1bit
port map(Q0=>stallsig,
			Q1=>stallsig2,
			Sign=>mmout,
			Outm=>exmuxout2);
			
mm:modiule 
    Port map( A =>stallsig,
           B=>stallsig2 ,
           Outm =>mmout);

			  
EX_MEM:EXMEM
port MAP(Clk=>Clk,
		ALUout=>aluout,
		RF_B=>regBtoEX,
		rd=>regRDtoEX,
		rs=>regRStoEX,
		rt=>regRTtoEX,
		RF_WrData_sel=>rfwrdataseltoEX,
		RF_WrEn=>exmuxout,
		MEM_WrEn=>memwrentoEX,
		RegMEM_WrEn=>memwrentoMEM,
		RegRF_WrEn=>rfwrentoMEM,
		RegRF_WrData_sel=>rfwrdataseltoMEM,
		RegALU=>aluouttoMEM,
		RegB=>regBtoMEM,
		RegRt=>regRTtoMEM,
		RegRs=>regRStoMEM,
		RegW=>regRDtoMEM
);

aluaddrnew<=aluouttoMEM(12 downto 2) + "10000000000";



			  
St:StallModule 
port map(Clk=>Clk,
		Reset=>Reset,
		ifOpcode=>irregisterout(31 downto 26),
		decOpcode=>optoEX,
		ifRS=>irregisterout(25 downto 21),
		ifRT=>irregisterout(15 downto 11),
		decRD=>regRDtoEX,
		PC_LdEn=>sigpclden,
		Stallout=>stallsig,
		stallout2=>stallsig2,
		IRen=>sigiren);

			  
MEMORY:RAM
PORT MAP(clk=>Clk,
			inst_addr=>instrout,
			inst_dout=> meminstrout,
        data_we=>memwrentoMEM,
        data_addr=>aluaddrnew,
        data_din=>regBtoMEM, 
        data_dout=>memoryout 
);

MEM_WB:MEMWB
port map(Clk=>Clk,
		ALUout=>aluouttoMEM,
		rd=>regRDtoMEM,
		rs=>regRStoMEM,
		rt=>regRTtoMEM,
		RF_WrData_sel=>rfwrdataseltoMEM,
		RF_WrEn=>rfwrentoMEM,
		RegRF_WrData_sel=>rfwrdataseltoWB,
		RegRF_WrEn=>rfwrentoWB,
		RegALU=>aluouttoWB,
		RegRt=>regRTtoWB,
		RegRs=>regRStoWB,
		RegW=>regRDtoWB);




Instr<=meminstrout;
end Behavioral;


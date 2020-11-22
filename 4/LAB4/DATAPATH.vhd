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
			 PC_sel : in  STD_LOGIC;
          PC_LdEn : in  STD_LOGIC;
          Reset : in  STD_LOGIC;
			 RF_B_sel : in  STD_LOGIC;
          RF_WrData_sel : in  STD_LOGIC;
			 RF_WrData2_sel:in std_logic;
			 RF_WrEn : in  STD_LOGIC;
          ALU_Bin_sel : in  STD_LOGIC;
			 ALU_Ain_sel:in std_logic;
			 ALU_Cin_sel : in  STD_LOGIC;
			 ALU_Din_sel:in std_logic;
			 ALU_Ein_sel:in std_logic;
			 MUXCounter_sel:in std_logic;
			 COUNTER_sel:in std_logic;
			 MEM_Dout_sel:in std_logic;
			 MEM_Din_sel:in std_logic;
          ALU_func : in  STD_LOGIC_VECTOR (3 downto 0);
          MEM_WrEn : in  STD_LOGIC;
			 ALUReg_En:in std_logic;
			 POLY2_sel:in std_logic;
			 POLY2Reg_En:in std_logic;
			 ADDR_sel:in std_logic;
			 COUNT:out std_logic_vector(4 downto 0);
			 Zero: out STD_LOGIC;
			 Instr : out std_logic_vector(31 downto 0)			 
);
end DATAPATH;

architecture Behavioral of DATAPATH is

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
			  MUXCounter_sel:in std_logic;
			  COUNTER_sel:in std_logic;
			  COUNT:out std_logic_vector(4 downto 0);
           RF_B_sel : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Immed : out  STD_LOGIC_VECTOR (31 downto 0);
           RF_A : out  STD_LOGIC_VECTOR (31 downto 0);
           RF_B : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALUSTAGE is
    Port ( RF_A : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_B : in  STD_LOGIC_VECTOR (31 downto 0);
           Immed : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_Bin_sel : in  STD_LOGIC;
			  ALU_Ain_sel: in std_logic;
			  ALU_Cin_sel : in  STD_LOGIC;
			  ALU_Din_sel: in std_logic;
			  ALU_Ein_sel:in std_logic;
           ALU_func : in  STD_LOGIC_VECTOR (3 downto 0);
			  Zero:out std_logic;
           ALU_out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component MEMSTAGE is
    Port ( clk : in  STD_LOGIC;
           Mem_WrEn : in  STD_LOGIC;
           ALU_MEM_Addr : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
			  ALU_MEM_Addr_new:out std_logic_vector(10 downto 0);
           MEM_DataOut : out  STD_LOGIC_VECTOR (31 downto 0));
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

component Reg
    PORT(
         Clk : in  std_logic;
         Rst : in  std_logic;
         Data : in  std_logic_vector(31 downto 0);
         Dout : out  std_logic_vector(31 downto 0);
         WE : in std_logic
        );
end component;

component PC_Incrementor is
    Port ( PC_Input1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  PC_Input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           PC_Output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component MULModule is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           Outm : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Mux2to1_11bit is
    Port ( Q0 : in  STD_LOGIC_VECTOR (10 downto 0);
           Q1 : in  STD_LOGIC_VECTOR (10 downto 0);
           Sign : in  STD_LOGIC;
           Outm : out  STD_LOGIC_VECTOR (10 downto 0));
end component;

component nREG is
 Port ( Clk : in  STD_LOGIC;
           Data : in  STD_LOGIC_VECTOR (31 downto 0);
			  Rst: in std_logic;
           Dout : out  STD_LOGIC_VECTOR (31 downto 0);
           WE : in  STD_LOGIC);
end component;

signal imm,meminstrout,aluout,memoryout,rfaout,rfbout:std_logic_vector(31 downto 0);
signal instrout,temp,aluaddrnew,sigpoly2muxout:std_logic_vector(10 downto 0);
signal memin1,memin2,memmuxout1,memmuxout2:std_logic_vector(31 downto 0);
signal sigaluregout:std_logic_vector(31 downto 0);
signal sigrfldout,sigrfldmuxout:std_logic_vector(31 downto 0);
signal addrmuxout,mulout:std_logic_vector(31 downto 0);
signal sigpoly2nregout,sigpoly2regout,help,sigpoly2wr:std_logic_vector(31 downto 0);

begin
IFS:IFSTAGE
PORT MAP( PC_Immed=>imm,
           PC_sel=>PC_sel,
           PC_LdEn=>PC_LdEn,
           Reset=>Reset,
           Clk=>Clk,
           Instr=>instrout);
			  
aluaddrnew<=addrmuxout(12 downto 2) + "10000000000";		  ---gia to poly2 pernaei gia dieuthinsi to -RF[rt]
ADDRMUX:Mux2to1_32bit
port map(Q0=>sigaluregout,
			Q1=>rfaout,
			Sign=>ADDR_sel,
			Outm=>addrmuxout
);

help<="000000000000000000000" & sigpoly2muxout;		  
POLY2ADDRREG:REG
port map(Clk=>Clk,
         Rst=>Reset,
         Data=>help,
         Dout=>sigpoly2regout,
         WE=>POLY2Reg_En);

temp<=sigpoly2regout(10 downto 0)+1;			  	--auksanete gia na pame sto epomeno MEM[RF[rs+4]] klp
POLY2MUX:Mux2to1_11bit
port map(Q0=>aluaddrnew,
			Q1=>temp,
			Sign=>POLY2_sel,
			Outm=>sigpoly2muxout
);

MULTI:MULModule
port map(A=>sigaluregout(15 downto 0),
			B=>memmuxout2(15 downto 0),
			Outm=>mulout);
			
POLY2WRDATA:Mux2to1_32bit
port map(Q0=>sigaluregout,
			Q1=>sigpoly2nregout,
			Sign=>RF_WrData2_sel,
			Outm=>sigpoly2wr
);

POLY2nREG:nREG 
 Port map( Clk=>Clk,
           Data=>mulout,
			  Rst=>Reset,
           Dout=>sigpoly2nregout,
           WE=>POLY2Reg_En);

			  
MEMORY:RAM
PORT MAP(clk=>Clk,
			inst_addr=>instrout,
			inst_dout=> meminstrout,
        data_we=>MEM_WrEn,
        data_addr=>sigpoly2muxout,
        data_din=>memmuxout1, 
        data_dout=>memoryout 
);

memin1<="000000000000000000000000" & rfbout(7 downto 0);
MEMMUX1: Mux2to1_32bit
	port map(Q0=>rfbout,
				Q1=>memin1,
				Sign=>MEM_Din_sel,
				Outm=>memmuxout1);

memin2<="000000000000000000000000" & memoryout(7 downto 0);
MEMMUX2: Mux2to1_32bit
	port map(Q0=>memoryout,
				Q1=>memin2,
				Sign=>MEM_Dout_sel,
				Outm=>memmuxout2);
			  

DECS:DECSTAGE
PORT MAP(Instr=>meminstrout,
         RF_WrEn=>RF_WrEn,
         ALU_out=>sigpoly2wr,
         MEM_out=>memmuxout2,
         RF_WrData_sel=>RF_WrData_sel,
			COUNT=>COUNT,
			MUXCounter_sel=>MUXCounter_sel,
			COUNTER_sel=>COUNTER_sel,
         RF_B_sel=>RF_B_sel,
         Clk=>Clk,
         Immed=>imm,
         RF_A=>rfaout,
         RF_B=>rfbout);
			

ALUS:ALUSTAGE
PORT MAP(  RF_A=>rfaout,
           RF_B=>rfbout,
           Immed=>imm,
           ALU_Bin_sel=>ALU_Bin_sel,
			  ALU_Ain_sel=>ALU_Ain_sel,
			  ALU_Cin_sel=>ALU_Cin_sel,
			  ALU_Din_sel=>ALU_Din_sel,
			  ALU_Ein_sel=>ALU_Ein_sel,
           ALU_func=>ALU_func,
           ALU_out=>aluout,
           Zero=> Zero);
			  
ALUREG:REG
port map(Clk=>Clk,
         Rst=>Reset,
         Data=>sigrfldmuxout,
         Dout=>sigaluregout,
         WE=>ALUReg_En);

RFLDADDER:PC_Incrementor 
Port map( PC_Input1=>sigaluregout,
			  PC_Input2=>"00000000000000000000000000000100",
           PC_Output=>sigrfldout);
			  
RFLDMUX:Mux2to1_32bit
port map(Q0=>aluout,
			Q1=>sigrfldout,
			Sign=>MUXCounter_sel,
			Outm=>sigrfldmuxout
);
			
			
Instr<=meminstrout;
end Behavioral;


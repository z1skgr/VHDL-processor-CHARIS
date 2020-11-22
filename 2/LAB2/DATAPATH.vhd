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
			 RF_WrEn : in  STD_LOGIC;
          ALU_Bin_sel : in  STD_LOGIC;
          ALU_func : in  STD_LOGIC_VECTOR (3 downto 0);
          MEM_WrEn : in  STD_LOGIC;
			 Instr : out std_logic_vector(31 downto 0)			 
);
end DATAPATH;

architecture Behavioral of DATAPATH is

component Mux2to1_32bit is
	port(	Q0 : in  STD_LOGIC_VECTOR(31 downto 0);
         Q1 : in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC;
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
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
           ALU_func : in  STD_LOGIC_VECTOR (3 downto 0);
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



signal imm,meminstrout,aluout,memout,memoryout,rfaout,memmuxout,rfbout:std_logic_vector(31 downto 0);
signal iaddr,instrout,aluaddrnewout:std_logic_vector(10 downto 0);
begin
IFS:IFSTAGE
PORT MAP( PC_Immed=>imm,
           PC_sel=>PC_sel,
           PC_LdEn=>PC_LdEn,
           Reset=>Reset,
           Clk=>Clk,
           Instr=>instrout);
			  
MEMORY:RAM
PORT MAP(clk=>Clk,
			inst_addr=>instrout,
			inst_dout=> meminstrout,
        data_we=>MEM_WrEn,
        data_addr=>aluaddrnewout,
        data_din=>rfbout, 
        data_dout=>memoryout 
);
			  
MEMS:MEMSTAGE
PORT MAP(  clk=>Clk,
           Mem_WrEn=>MEM_WrEn,
           ALU_MEM_Addr=>aluout,
           MEM_DataIn=>rfbout,
			  ALU_MEM_Addr_new=>aluaddrnewout,
           MEM_DataOut=>memout);
			  

DECS:DECSTAGE
PORT MAP(Instr=>meminstrout,
         RF_WrEn=>RF_WrEn,
         ALU_out=>aluout,
         MEM_out=>memout,
         RF_WrData_sel=>RF_WrData_sel,
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
           ALU_func=>ALU_func,
           ALU_out=>aluout);

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:58:20 05/06/2018 
-- Design Name: 
-- Module Name:    DECEX - Behavioral 
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

entity DECEX is
	port(Clk:in std_logic;
	RF_A:in std_logic_vector(31 downto 0);
	RF_B:in std_logic_vector(31 downto 0);
	rs:in std_logic_vector(4 downto 0);
	rt:in std_logic_vector(4 downto 0);
	rd:in std_logic_vector(4 downto 0);
	Immed:in std_logic_vector(31 downto 0);
	Opcode:in std_logic_vector(5 downto 0);
	RF_WrData_sel:in std_logic;
	RF_WrEn:in std_logic;
	ALU_func:in std_logic_vector(3 downto 0);
	MEM_WrEn:in std_logic;
	RegMEM_WrEn:out std_logic;
	RegALU_func:out std_logic_vector(3 downto 0);
	RegRF_WrEn:out std_logic;
	RegRF_WrData_sel:out std_logic;
	RegA:out std_logic_vector(31 downto 0);
	RegB:out std_logic_vector(31 downto 0);
	RegImmed: out std_logic_vector(31 downto 0);
	RegOpcode:out std_logic_vector(5 downto 0);
	RegRs:out std_logic_vector(4 downto 0);
	RegRt:out std_logic_vector(4 downto 0);
	RegW:out std_logic_vector(4 downto 0));
end DECEX;

architecture Behavioral of DECEX is
component Reg is
    Port ( Clk : in  STD_LOGIC;
           Data : in  STD_LOGIC_VECTOR (31 downto 0);
			  Rst: in std_logic;
           Dout : out  STD_LOGIC_VECTOR (31 downto 0);
           WE : in  STD_LOGIC);
end component;
component Reg5Bit is
    Port ( Clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
			  Reset:in std_logic;
           Data : in  STD_LOGIC_vector(4 downto 0);
           Dout : out  STD_LOGIC_vector(4 downto 0));
end component;

component Reg1Bit is
    Port ( Clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
			  Reset:in std_logic;
           Data : in  STD_LOGIC;
           Dout : out  STD_LOGIC);
end component;

component Reg4bit is
port(Clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
			  Reset:in std_logic;
           Data : in  STD_LOGIC_vector(3 downto 0);
           Dout : out  STD_LOGIC_vector(3 downto 0));
end component;

component Reg6Bit is
port (Clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
			  Reset:in std_logic;
           Data : in  STD_LOGIC_vector(5 downto 0);
           Dout : out  STD_LOGIC_vector(5 downto 0));
end component;


begin
RegArd1: Reg
    Port map( Clk=>Clk,
           Data=>RF_A,
			  Rst=>'0',
           Dout=>RegA,
           WE=>'1');

RegArd2: Reg
    Port map( Clk=>Clk,
           Data=>RF_B,
			  Rst=>'0',
           Dout=>RegB,
           WE=>'1');
			  
RegImm: Reg
    Port map( Clk=>Clk,
           Data=>Immed,
			  Rst=>'0',
           Dout=>RegImmed,
           WE=>'1');

RegWr: Reg5Bit
    Port map( Clk=>Clk,
           Data=>rd,
			  Reset=>'0',
           Dout=>RegW,
           WE=>'1');
			  
RsReg: Reg5Bit
    Port map( Clk=>Clk,
           Data=>rs,
			  Reset=>'0',
           Dout=>RegRs,
           WE=>'1');

		  
RtReg: Reg5Bit
    Port map( Clk=>Clk,
           Data=>rt,
			  Reset=>'0',
           Dout=>RegRt,
           WE=>'1');
			  
RF_WrDataselReg:Reg1Bit
 Port  map(Clk=>Clk,
           WE=>'1',
			  Reset=>'0',
           Data=>RF_WrData_sel,
           Dout=>RegRF_WrData_sel);
			  
RF_WrEnReg:Reg1Bit
 Port  map(Clk=>Clk,
           WE=>'1',
			  Reset=>'0',
           Data=>RF_WrEn,
           Dout=>RegRF_WrEn);
			  
MEM_WrEnReg:Reg1Bit
port map(Clk=>Clk,
           WE=>'1',
			  Reset=>'0',
           Data=>MEM_WrEn,
           Dout=>RegMEM_WrEn);

ALUfcReg:Reg4Bit
port map(Clk => Clk,
  WE => '1',
  Reset => '0',
  Data=> ALU_func,
  Dout=> RegALU_func);

OpReg:Reg6Bit
port map(Clk=>Clk,
			WE=>'1',
			Reset=>'0',
			Data=>Opcode,
			Dout=>RegOpcode);

end Behavioral;


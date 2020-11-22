----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:07:12 05/06/2018 
-- Design Name: 
-- Module Name:    EXMEM - Behavioral 
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

entity EXMEM is
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
end EXMEM;

architecture Behavioral of EXMEM is
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
signal en:std_logic;
begin

RegALUOUT: Reg
    Port map( Clk=>Clk,
           Data=>ALUout,
			  Rst=>'0',
           Dout=>RegALU,
           WE=>'1');

RegRFB: Reg
    Port map( Clk=>Clk,
           Data=>RF_B,
			  Rst=>'0',
           Dout=>RegB,
           WE=>'1');
			  
RegWR: Reg5Bit
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
			  
RegisterRF_WrEn:Reg1Bit
port map(Clk=>Clk,
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
			  


end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:35:36 05/06/2018 
-- Design Name: 
-- Module Name:    BOXfsm - Behavioral 
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

entity REGDECbox is
port (Clk:in std_logic;
		RF_WrData_sel:in std_logic;
		RF_WrEn:in std_logic;
--		ALU_Ain_sel:in std_logic;
--		ALU_Bin_sel:in std_logic;
		ALU_func:in std_logic_vector(3 downto 0);
		MEM_WrEn:in std_logic;
--		MEM_Din_sel:in std_logic;
--		MEM_Dout_sel:in std_logic;
		RegRF_WrEn:out std_logic;
		RegRF_WrData_sel:out std_logic;
--		RegALU_Ain_sel:out std_logic;
--		RegALU_Bin_sel:out std_logic;
		RegALU_func:out std_logic_vector(3 downto 0);
		RegMEM_WrEn:out std_logic
--		RegMEM_Din_sel:out std_logic; 	
--		RegMEM_Dout_sel:out std_logic
);
end REGDECbox;

architecture Behavioral of REGDECbox is
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
begin
RegRF_WrData:Reg1Bit
port map(
	Clk => Clk,
	WE => '1',
	Reset => '0',
	Data => RF_WrData_sel,
	Dout => RegRF_WrData_sel);
	
RegRF_WEn:Reg1Bit
port map(
  Clk => Clk,
  WE => '1',
  Reset => '0',
  Data => RF_WrEn,
  Dout => RegRF_WrEn);
  
  
RegALUfc:Reg4Bit
port map(
  Clk => Clk,
  WE => '1',
  Reset => '0',
  Data=> ALU_func,
  Dout=> RegALU_func);
  
  
RegMEM_WEn:Reg1Bit
port map(
  Clk => Clk,
  WE => '1',
  Reset => '0',
  Data => MEM_WrEn,
  Dout =>RegMEM_WrEn);
  
  
  



end Behavioral;


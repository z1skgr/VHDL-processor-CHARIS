----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:25:25 05/06/2018 
-- Design Name: 
-- Module Name:    DECALUbox - Behavioral 
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

entity DECALUbox is
port (Clk:in std_logic;
		RF_WrData_sel:in std_logic;
		RF_WrEn:in std_logic;
		MEM_WrEn:in std_logic;
		MEM_Din_sel:in std_logic;
		MEM_Dout_sel:in std_logic;
		RegRF_WrData_sel:out std_logic;
		RegRF_WrEn:out std_logic;
		RegMEM_WrEn:out std_logic;
		RegMEM_Din_sel:out std_logic;
		RegMEM_Dout_sel:out std_logic
);
end DECALUbox;

architecture Behavioral of DECALUbox is

component Reg1Bit is
    Port ( Clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
			  Reset:in std_logic;
           Data : in  STD_LOGIC;
           Dout : out  STD_LOGIC);
end component;
begin

RegRF_WrDataALU:Reg1bit
port map(
  Clk => Clk,
  WE => '1',
  Reset => '0',
  Data => RF_WrData_sel,
  Dout => RegRF_WrData_sel);


RegRF_WrEnALU:Reg1bit
port map(
  Clk => Clk,
  WE => '1',
  Reset => '0',
  Data =>RF_WrEn,
  Dout=> RegRF_WrEn);
  
RegMEM_WrEnALU:Reg1bit
port map(
  Clk => Clk,
  WE => '1',
	Reset => '0',
  Data=> MEM_WrEn,
  Dout => RegMEM_WrEn);
  
  
RegMEM_Din_selALU:Reg1bit
port map(
  Clk => Clk,
  WE => '1',
  Reset => '0',
  Data=> MEM_Din_sel,
  Dout => RegMEM_Din_sel);

RegMEM_Dout_selALU:Reg1bit
port map(
  Clk => Clk,
  WE => '1',
  Reset => '0',
  Data => MEM_Dout_sel,
  Dout => RegMEM_Dout_sel);

end Behavioral;


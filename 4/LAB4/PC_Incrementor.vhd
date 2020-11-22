----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:43:51 02/21/2018 
-- Design Name: 
-- Module Name:    PC_Incrementor - Behavioral 
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

entity PC_Incrementor is
    Port ( PC_Input1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  PC_Input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           PC_Output : out  STD_LOGIC_VECTOR (31 downto 0));
end PC_Incrementor;

architecture Behavioral of PC_Incrementor is
begin
PC_Output<=PC_Input1+PC_Input2 ;

end Behavioral;


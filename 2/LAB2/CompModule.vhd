----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:35:09 02/17/2018 
-- Design Name: 
-- Module Name:    CompModule - Behavioral 
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

entity CompModule is
port ( ardr:in std_logic_vector(4 downto 0);
		 ardw:in std_logic_vector(4 downto 0);
		 WrEn:in std_logic;
		 CMOut:out std_logic);
end CompModule;

architecture Behavioral of CompModule is
signal temp:std_logic;
begin
temp<=((ardr(0)XNOR ardw(0)) AND (ardr(1)XNOR ardw(1)) AND (ardr(2)XNOR ardw(2)) AND (ardr(3)XNOR ardw(3)) AND (ardr(4)XNOR ardw(4)));
CMout<='0' when (ardr="00000" AND ardw="00000") else
			temp AND WrEn ;
		

end Behavioral;


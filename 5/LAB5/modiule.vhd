----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:22:30 05/09/2018 
-- Design Name: 
-- Module Name:    modiule - Behavioral 
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

entity modiule is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Outm : out  STD_LOGIC);
end modiule;

architecture Behavioral of modiule is

begin
Outm<='1' when A='1' and B='1' else
	  '0';

end Behavioral;


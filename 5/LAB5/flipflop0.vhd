----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:17:21 05/07/2018 
-- Design Name: 
-- Module Name:    flipflop0 - Behavioral 
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

entity flipflop0 is
port (Clk : in  STD_LOGIC;
           D : in  STD_LOGIC;
			  Rst:in std_logic;
           Q : out  STD_LOGIC);
end flipflop0;

architecture Behavioral of flipflop0 is
begin

process(Rst,Clk,D)
begin
	   IF (Rst='1') THEN Q<= '0';
		elsif (rising_edge(Clk)) THEN Q<=D;
		end if;
end process;

end Behavioral;



----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:07:37 02/26/2018 
-- Design Name: 
-- Module Name:    D_ff - Behavioral 
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

entity D_ff is
port(		  Clk : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (31 downto 0);
			  Rst:in std_logic;
           Q : out  STD_LOGIC_VECTOR (31 downto 0)
           );
end D_ff;

architecture Behavioral of D_ff is
begin
process(Rst,Clk,D)
begin
	   IF (Rst='1') THEN Q<= "00000000000000000000000000000000";
		elsif (rising_edge(CLK)) THEN Q<=D;
		end if;
end process;


end Behavioral;


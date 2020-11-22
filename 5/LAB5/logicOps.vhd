----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:51 02/15/2018 
-- Design Name: 
-- Module Name:    logicOps - Behavioral 
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

entity logicOps is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Op : in  STD_LOGIC_VECTOR (3 downto 0);
           Outp : out  STD_LOGIC_VECTOR (31 downto 0));
end logicOps;

architecture Behavioral of logicOps is
signal output:std_logic_vector (31 downto 0);
begin
	output<=A NAND B when Op="0010" else
			  A OR B	when Op="0011" else
			  NOT A when Op="0100" else
			  "00000000000000000000000000000000";
	Outp<=output;
	
		
end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:13 02/15/2018 
-- Design Name: 
-- Module Name:    shiftOps - Behavioral 
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

entity shiftOps is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           Op : in  STD_LOGIC_VECTOR (3 downto 0);
			  Zero:out std_logic;
           Outp : out  STD_LOGIC_VECTOR (31 downto 0));
end shiftOps;

architecture Behavioral of shiftOps is
signal output:std_logic_vector(31 downto 0);
begin	
ifp: process(Op,output,A)
begin
if Op="1000" then
		output<=(A(31) & A(31 downto 1));
elsif Op="1001" then 
		output<=('0' & A(31 downto 1));
elsif Op="1010" then
		output<=(A(30 downto 0) & '0');
elsif Op="1100" then
		output<=(A(30 downto 0) & A(31));
elsif Op="1101" then
		output<=(A(0) & A(31 downto 1));
else
		output<="00000000000000000000000000000000";
end if;
	end process;
Outp<=output;
	
	
end Behavioral;


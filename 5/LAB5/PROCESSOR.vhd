----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:26:20 03/21/2018 
-- Design Name: 
-- Module Name:    PROCESSOR - Behavioral 
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

entity PROCESSOR is
    Port ( Clk : in  STD_LOGIC;
			  Instr:out std_logic_vector(31 downto 0);
           Reset : in  STD_LOGIC
);
end PROCESSOR;

architecture Behavioral of PROCESSOR is


signal sigZero,sigPCsel,sigPClden,sigRFBsel,sigRFWrdatasel,sigrfwr,sigaluabinsel,sigalubbinsel,sigmemdoutsel,sigmemdinsel,sigmemwren:std_logic;
signal siginstr:std_logic_vector(31 downto 0);
signal sigalufunc:std_logic_vector(3 downto 0);
begin

Instr<=siginstr;

end Behavioral;


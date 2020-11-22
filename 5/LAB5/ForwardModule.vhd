----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:03:53 05/07/2018 
-- Design Name: 
-- Module Name:    ForwardModule - Behavioral 
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

entity ForwardModule is
port(	Opcode:in std_logic_vector(5 downto 0);
		decRS:in std_logic_vector(4 downto 0);
		decRT:in std_logic_vector(4 downto 0);
		exRD:in std_logic_vector(4 downto 0);
		wbRD:in std_logic_vector(4 downto 0);
		exWrEn:in std_logic;
		wbWrEn:in std_logic;	
		stall :in std_logic;
		FWCntrA:out std_logic_vector(1 downto 0);
		FWCntrB:out std_logic_vector(1 downto 0)
);
end ForwardModule;

architecture Behavioral of ForwardModule is

begin
FWCntrA<="01" when (exRD=decRS and exWrEn='1')  else
			"10" when (wbRD=decRS and wbWrEn='1')  else
			"00";

FWCntrB<="01" when (exRD=decRT and exWrEn='1' )    else
			"10" when (wbRD=decRT and wbWrEn='1')  else
			"11" when (Opcode="111000" or Opcode="011111" or Opcode="001111")  else
			"00";

end Behavioral;


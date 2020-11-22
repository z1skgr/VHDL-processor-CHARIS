----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:11:14 03/26/2018 
-- Design Name: 
-- Module Name:    ALU_Control - Behavioral 
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

entity ALU_Control is
Port ( func : in  STD_LOGIC_VECTOR (3 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (2 downto 0);
           ALUaction : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_Control;

architecture Behavioral of ALU_Control is

begin
ALUProcess: process (func,ALUop)
begin
	case ALUop is
		when "100" =>--R-type
			if (func = "1001") then
				ALUaction <= "1010";--sll
			elsif (func = "1010") then
				ALUaction <= "1001";--srl
			else ALUaction <= func;
			end if;
			
		when "010" =>--add
			ALUaction <= "0000";
			
		when"000" =>--and
			ALUaction <= "0010";
				
		when "001" =>--or
			ALUaction <= "0011";
			
		when"110" =>--sub
			ALUaction <= "0001";
		when others => 
			ALUaction <= "1111";
		end case;
	end process;


end Behavioral;


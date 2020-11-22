----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:10 02/21/2018 
-- Design Name: 
-- Module Name:    SEModule - Behavioral 
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
use ieee.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SEModule is
    Port ( SE_input : in  STD_LOGIC_VECTOR (15 downto 0);
			  Opcode:in std_logic_vector(5 downto 0);
           SE_output : out  STD_LOGIC_VECTOR (31 downto 0));
end SEModule;

architecture Behavioral of SEModule is
signal sout:std_logic_vector(31 downto 0);
begin

sezf:process(Opcode,SE_input,sout)
begin
if Opcode="111000" then
	sout(31 downto 16)<=(others =>SE_input(15));
	sout(15 downto 0)<=SE_input; --sign extention
elsif Opcode="111001" then 
	sout(31 downto 16)<=SE_input;
	sout(15 downto 0)<="0000000000000000";	--shift left 16 and zero fill
elsif Opcode="110000" then
	sout(31 downto 16)<=(others =>SE_input(15));
	sout(15 downto 0)<=SE_input;				--sign extention
elsif Opcode="110010" then
	sout(15 downto 0)<=SE_input;
	sout(31 downto 16)<="0000000000000000";	--zero filling
elsif Opcode="110011" then
	sout(15 downto 0)<=SE_input;
	sout(31 downto 16)<="0000000000000000"; --zero filling
elsif Opcode="111111" then
	sout(31 downto 18)<=(others =>SE_input(15)); --sign extention,shift left 2
	sout(17 downto 2)<=SE_input;
	sout(1 downto 0)<="00";										
elsif Opcode="000000" then
	sout(31 downto 18)<=(others =>SE_input(15));	--sign extention,shift left 2
	sout(17 downto 2)<=SE_input;
	sout(1 downto 0)<="00";
elsif Opcode="000001" then
	sout(31 downto 18)<=(others =>SE_input(15)); --sign extention,shift left 2
	sout(17 downto 2)<=SE_input;
	sout(1 downto 0)<="00";
elsif Opcode="000011" then
	sout(31 downto 16)<=(others =>SE_input(15)); --sign extention
	sout(15 downto 0)<=SE_input;
elsif Opcode="000111" then
	sout(31 downto 16)<=(others =>SE_input(15)); --sign extention
	sout(15 downto 0)<=SE_input;
elsif Opcode="001111" then
	sout(31 downto 16)<=(others =>SE_input(15)); --sign extention
	sout(15 downto 0)<=SE_input;
elsif Opcode="011111" then
	sout(31 downto 16)<=(others =>SE_input(15)); --sign extention
	sout(15 downto 0)<=SE_input;
elsif Opcode="011100" then
	sout(31 downto 16)<=(others =>SE_input(15)); --sign extention
	sout(15 downto 0)<=SE_input;
elsif Opcode="011110" then
	sout(31 downto 16)<=(others =>SE_input(15)); --sign extention
	sout(15 downto 0)<=SE_input;
elsif Opcode="110001" then
	sout(7 downto 0)<=SE_input(7 downto 0);
	sout(15 downto 8)<=SE_input(7 downto 0);
	sout(23 downto 16)<=SE_input(7 downto 0);
	sout(31 downto 24)<=SE_input(7 downto 0);
else
	sout<="00000000000000000000000000000000";
end if;

end process;

SE_output<=sout;

end Behavioral;


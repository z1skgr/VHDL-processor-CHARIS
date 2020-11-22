----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:35 02/17/2018 
-- Design Name: 
-- Module Name:    Decode5to32 - Behavioral 
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

entity Decode5to32 is
    Port ( DIn : in  STD_LOGIC_VECTOR (4 downto 0);
           DOut : out  STD_LOGIC_VECTOR (31 downto 0));
end Decode5to32;

architecture Behavioral of Decode5to32 is

begin
decode:process(DIn)
begin

case DIN is
when "00001"=>	Dout<="00000000000000000000000000000010";
when "00010"=>	Dout<="00000000000000000000000000000100";
when "00011"=>	Dout<="00000000000000000000000000001000";
when "00100"=>	Dout<="00000000000000000000000000010000";
when "00101"=>	Dout<="00000000000000000000000000100000";
when "00110"=>	Dout<="00000000000000000000000001000000";
when "00111"=>	Dout<="00000000000000000000000010000000";
when "01000"=>	Dout<="00000000000000000000000100000000";
when "01001"=>	Dout<="00000000000000000000001000000000";
when "01010"=>	Dout<="00000000000000000000010000000000";
when "01011"=>	Dout<="00000000000000000000100000000000";
when "01100"=>	Dout<="00000000000000000001000000000000";
when "01101"=>	Dout<="00000000000000000010000000000000";
when "01110"=>	Dout<="00000000000000000100000000000000";
when "01111"=>	Dout<="00000000000000001000000000000000";
when "10000"=> Dout<="00000000000000010000000000000000";
when "10001"=>	Dout<="00000000000000100000000000000000";
when "10010"=>	Dout<="00000000000001000000000000000000";
when "10011"=>	Dout<="00000000000010000000000000000000";
when "10100"=>	Dout<="00000000000100000000000000000000";
when "10101"=>	Dout<="00000000001000000000000000000000";
when "10110"=>	Dout<="00000000010000000000000000000000";
when "10111"=>	Dout<="00000000100000000000000000000000";
when "11000"=>	Dout<="00000001000000000000000000000000";
when "11001"=>	Dout<="00000010000000000000000000000000";
when "11010"=>	Dout<="00000100000000000000000000000000";
when "11011"=>	Dout<="00001000000000000000000000000000";
when "11100"=>	Dout<="00010000000000000000000000000000";
when "11101"=>	Dout<="00100000000000000000000000000000";
when "11110"=>	Dout<="01000000000000000000000000000000";
when "11111"=> Dout<="10000000000000000000000000000000";
when others => Dout<="00000000000000000000000000000000";


end case;

end process;

end Behavioral;


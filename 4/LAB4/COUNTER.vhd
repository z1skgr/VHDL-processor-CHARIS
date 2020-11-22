----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:05 04/03/2018 
-- Design Name: 
-- Module Name:    COUNTER - Behavioral 
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity COUNTER is
port (Clk : in  STD_LOGIC;
      Rst : in  STD_LOGIC;
		Enable:in std_logic;
		output:out std_logic_vector(4 downto 0)

);
end COUNTER;

architecture Behavioral of COUNTER is
signal outs: std_logic_vector(5 downto 0) := "000000";

begin
counter: process(Rst, Clk, outs,Enable)
begin

 If (Rst = '1') then outs<="000000";
 elsif (rising_edge(Clk) AND Enable='1') then 
			outs <=outs + 1;
 end if;
 if outs="100000" then outs<="000000";
 end if;
 end process;

output<=outs(4 downto 0);
end Behavioral;


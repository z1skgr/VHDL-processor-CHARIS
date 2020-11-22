----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:48:22 05/08/2018 
-- Design Name: 
-- Module Name:    Stalling - Behavioral 
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

entity Stalling is
port (
Clk:in std_logic;
		Reset:in std_logic;
		ifOpcode:in std_logic_vector(5 downto 0);
		decOpcode:in std_logic_vector(5 downto 0);
		ifRS:in std_logic_vector(4 downto 0);
		ifRT:in std_logic_vector(4 downto 0);
		decRD:in std_logic_vector(4 downto 0);
		PC_LdEn:out std_logic;
		StallOut:out std_logic);
end Stalling;

architecture Behavioral of Stalling is
type stateS is (zero,one,two);
signal stallsig:std_logic;
signal currentS,nextS:stateS;
begin
stallsig<='1' when (decOpcode="001111" AND ((decRD=ifRS) OR  (decRD=ifRT))) else
			 '0';
			 
StallOut<=stallsig;
			 

fsmproc:process(currentS)
begin

case currentS is
when one=>
	PC_LdEn<='0';
	nextS<=two;
when two=>
		PC_LdEn<='1';
		nextS<=zero;
when zero=>
		PC_LdEn<='1';
		nextS<=one;
end case;
end process;

fsm_sync:process(Clk,stallsig)
begin

if stallsig='0' then
	currentS<=zero;
elsif decOpcode="001111" AND ((decRD=ifRS) OR  (decRD=ifRT)) and rising_edge(Clk) then
	currentS<=nextS;
end if;
end process;

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:35:43 05/08/2018 
-- Design Name: 
-- Module Name:    StallModule - Behavioral 
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

entity StallModule is
port (Clk:in std_logic;
		Reset:in std_logic;
		ifOpcode:in std_logic_vector(5 downto 0);
		decOpcode:in std_logic_vector(5 downto 0);
		ifRS:in std_logic_vector(4 downto 0);
		ifRT:in std_logic_vector(4 downto 0);
		decRD:in std_logic_vector(4 downto 0);
		Stallout:out std_logic;
		stallout2:out std_logic;
		PC_LdEn:out std_logic;
		IRen:out std_logic);
end StallModule;

architecture Behavioral of StallModule is
type stateS is (one,two);
signal currentS,currentS2,nextS,nextS2:stateS;
begin

fsm_sync:process(Reset,Clk)
begin
if Reset='1' then
	currentS<=one;
	currentS2<=one;
elsif (Reset='0' AND rising_edge(Clk)) then
	currentS<=nextS;
	currentS2<=nextS2;
end if;
end process;

fsmproc:process(currentS,ifOpcode,decOpcode,decRD,ifRS,ifRT)
begin
case currentS is
when one=>
	PC_LdEn<='0';
	IRen<='0';
	Stallout<='1';
	nextS<=two;
when two=>
	if((decOpcode="001111" or ifOpcode="111000" )AND ((decRD=ifRS) OR  (decRD=ifRT))) then
		PC_LdEn<='0';
		IRen<='0';
		nextS<=one;
		Stallout<='1';
	else
		PC_LdEn<='1';
		IRen<='1';
		Stallout<='0';
		nextS<=two;
	end if;
end case;
end process;

fsmprocc:process(currentS2,decOpcode,ifOpcode,decRD,ifRS,decRD,ifRT)
begin
case currentS2 is
	when one=>
	stallout2<='0';
	nextS2<=two;
	when two=>
	if(decOpcode="001111" or ifOpcode="111000" )AND ((decRD=ifRS) OR  (decRD=ifRT))then
	stallout2<='1';
	end if;
	nextS2<=one;
	end case;
end process;
end Behavioral;


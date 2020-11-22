----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:52:11 02/17/2018 
-- Design Name: 
-- Module Name:    Mux4to1_32bit - Behavioral 
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

entity Mux4to1_32bit is
port(		Q0 : in  STD_LOGIC_VECTOR(31 downto 0);
         Q1 : in  STD_LOGIC_VECTOR(31 downto 0);
			Q2 : in  STD_LOGIC_VECTOR(31 downto 0);
			Q3 : in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC_VECTOR(1 downto 0);
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end Mux4to1_32bit;

architecture Behavioral of Mux4to1_32bit is
component Mux2to1_32bit is
	port(	Q0 : in  STD_LOGIC_VECTOR(31 downto 0);
         Q1 : in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC;
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end component;
signal mout1,mout2:std_logic_vector(31 downto 0);
begin
Mux0: Mux2to1_32bit
Port map(	Q0=>Q0,
				Q1=>Q1,
				Sign=>Sign(0),
				Outm=>mout1);
				
Mux1: Mux2to1_32bit
Port map(	Q0=>Q2,
				Q1=>Q3,
				Sign=>Sign(0),
				Outm=>mout2);

Mux2: Mux2to1_32bit
Port map(	Q0=>mout1,
				Q1=>mout2,
				Sign=>Sign(1),
				Outm=>Outm);				

end Behavioral;


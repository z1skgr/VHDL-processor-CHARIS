----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:00:43 02/17/2018 
-- Design Name: 
-- Module Name:    Mux8to1_32bit - Behavioral 
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

entity Mux8to1_32bit is
port(		Q0 : in  STD_LOGIC_VECTOR(31 downto 0);
         Q1 : in  STD_LOGIC_VECTOR(31 downto 0);
			Q2 : in  STD_LOGIC_VECTOR(31 downto 0);
			Q3 : in  STD_LOGIC_VECTOR(31 downto 0);
			Q4	: in  STD_LOGIC_VECTOR(31 downto 0);
			Q5	: in  STD_LOGIC_VECTOR(31 downto 0);
			Q6	: in  STD_LOGIC_VECTOR(31 downto 0);
			Q7	: in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC_VECTOR(2 downto 0);
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end Mux8to1_32bit;

architecture Behavioral of Mux8to1_32bit is
signal mout1,mout2:std_logic_vector(31 downto 0);
component Mux4to1_32bit
port(		Q0 : in  STD_LOGIC_VECTOR(31 downto 0);
         Q1 : in  STD_LOGIC_VECTOR(31 downto 0);
			Q2 : in  STD_LOGIC_VECTOR(31 downto 0);
			Q3 : in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC_VECTOR(1 downto 0);
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end component;
component Mux2to1_32bit
	port(	Q0 : in  STD_LOGIC_VECTOR(31 downto 0);
         Q1 : in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC;
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end component;
begin

Mux0 : Mux4to1_32bit
Port map( Q0=>Q0,
			 Q1=>Q1,
			 Q2=>Q2,
			 Q3=>Q3,
			 Sign=>Sign(1 downto 0),
			 Outm=>mout1);

Mux1 : Mux4to1_32bit
Port map( Q0=>Q4,
			 Q1=>Q5,
			 Q2=>Q6,
			 Q3=>Q7,
			 Sign=>Sign(1 downto 0),
			 Outm=>mout2);
			 
Mux2: Mux2to1_32bit
Port map(Q0=>mout1,
			Q1=>mout2,
			Sign=>Sign(2),
			Outm=>Outm);
			 

end Behavioral;


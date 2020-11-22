----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:02:00 04/09/2018 
-- Design Name: 
-- Module Name:    Mux2to1_11bit - Behavioral 
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

entity Mux2to1_11bit is
    Port ( Q0 : in  STD_LOGIC_VECTOR (10 downto 0);
           Q1 : in  STD_LOGIC_VECTOR (10 downto 0);
           Sign : in  STD_LOGIC;
           Outm : out  STD_LOGIC_VECTOR (10 downto 0));
end Mux2to1_11bit;

architecture Behavioral of Mux2to1_11bit is
component Mux2to1_1bit is
    Port ( Q0 : in  STD_LOGIC;
           Q1 : in  STD_LOGIC;
           Sign : in  STD_LOGIC;
           Outm : out  STD_LOGIC);
end component;
begin

Mux0: Mux2to1_1bit
Port Map( Q0=>Q0(0),
		    Q1=>Q1(0),
			 Sign=>Sign,
			 Outm=>Outm(0));
			 
Mux1: Mux2to1_1bit
Port Map( Q0=>Q0(1),
		    Q1=>Q1(1),
			 Sign=>Sign,
			 Outm=>Outm(1));

Mux2: Mux2to1_1bit
Port Map( Q0=>Q0(2),
		    Q1=>Q1(2),
			 Sign=>Sign,
			 Outm=>Outm(2));
			 
Mux3: Mux2to1_1bit
Port Map( Q0=>Q0(3),
		    Q1=>Q1(3),
			 Sign=>Sign,
			 Outm=>Outm(3));
			 
Mux4: Mux2to1_1bit
Port Map( Q0=>Q0(4),
		    Q1=>Q1(4),
			 Sign=>Sign,
			 Outm=>Outm(4));

Mux5: Mux2to1_1bit
Port Map( Q0=>Q0(5),
		    Q1=>Q1(5),
			 Sign=>Sign,
			 Outm=>Outm(5));
			 
Mux6: Mux2to1_1bit
Port Map( Q0=>Q0(6),
		    Q1=>Q1(6),
			 Sign=>Sign,
			 Outm=>Outm(6));

Mux7: Mux2to1_1bit
Port Map( Q0=>Q0(7),
		    Q1=>Q1(7),
			 Sign=>Sign,
			 Outm=>Outm(7));
			 
			 
Mux8: Mux2to1_1bit
Port Map( Q0=>Q0(8),
		    Q1=>Q1(8),
			 Sign=>Sign,
			 Outm=>Outm(8));		
			 
Mux9: Mux2to1_1bit
Port Map( Q0=>Q0(9),
		    Q1=>Q1(9),
			 Sign=>Sign,
			 Outm=>Outm(9));

Mux10: Mux2to1_1bit
Port Map( Q0=>Q0(10),
		    Q1=>Q1(10),
			 Sign=>Sign,
			 Outm=>Outm(10));	
			 


end Behavioral;


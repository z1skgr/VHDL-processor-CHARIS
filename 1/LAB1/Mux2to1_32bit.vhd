----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:31:58 02/17/2018 
-- Design Name: 
-- Module Name:    Mux_32bit - Behavioral 
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

entity Mux2to1_32bit is
	port(	Q0 : in  STD_LOGIC_VECTOR(31 downto 0);
         Q1 : in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC;
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end Mux2to1_32bit;

architecture Behavioral of Mux2to1_32bit is
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
			 
Mux11: Mux2to1_1bit
Port Map( Q0=>Q0(11),
		    Q1=>Q1(11),
			 Sign=>Sign,
			 Outm=>Outm(11));	
			 
Mux12: Mux2to1_1bit
Port Map( Q0=>Q0(12),
		    Q1=>Q1(12),
			 Sign=>Sign,
			 Outm=>Outm(12));

Mux13: Mux2to1_1bit
Port Map( Q0=>Q0(13),
		    Q1=>Q1(13),
			 Sign=>Sign,
			 Outm=>Outm(13));

Mux14: Mux2to1_1bit
Port Map( Q0=>Q0(14),
		    Q1=>Q1(14),
			 Sign=>Sign,
			 Outm=>Outm(14));				 

Mux15: Mux2to1_1bit
Port Map( Q0=>Q0(15),
		    Q1=>Q1(15),
			 Sign=>Sign,
			 Outm=>Outm(15));

Mux16: Mux2to1_1bit
Port Map( Q0=>Q0(16),
		    Q1=>Q1(16),
			 Sign=>Sign,
			 Outm=>Outm(16));

Mux17: Mux2to1_1bit
Port Map( Q0=>Q0(17),
		    Q1=>Q1(17),
			 Sign=>Sign,
			 Outm=>Outm(17));

Mux18: Mux2to1_1bit
Port Map( Q0=>Q0(18),
		    Q1=>Q1(18),
			 Sign=>Sign,
			 Outm=>Outm(18));

Mux19: Mux2to1_1bit
Port Map( Q0=>Q0(19),
		    Q1=>Q1(19),
			 Sign=>Sign,
			 Outm=>Outm(19));

Mux20: Mux2to1_1bit
Port Map( Q0=>Q0(20),
		    Q1=>Q1(20),
			 Sign=>Sign,
			 Outm=>Outm(20));	
			 
Mux21: Mux2to1_1bit
Port Map( Q0=>Q0(21),
		    Q1=>Q1(21),
			 Sign=>Sign,
			 Outm=>Outm(21));

Mux22: Mux2to1_1bit
Port Map( Q0=>Q0(22),
		    Q1=>Q1(22),
			 Sign=>Sign,
			 Outm=>Outm(22));

Mux23: Mux2to1_1bit
Port Map( Q0=>Q0(23),
		    Q1=>Q1(23),
			 Sign=>Sign,
			 Outm=>Outm(23));

Mux24: Mux2to1_1bit
Port Map( Q0=>Q0(24),
		    Q1=>Q1(24),
			 Sign=>Sign,
			 Outm=>Outm(24));	

Mux25: Mux2to1_1bit
Port Map( Q0=>Q0(25),
		    Q1=>Q1(25),
			 Sign=>Sign,
			 Outm=>Outm(25));
			 
Mux26: Mux2to1_1bit
Port Map( Q0=>Q0(26),
		    Q1=>Q1(26),
			 Sign=>Sign,
			 Outm=>Outm(26));

Mux27: Mux2to1_1bit
Port Map( Q0=>Q0(27),
		    Q1=>Q1(27),
			 Sign=>Sign,
			 Outm=>Outm(27));

Mux28: Mux2to1_1bit
Port Map( Q0=>Q0(28),
		    Q1=>Q1(28),
			 Sign=>Sign,
			 Outm=>Outm(28));	

Mux29: Mux2to1_1bit
Port Map( Q0=>Q0(29),
		    Q1=>Q1(29),
			 Sign=>Sign,
			 Outm=>Outm(29));

Mux30: Mux2to1_1bit
Port Map( Q0=>Q0(30),
		    Q1=>Q1(30),
			 Sign=>Sign,
			 Outm=>Outm(30));

Mux31: Mux2to1_1bit
Port Map( Q0=>Q0(31),
		    Q1=>Q1(31),
			 Sign=>Sign,
			 Outm=>Outm(31));				 
			 
end Behavioral;


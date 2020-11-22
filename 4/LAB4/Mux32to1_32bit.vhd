----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:44:03 02/17/2018 
-- Design Name: 
-- Module Name:    Mux32to1_32bit - Behavioral 
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

entity Mux32to1_32bit is
port(		Q0: in  STD_LOGIC_VECTOR(31 downto 0);
         Q1: in  STD_LOGIC_VECTOR(31 downto 0);
			Q2: in  STD_LOGIC_VECTOR(31 downto 0);
			Q3: in  STD_LOGIC_VECTOR(31 downto 0);
			Q4: in  STD_LOGIC_VECTOR(31 downto 0);
			Q5: in  STD_LOGIC_VECTOR(31 downto 0);
			Q6: in  STD_LOGIC_VECTOR(31 downto 0);
			Q7: in  STD_LOGIC_VECTOR(31 downto 0);		
         Q8: in  STD_LOGIC_VECTOR(31 downto 0);
			Q9: in  STD_LOGIC_VECTOR(31 downto 0);
			Q10: in  STD_LOGIC_VECTOR(31 downto 0);
			Q11: in  STD_LOGIC_VECTOR(31 downto 0);
			Q12: in  STD_LOGIC_VECTOR(31 downto 0);
			Q13: in  STD_LOGIC_VECTOR(31 downto 0);
			Q14: in  STD_LOGIC_VECTOR(31 downto 0);
			Q15: in  STD_LOGIC_VECTOR(31 downto 0);
			Q16: in  STD_LOGIC_VECTOR(31 downto 0);
         Q17: in  STD_LOGIC_VECTOR(31 downto 0);
			Q18: in  STD_LOGIC_VECTOR(31 downto 0);
			Q19: in  STD_LOGIC_VECTOR(31 downto 0);
			Q20: in  STD_LOGIC_VECTOR(31 downto 0);
			Q21: in  STD_LOGIC_VECTOR(31 downto 0);
			Q22: in  STD_LOGIC_VECTOR(31 downto 0);
			Q23: in  STD_LOGIC_VECTOR(31 downto 0);		
         Q24: in  STD_LOGIC_VECTOR(31 downto 0);
			Q25: in  STD_LOGIC_VECTOR(31 downto 0);
			Q26: in  STD_LOGIC_VECTOR(31 downto 0);
			Q27: in  STD_LOGIC_VECTOR(31 downto 0);
			Q28: in  STD_LOGIC_VECTOR(31 downto 0);
			Q29: in  STD_LOGIC_VECTOR(31 downto 0);
			Q30: in  STD_LOGIC_VECTOR(31 downto 0);
			Q31: in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC_VECTOR(4 downto 0);
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end Mux32to1_32bit;

architecture Behavioral of Mux32to1_32bit is
component Mux16to1_32bit
port(		Q0: in  STD_LOGIC_VECTOR(31 downto 0);
         Q1: in  STD_LOGIC_VECTOR(31 downto 0);
			Q2: in  STD_LOGIC_VECTOR(31 downto 0);
			Q3: in  STD_LOGIC_VECTOR(31 downto 0);
			Q4: in  STD_LOGIC_VECTOR(31 downto 0);
			Q5: in  STD_LOGIC_VECTOR(31 downto 0);
			Q6: in  STD_LOGIC_VECTOR(31 downto 0);
			Q7: in  STD_LOGIC_VECTOR(31 downto 0);		
         Q8: in  STD_LOGIC_VECTOR(31 downto 0);
			Q9: in  STD_LOGIC_VECTOR(31 downto 0);
			Q10: in  STD_LOGIC_VECTOR(31 downto 0);
			Q11: in  STD_LOGIC_VECTOR(31 downto 0);
			Q12: in  STD_LOGIC_VECTOR(31 downto 0);
			Q13: in  STD_LOGIC_VECTOR(31 downto 0);
			Q14: in  STD_LOGIC_VECTOR(31 downto 0);
			Q15: in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC_VECTOR(3 downto 0);
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

component Mux2to1_32bit is
    Port ( Q0 : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
           Q1 : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
           Sign : in  STD_LOGIC;
           Outm : out  STD_LOGIC_VECTOR(31 DOWNTO 0));
end component;
signal mout1,mout2:std_logic_vector(31 downto 0);
begin
Mux0: Mux16to1_32bit
Port map(Q0=>Q0,
         Q1=>Q1,
			Q2=>Q2,
			Q3=>Q3,
			Q4=>Q4,
			Q5=>Q5,
			Q6=>Q6,
			Q7=>Q7,
         Q8=>Q8,
			Q9=>Q9,
			Q10=>Q10, 
			Q11=>Q11,
			Q12=>Q12,
			Q13=>Q13,
			Q14=>Q14,
			Q15=>Q15,
         Sign=>Sign(3 downto 0),
         Outm=>mout1
);

Mux1: Mux16to1_32bit
Port map(Q0=>Q16,
         Q1=>Q17,
			Q2=>Q18,
			Q3=>Q19,
			Q4=>Q20,
			Q5=>Q21,
			Q6=>Q22,
			Q7=>Q23,
         Q8=>Q24,
			Q9=>Q25,
			Q10=>Q26, 
			Q11=>Q27,
			Q12=>Q28,
			Q13=>Q29,
			Q14=>Q30,
			Q15=>Q31,
         Sign=>Sign(3 downto 0),
         Outm=>mout2
);

Mux2: Mux2to1_32bit
port map(Q0=>mout1,
			Q1=>mout2,
			Sign=>Sign(4),
			Outm=>Outm
);
end Behavioral;


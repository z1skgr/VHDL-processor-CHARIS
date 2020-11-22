----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:16:44 02/18/2018 
-- Design Name: 
-- Module Name:    RF - Behavioral 
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
USE ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF is
    Port ( Ard1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Ard2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Awr : in  STD_LOGIC_VECTOR (4 downto 0);
           Dout1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Dout2 : out  STD_LOGIC_VECTOR (31 downto 0);
           Din : in  STD_LOGIC_VECTOR (31 downto 0);
           WrEn : in  STD_LOGIC;
           Clk : in  STD_LOGIC);
end RF;

architecture Behavioral of RF is
component Mux32to1_32bit is
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
end component;

component Decode5to32 is
    Port ( DIn : in  STD_LOGIC_VECTOR (4 downto 0);
           DOut : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component CompModule is
port ( ardr:in std_logic_vector(4 downto 0);
		 ardw:in std_logic_vector(4 downto 0);
		 CMOut:out std_logic);
end component;

component Reg is
    Port ( Clk : in  STD_LOGIC;
			  Rst:in std_logic;
           Data : in  STD_LOGIC_VECTOR (31 downto 0);
           Dout : out  STD_LOGIC_VECTOR (31 downto 0);
           WE : in  STD_LOGIC);
end component;

component Mux2to1_32bit is
	port(	Q0 : in  STD_LOGIC_VECTOR(31 downto 0);
         Q1 : in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC;
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

signal decodeout,we,mout1,mout2:std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal cout1,cout2:std_logic;
type array2D is array (0 to 31) of std_logic_vector(31 downto 0);
signal  regout : array2D:= (others=> (others=>'0'));
begin


Decoder: Decode5to32
PORT MAP(  DIn=> Awr,
           DOut=>decodeout
			); 

Reg0 : Reg
Port map( Clk=>Clk,
          Data=>"00000000000000000000000000000000",
          Dout=>regout(0),
			 Rst=>'0',
          WE=>'1'
);


GEN:for i in 30 downto 0 generate
BEGIN
we(i)<=decodeout(i) AND WrEn;
Regs:Reg
port map(Clk=>Clk,
			Data=>Din,
			Dout=>regout(i+1),
			Rst=>'0',
			WE=>we(i+1)
);
end generate GEN;

Mux1_32to1: Mux32to1_32bit 
port map(Q0=>regout(0),
         Q1=>regout(1),
			Q2=>regout(2),
			Q3=>regout(3),
			Q4=>regout(4),
			Q5=>regout(5),
			Q6=>regout(6),
			Q7=>regout(7),
         Q8=>regout(8),
			Q9=>regout(9),
			Q10=>regout(10),
			Q11=>regout(11),
			Q12=>regout(12),
			Q13=>regout(13),
			Q14=>regout(14),
			Q15=>regout(15),
			Q16=>regout(16),
         Q17=>regout(17),
			Q18=>regout(18),
			Q19=>regout(19),
			Q20=>regout(20),
			Q21=>regout(21),
			Q22=>regout(22),
			Q23=>regout(23),		
         Q24=>regout(24),
			Q25=>regout(25),
			Q26=>regout(26),
			Q27=>regout(27),
			Q28=>regout(28),
			Q29=>regout(29),
			Q30=>regout(30),
			Q31=>regout(31),
         Sign=>Ard1,
         Outm=>mout1
			);
			
Mux2_32to1: Mux32to1_32bit 
port map(Q0=>regout(0),
         Q1=>regout(1),
			Q2=>regout(2),
			Q3=>regout(3),
			Q4=>regout(4),
			Q5=>regout(5),
			Q6=>regout(6),
			Q7=>regout(7),
         Q8=>regout(8),
			Q9=>regout(9),
			Q10=>regout(10),
			Q11=>regout(11),
			Q12=>regout(12),
			Q13=>regout(13),
			Q14=>regout(14),
			Q15=>regout(15),
			Q16=>regout(16),
         Q17=>regout(17),
			Q18=>regout(18),
			Q19=>regout(19),
			Q20=>regout(20),
			Q21=>regout(21),
			Q22=>regout(22),
			Q23=>regout(23),		
         Q24=>regout(24),
			Q25=>regout(25),
			Q26=>regout(26),
			Q27=>regout(27),
			Q28=>regout(28),
			Q29=>regout(29),
			Q30=>regout(30),
			Q31=>regout(31),
         Sign=>Ard2,
         Outm=>mout2
			);
			
Mux1_2to1: Mux2to1_32bit 
port map(Q0=>mout1,
         Q1=>Din,
         Sign=>cout1,
         Outm=>Dout1
);

Mux2_2to1: Mux2to1_32bit 
port map(Q0=>mout2,
         Q1=>Din, 
         Sign=>cout2,
         Outm=>Dout2
);

CM1: CompModule
port map(ardr=>Ard1,
			ardw=>Awr,
			CMOut=>cout1
);

CM2: CompModule
port map(ardr=>Ard2,
			ardw=>Awr,
			CMOut=>cout2
);



end Behavioral;


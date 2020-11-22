----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:16:24 05/07/2018 
-- Design Name: 
-- Module Name:    Reg1bit - Behavioral 
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
entity Reg1Bit is
    Port ( Clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
			  Reset:in std_logic;
           Data : in  STD_LOGIC;
           Dout : out  STD_LOGIC);
end Reg1Bit;

architecture Behavioral of Reg1Bit is

COMPONENT flipflop0
port(
			  Clk : in  STD_LOGIC;
           D : in  STD_LOGIC;
			  Rst:in std_logic;
           Q : out  STD_LOGIC);
END COMPONENT;

COMPONENT Mux2to1_1bit
port
(Q0:in std_logic;
Q1:in std_logic;
Sign: in std_logic;
Outm : out std_logic);
END COMPONENT;

signal mout:std_logic;
signal fout:std_logic;
begin

mux0:Mux2to1_1bit
port map(
   Q0 => fout,
	Q1 => Data,
	Sign=> WE,
	Outm => mout);
	
ff: flipflop0
port map (
   Clk=>Clk,
	Rst =>Reset,
	D=>mout,
	Q=>fout);
Dout<=fout;
	

end Behavioral;


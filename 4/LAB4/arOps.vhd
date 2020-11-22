----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:58:22 02/15/2018 
-- Design Name: 
-- Module Name:    arOps - Behavioral 
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

entity arOps is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Op : in  STD_LOGIC_VECTOR (3 downto 0);
           Outp : out STD_LOGIC_VECTOR (31 downto 0);
           Cout : out  STD_LOGIC;
           Ovf : out  STD_LOGIC);
end arOps;

architecture Behavioral of arOps is
signal output:std_logic_vector(31 downto 0);
signal ovfput:std_logic;
signal coutput:std_logic;
signal temp:std_logic;
signal ctemp:std_logic_vector(32 downto 0);
begin
-----------------------------------------------
output<=A+B when Op="0000" else
		  A-B when Op="0001" else
		  (A(31 downto 25)+B(31 downto 25))&(A(24 downto 16)+B(24 downto 16))&(A(15 downto 8)+B(15 downto 8))&(A(7 downto 0)+B(7 downto 0)) when Op="1110" else
		  A(15 downto 0)*B(15 downto 0) when Op="1011" else
		  "00000000000000000000000000000000";
			
Outp<=output;				
-----------------------------------


-----------------------------------

ovp:process(A,B,ovfput,Op,output)
begin
ovfput<='0';
if (Op="0000" OR Op="0001" or Op="1110" or Op="1011")then
	temp<=A(31) XNOR B(31);
	if(temp='1') then
	ovfput<=(A(31) xor output(31));
	else
	ovfput<='0';
	end if;
end if;
end process;
Ovf<=ovfput;

------------------------------------------
cvp:process(A,B,coutput,Op,ctemp)
begin
coutput<='0';
if (Op="0000" or Op="1110" or Op="1011")then
	ctemp<='0' & A+B;
	coutput<=ctemp(32);
elsif (Op="0001") then
	ctemp<='1' & A-B;
	coutput<=ctemp(32);
else
	coutput<='0';
end if;
end process;
Cout<=coutput;

	
end Behavioral;




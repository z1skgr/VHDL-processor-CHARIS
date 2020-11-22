----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:19:33 02/21/2018 
-- Design Name: 
-- Module Name:    IFSTAGE - Behavioral 
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

entity IFSTAGE is
    Port ( PC_Immed : in  STD_LOGIC_VECTOR (31 downto 0);
           PC_sel : in  STD_LOGIC;
           PC_LdEn : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Instr : out  STD_LOGIC_VECTOR (10 downto 0));
end IFSTAGE;

architecture Behavioral of IFSTAGE is
component PC_Incrementor is
    Port ( PC_Input1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  PC_Input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           PC_Output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
component PC is
    Port ( PC_LdEn : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           PcIn : in  STD_LOGIC_VECTOR (31 downto 0);
           PcOut : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Mux2to1_32bit is
	port(	Q0 : in  STD_LOGIC_VECTOR(31 downto 0);
         Q1 : in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC;
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end component;



signal mout,pcout,pcincrout,pcaddout:std_logic_vector(31 downto 0);
begin

Adder1 : PC_Incrementor
Port map (PC_Input1=>PC_Immed,
			  PC_Input2=>pcincrout,
           PC_Output=>pcaddout
);

Adder2 : PC_Incrementor
Port map(PC_Input1=>pcout,
			PC_Input2=>"00000000000000000000000000000100",
			PC_Output=>pcincrout
			);

Mux:Mux2to1_32bit
port map(Q0=>pcincrout,
         Q1=>pcaddout,
         Sign=>PC_Sel,
         Outm=>mout
);

regPC: PC
port map(
			PC_LdEn=>PC_LdEn,
         Clk=>Clk,
         Rst=>Reset,
         PcIn=>mout,
         PcOut=>pcout
);	

Instr<=pcout(12 downto 2);

end Behavioral;


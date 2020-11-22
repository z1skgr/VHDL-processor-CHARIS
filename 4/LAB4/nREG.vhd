----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:14:02 04/10/2018 
-- Design Name: 
-- Module Name:    nREG - Behavioral 
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

entity nREG is
 Port ( Clk : in  STD_LOGIC;
           Data : in  STD_LOGIC_VECTOR (31 downto 0);
			  Rst: in std_logic;
           Dout : out  STD_LOGIC_VECTOR (31 downto 0);
           WE : in  STD_LOGIC);
end nREG;

architecture Behavioral of nREG is

component D_ff is
port(		  Clk : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (31 downto 0);
			  Rst:in std_logic;
           Q : out  STD_LOGIC_VECTOR (31 downto 0)
           );
end component;
component Mux2to1_32bit is
	port(	Q0 : in  STD_LOGIC_VECTOR(31 downto 0);
         Q1 : in  STD_LOGIC_VECTOR(31 downto 0);
         Sign : in  STD_LOGIC;
         Outm : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

Signal temp,mout,fout:std_logic_vector(31 downto 0):="00000000000000000000000000000000";
begin
temp<=fout+Data;
muxd: Mux2to1_32bit
port map(Q0=>fout,
			Q1=>temp,
			Sign=>WE,
			Outm=>mout
);

Dflop:D_ff
port map(Clk=>Clk,
			Rst=>Rst,
			D=>mout,
			Q=>fout
);
Dout<=fout;

end Behavioral;


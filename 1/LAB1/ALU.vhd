----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:59:18 02/15/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Op : in  STD_LOGIC_VECTOR (3 downto 0);
           Outp : out  STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Ovf : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
component logicOps
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Op : in  STD_LOGIC_VECTOR (3 downto 0);
           Outp : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
component shiftOps 
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           Op : in  STD_LOGIC_VECTOR (3 downto 0);
           Outp : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
component arOps
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Op : in  STD_LOGIC_VECTOR (3 downto 0);
           Outp : out STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Ovf : out  STD_LOGIC);
end component;
signal lout,sout,aout:std_logic_vector(31 downto 0);
begin


LOps: logicOps PORT MAP(
		A => A,
		B => B,
		Op => Op,
		Outp => lout
	);
	
AOps: arOps PORT MAP(
		A=> A,
		B=> B,
		Op=> Op,
		Outp=> aout,
		Zero=> Zero,
		Cout=> Cout,
		Ovf=> Ovf
		);

SOps: shiftOps PORT MAP(
		A=> A,
		Op=> Op,
		Outp=> sout
		);
		
aluput:process(Op,aout,lout,sout)
begin
case Op is
when "0000"=>Outp<=aout;
when "0001"=>Outp<=aout;
when "0010" =>Outp<=lout;
when "0011" =>Outp<=lout;
when "0100" =>Outp<=lout;
when "1000" =>Outp<=sout;
when	"1001"=>Outp<=sout;
when "1010" =>Outp<=sout;
when "1100" => Outp<=sout;
when "1101" => Outp<=sout;
when others=> Outp<="00000000000000000000000000000000";
end case;
end process;

end Behavioral;

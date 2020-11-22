----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:27:46 05/07/2018 
-- Design Name: 
-- Module Name:    Reg4bit - Behavioral 
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

entity Reg4Bit is
port(Clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
			  Reset:in std_logic;
           Data : in  STD_LOGIC_vector(3 downto 0);
           Dout : out  STD_LOGIC_vector(3 downto 0));
end Reg4Bit;

architecture Behavioral of Reg4Bit is
component Reg1Bit is
    Port ( Clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
			  Reset:in std_logic;
           Data : in  STD_LOGIC;
           Dout : out  STD_LOGIC);
end component;
begin
Reg1:Reg1Bit
port map(Clk=>Clk,
           WE=>WE,
			  Reset=>Reset,
           Data=>Data(0),
           Dout=>Dout(0)
);

Reg2:Reg1Bit
port map(Clk=>Clk,
           WE=>WE,
			  Reset=>Reset,
           Data=>Data(1),
           Dout=>Dout(1)
);

Reg3:Reg1Bit
port map(Clk=>Clk,
           WE=>WE,
			  Reset=>Reset,
           Data=>Data(2),
           Dout=>Dout(2)
);

Reg4:Reg1Bit
port map(Clk=>Clk,
           WE=>WE,
			  Reset=>Reset,
           Data=>Data(3),
           Dout=>Dout(3)
);

end Behavioral;


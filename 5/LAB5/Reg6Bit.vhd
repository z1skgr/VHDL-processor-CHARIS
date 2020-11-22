----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:54:27 05/07/2018 
-- Design Name: 
-- Module Name:    Reg6Bit - Behavioral 
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

entity Reg6Bit is
port (Clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
			  Reset:in std_logic;
           Data : in  STD_LOGIC_vector(5 downto 0);
           Dout : out  STD_LOGIC_vector(5 downto 0));
end Reg6Bit;

architecture Behavioral of Reg6Bit is
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

Reg5:Reg1Bit
port map(Clk=>Clk,
           WE=>WE,
			  Reset=>Reset,
           Data=>Data(4),
           Dout=>Dout(4)
);

Reg6:Reg1Bit
port map(Clk=>Clk,
           WE=>WE,
			  Reset=>Reset,
           Data=>Data(5),
           Dout=>Dout(5)
);

end Behavioral;


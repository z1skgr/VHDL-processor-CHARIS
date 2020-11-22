----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:14:01 02/17/2018 
-- Design Name: 
-- Module Name:    Mux2to1_1bit - Behavioral 
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

entity Mux2to1_1bit is
    Port ( Q0 : in  STD_LOGIC;
           Q1 : in  STD_LOGIC;
           Sign : in  STD_LOGIC;
           Outm : out  STD_LOGIC);
end Mux2to1_1bit;

architecture Behavioral of Mux2to1_1bit is
signal nsign:std_logic;
begin
nsign<=not Sign;
Outm<=(Q0 AND nsign) OR (Q1 AND Sign);
end Behavioral;




----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:23:01 03/26/2018 
-- Design Name: 
-- Module Name:    CONTROLLER - Behavioral 
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

entity CONTROLLER is

port (
		Clk:in std_logic;
		Instr:in std_logic_vector(31 downto 0);
		Reset:in std_logic;
		RF_WrEn:out std_logic;
		RF_WrData_sel:out std_logic;
		ALU_func:out std_logic_vector(3 downto 0);
		RF_B_sel:out std_logic;
		MEM_WrEn:out std_logic
);
end CONTROLLER;

architecture Behavioral of CONTROLLER is
component FSMmodule is
	 Port (Clk:in std_logic;
		Instr:in std_logic_vector(31 downto 0);
		Reset:in std_logic;
		RF_WrEn:out std_logic;
		RF_WrData_sel:out std_logic;
		RF_B_sel:out std_logic;
		ALU_func:out std_logic_vector(3 downto 0);
		MEM_WrEn:out std_logic	);
end component;

begin

FSM:FSMmodule
port map(Clk=>Clk,
		Instr => Instr,
		Reset =>Reset,
		RF_WrEn  =>RF_WrEn,
		RF_WrData_sel=>RF_WrData_sel,
		RF_B_sel  => RF_B_sel,
		ALU_func=>ALU_func,
		MEM_WrEn =>MEM_WrEn
);

end Behavioral;


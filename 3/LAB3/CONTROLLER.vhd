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
port (Clk:in std_logic;
		Instr:in std_logic_vector(31 downto 0);
		Zero:in std_logic;
		Reset:in std_logic;
		PC_Sel:out std_logic;
		PC_LdEn:out std_logic;
		RF_WrEn:out std_logic;
		RF_WrData_sel:out std_logic;
		ALU_Ain_sel:out std_logic;
		ALU_Bin_sel:out std_logic;
		ALU_func:out std_logic_vector(3 downto 0);
		MEM_Dout_sel:out std_logic;
		MEM_Din_sel:out std_logic;
		RF_B_sel:out std_logic;
		MEM_WrEn:out std_logic
);
end CONTROLLER;

architecture Behavioral of CONTROLLER is
component ALU_Control is
Port ( func : in  STD_LOGIC_VECTOR (3 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (2 downto 0);
           ALUaction : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
component CONTROL is
port( Clk:in std_logic;
		Instr:in std_logic_vector(31 downto 0);
		Zero:in std_logic;
		Reset: in std_logic;
		PC_Sel:out std_logic;
		PC_LdEn:out std_logic;
		RF_WrEn:out std_logic;
		RF_WrData_sel:out std_logic;
		RF_B_sel:out std_logic;
		ALU_Bin_Sel:out std_logic;
		ALU_Ain_Sel:out std_logic;
		ALUop:out std_logic_vector(2 downto 0);
		MEM_Dout_sel:out std_logic;
		MEM_Din_sel:out std_logic;
		MEM_WrEn:out std_logic);
end component;
signal sigaluop:std_logic_vector(2 downto 0);
begin
ALUC:ALU_Control
port map(func=>Instr(3 downto 0),
           ALUop=>sigaluop,
           ALUaction=>ALU_func);
			  
FSM:CONTROL
port map(Clk=>Clk,
		Instr => Instr,
		Zero  => Zero,
		Reset =>Reset,
		PC_Sel =>PC_sel,
		PC_LdEn  =>PC_LdEn,
		RF_WrEn  =>RF_WrEn,
		RF_WrData_sel=>RF_WrData_sel,
		RF_B_sel  => RF_B_sel,
		ALU_Bin_Sel => ALU_Bin_sel,
		ALU_Ain_Sel => ALU_Ain_sel,
		ALUop=>sigaluop,
		MEM_Dout_sel=>MEM_Dout_sel,
		MEM_Din_sel =>MEM_Din_sel,
		MEM_WrEn =>MEM_WrEn
);

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:26:20 03/21/2018 
-- Design Name: 
-- Module Name:    PROCESSOR - Behavioral 
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

entity PROCESSOR is
    Port ( Clk : in  STD_LOGIC;
			  Instr:out std_logic_vector(31 downto 0);
           Reset : in  STD_LOGIC
);
end PROCESSOR;

architecture Behavioral of PROCESSOR is
component CONTROLLER is
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
		ALU_func:out std_logic_vector(3 downto 0);
		MEM_Dout_sel:out std_logic;
		MEM_Din_sel:out std_logic;
		MEM_WrEn:out std_logic		
);
end component;
component DATAPATH is
port(     
			 Clk : in  STD_LOGIC;
			 PC_sel : in  STD_LOGIC;
          PC_LdEn : in  STD_LOGIC;
          Reset : in  STD_LOGIC;
			 RF_B_sel : in  STD_LOGIC;
          RF_WrData_sel : in  STD_LOGIC;
			 RF_WrEn : in  STD_LOGIC;
          ALU_Bin_sel : in  STD_LOGIC;
			 ALU_Ain_sel:in std_logic;
			 MEM_Dout_sel:in std_logic;
			 MEM_Din_sel:in std_logic;
          ALU_func : in  STD_LOGIC_VECTOR (3 downto 0);
          MEM_WrEn : in  STD_LOGIC;
			 Zero: out STD_LOGIC;
			 Instr : out std_logic_vector(31 downto 0)			 
);
end component;
signal sigZero,sigPCsel,sigPClden,sigRFBsel,sigRFWrdatasel,sigrfwr,sigaluabinsel,sigalubbinsel,sigmemdoutsel,sigmemdinsel,sigmemwren:std_logic;
signal siginstr:std_logic_vector(31 downto 0);
signal sigalufunc:std_logic_vector(3 downto 0);
begin
CNT:CONTROLLER
PORT MAP( Clk=>Clk,
		Instr => siginstr,
		Zero  => sigZero,
		Reset =>Reset,
		PC_Sel =>sigPCsel,
		PC_LdEn  =>sigPClden,
		RF_WrEn  =>sigrfwr,
		RF_WrData_sel=>sigRFWrdatasel,
		RF_B_sel  => sigRFBsel,
		ALU_Bin_Sel => sigalubbinsel,
		ALU_Ain_Sel => sigaluabinsel,
		ALU_func => sigalufunc,
		MEM_Dout_sel=>sigmemdoutsel,
		MEM_Din_sel =>sigmemdinsel,
		MEM_WrEn =>sigmemwren
);

DP:DATAPATH
PORT MAP(Clk=>Clk,
		Instr => siginstr,
		Zero  => sigZero,
		Reset =>Reset,
		PC_Sel =>sigPCsel,
		PC_LdEn  =>sigPClden,
		RF_WrEn  =>sigrfwr,
		RF_WrData_sel=>sigRFWrdatasel,
		RF_B_sel  => sigRFBsel,
		ALU_Bin_Sel => sigalubbinsel,
		ALU_Ain_Sel => sigaluabinsel,
		ALU_func => sigalufunc,
		MEM_Dout_sel=>sigmemdoutsel,
		MEM_Din_sel =>sigmemdinsel,
		MEM_WrEn =>sigmemwren
);
Instr<=siginstr;

end Behavioral;


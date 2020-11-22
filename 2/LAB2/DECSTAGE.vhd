----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:58:28 02/21/2018 
-- Design Name: 
-- Module Name:    DECSTAGE - Behavioral 
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

entity DECSTAGE is
    Port ( Instr : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_WrEn : in  STD_LOGIC;
           ALU_out : in  STD_LOGIC_VECTOR (31 downto 0);
           MEM_out : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_WrData_sel : in  STD_LOGIC;
           RF_B_sel : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Immed : out  STD_LOGIC_VECTOR (31 downto 0);
           RF_A : out  STD_LOGIC_VECTOR (31 downto 0);
           RF_B : out  STD_LOGIC_VECTOR (31 downto 0));
end DECSTAGE;

architecture Behavioral of DECSTAGE is
component RF is
    Port ( Ard1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Ard2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Awr : in  STD_LOGIC_VECTOR (4 downto 0);
           Dout1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Dout2 : out  STD_LOGIC_VECTOR (31 downto 0);
           Din : in  STD_LOGIC_VECTOR (31 downto 0);
           WrEn : in  STD_LOGIC;
           Clk : in  STD_LOGIC);
end component;

component Mux2to1_32bit is
    Port ( Q0 : in  STD_LOGIC_vector(31 downto 0);
           Q1 : in  STD_LOGIC_vector(31 downto 0);
           Sign : in  STD_LOGIC;
           Outm : out  STD_LOGIC_vector(31 downto 0));
end component ;

component Mux2to1_5bit is
    Port ( Q0 : in  STD_LOGIC_vector(4 downto 0);
           Q1 : in  STD_LOGIC_vector(4 downto 0);
           Sign : in  STD_LOGIC;
           Outm : out  STD_LOGIC_vector(4 downto 0));
end component ;

component SEModule is
    Port ( SE_input : in  STD_LOGIC_VECTOR (15 downto 0);
			  Opcode:in std_logic_vector(5 downto 0);
           SE_output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

signal Write_data:std_logic_vector(31 downto 0);
signal Read_register2:Std_logic_vector(4 downto 0);

begin
Mux_WData:Mux2to1_32bit
port map(Q0=>ALU_out,
         Q1=>MEM_out,
         Sign=>RF_WrData_sel,
         Outm=>Write_data
);
RegF:RF
port map(
          Ard1=> Instr(25 downto 21),					 
			 Ard2 =>Read_register2,
		    Awr =>Instr(20 downto 16),
			 Dout1 =>RF_A,
			 Dout2 =>RF_B,
			 Din => Write_data,
			 WrEn=>RF_WrEn,
			 Clk =>Clk
			 );

Mux_RData:Mux2to1_5bit
port map(Q0=>Instr(15 downto 11),
         Q1=>Instr(20 downto 16),
         Sign=>RF_B_sel,
         Outm=>Read_register2
);


Shift_extend:SEModule
port map( SE_input=>Instr(15 downto 0),
			 Opcode  =>Instr(31 downto 26),
          SE_output=>Immed
);

end Behavioral;


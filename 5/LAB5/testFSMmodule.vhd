--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:17:30 05/05/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB5/testFSMModule.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FSMmodule
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testFSMmodule IS
END testFSMmodule;
 
ARCHITECTURE behavior OF testFSMmodule IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSMmodule
    PORT(Clk:in std_logic;
         Instr : IN  std_logic_vector(31 downto 0);
			Reset:in std_logic;
         RF_WrEn : OUT  std_logic;
         RF_WrData_sel : OUT  std_logic;
         RF_B_sel : OUT  std_logic;
         ALU_func : OUT  std_logic_vector(3 downto 0);
         MEM_WrEn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
	signal Clk: std_logic;
   signal Instr : std_logic_vector(31 downto 0) := (others => '0');
	signal Reset:std_logic:='0';

 	--Outputs
   signal RF_WrEn : std_logic;
   signal RF_WrData_sel : std_logic;
   signal RF_B_sel : std_logic;
   signal ALU_func : std_logic_vector(3 downto 0);
   signal MEM_WrEn : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	
   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSMmodule PORT MAP (
			 Reset=>Reset,
			 Clk=>Clk,
          Instr => Instr,
          RF_WrEn => RF_WrEn,
          RF_WrData_sel => RF_WrData_sel,
          RF_B_sel => RF_B_sel,
          ALU_func => ALU_func,
          MEM_WrEn => MEM_WrEn
        );

	
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
     Instr<="11100000000000010000000000000010";
	wait for 50 ns;
	Instr<="10000000000000000000000000110000";
	wait for 50 ns;
	Instr<="01111100011001010000000000000100";
	wait for 50 ns;
	Instr<="00111101010100100000000000000010";
	wait for 50 ns;
	Instr<="11001100100100010000000000000010";

      wait;
   end process;

END;

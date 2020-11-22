--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:28:56 03/26/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB3/testCONTROLLER.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CONTROLLER
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
 
ENTITY testCONTROLLER IS
END testCONTROLLER;
 
ARCHITECTURE behavior OF testCONTROLLER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CONTROLLER
    PORT(
		Instr:in std_logic_vector(31 downto 0);
		Reset:in std_logic;
		RF_WrEn:out std_logic;
		RF_WrData_sel:out std_logic;
		ALU_func:out std_logic_vector(3 downto 0);
		RF_B_sel:out std_logic;
		MEM_WrEn:out std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Instr : std_logic_vector(31 downto 0) := (others => '0');
   signal Reset : std_logic := '0';

 	--Outputs
   signal RF_WrEn : std_logic;
   signal RF_WrData_sel : std_logic;
   signal ALU_func : std_logic_vector(3 downto 0);
   signal RF_B_sel : std_logic;
   signal MEM_WrEn : std_logic;

   -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CONTROLLER PORT MAP (
          Instr => Instr,
          Reset => Reset,
          RF_WrEn => RF_WrEn,
          RF_WrData_sel => RF_WrData_sel,
          ALU_func => ALU_func,
          RF_B_sel => RF_B_sel,
          MEM_WrEn => MEM_WrEn
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      Reset <= '1';
		wait for 50 NS;	
		
		Reset <= '0';	--nop
      Instr <= "00000000000000000000000000000000"; --nop
      wait for 50 ns;
		
		Instr <= "11100000000000010000000000000010"; --li
      wait for 50 ns;	
		

		Instr <= "11100000000000000000000000001011"; -- li akurh entoli prepei na bgalei nop
      wait for 50 ns;	

      Instr <= "01111100011001010000000000000100"; -- sw
      wait for 50 ns;


      Instr <= "00111101010100100000000000000010"; -- lw
      wait for 50 ns;


 
      -- insert stimulus here 

      wait;
   end process;

END;

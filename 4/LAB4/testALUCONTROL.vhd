--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:16:36 03/26/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB3/testALUCONTROL.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_Control
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
 
ENTITY testALUCONTROL IS
END testALUCONTROL;
 
ARCHITECTURE behavior OF testALUCONTROL IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_Control
    PORT(
         func : IN  std_logic_vector(3 downto 0);
         ALUop : IN  std_logic_vector(2 downto 0);
         ALUaction : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal func : std_logic_vector(3 downto 0) := (others => '0');
   signal ALUop : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal ALUaction : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_Control PORT MAP (
          func => func,
          ALUop => ALUop,
          ALUaction => ALUaction
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
		ALUop <= "100";
		func <= "0000";
      wait for 100 ns;	
		func <= "1001";
      wait for 100 ns;
		func <= "1010";
      wait for 100 ns;
		ALUop <= "000";
      wait for 100 ns;
		ALUop <= "001";
      wait for 100 ns;
		ALUop <= "010";
      wait for 100 ns;
		ALUop <= "011";
      wait for 100 ns;
		ALUop <= "111";
		wait for 100 ns;


      wait;
   end process;

END;

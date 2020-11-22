--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:37:27 02/17/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB1/testCM.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CompModule
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
 
ENTITY testCM IS
END testCM;
 
ARCHITECTURE behavior OF testCM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CompModule
    PORT(
         ardr : IN  std_logic_vector(4 downto 0);
         ardw : IN  std_logic_vector(4 downto 0);
         CMOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ardr : std_logic_vector(4 downto 0) := (others => '0');
   signal ardw : std_logic_vector(4 downto 0) := (others => '0');
   signal CMOut : std_logic := '0';
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CompModule PORT MAP (
          ardr => ardr,
          ardw => ardw,
          CMOut => CMOut
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
		ardw<="11111";
		ardr<="11111";
      wait for 100 ns;	
		ardr<="11110";
		ardw<="11110";
      wait for 100 ns;	
		ardw<="11110";
		ardr<="11111";
      wait for 100 ns;	
		ardr<="11100";
		ardw<="11111";
      wait for 100 ns;	
		ardw<="11110";
		ardr<="11110";
      wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;

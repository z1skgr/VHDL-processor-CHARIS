--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:33:22 02/19/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB1/testDecode.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decode5to32
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
 
ENTITY testDecode IS
END testDecode;
 
ARCHITECTURE behavior OF testDecode IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decode5to32
    PORT(
         DIn : IN  std_logic_vector(4 downto 0);
         DOut : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DIn : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal DOut : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decode5to32 PORT MAP (
          DIn => DIn,
          DOut => DOut
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      Din<="00000";
      wait for 100 ns;	
		Din<="11111";
      wait for 100 ns;
		Din<="00001";
      -- insert stimulus here 

      wait;
   end process;

END;

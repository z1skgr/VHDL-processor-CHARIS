--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:10:50 02/15/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB1/testSOps.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shiftOps
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
 
ENTITY testSOps IS
END testSOps;
 
ARCHITECTURE behavior OF testSOps IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shiftOps
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         Op : IN  std_logic_vector(3 downto 0);
         Outp : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal Op : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Outp : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shiftOps PORT MAP (
          A => A,
          Op => Op,
          Outp => Outp
        );

   -- Clock process definitions
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Op<="1000";
		A<="00000000000000000000000000000010";
		 wait for 100 ns;	
     Op<="1001";
		A<="11000000000000000000000000000010";
		wait for 100 ns;	
     Op<="1010";
		A<="11000000000000000000000000000011";
		wait for 100 ns;	
     Op<="1100";
		A<="11000000000000000000000000000011";
		wait for 100 ns;	
     Op<="1101";
		A<="11000000000000000000000000000011";
		
      -- insert stimulus here 

      wait;
   end process;

END;

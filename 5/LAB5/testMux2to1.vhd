--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:13:56 02/17/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB1/testMux2to1.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux2to1_32bit
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
 
ENTITY testMux2to1 IS
END testMux2to1;
 
ARCHITECTURE behavior OF testMux2to1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux2to1_32bit
    PORT(
         Q0 : IN  std_logic_vector(31 downto 0);
         Q1 : IN  std_logic_vector(31 downto 0);
         Sign : IN  std_logic;
         Outm : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Q0 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Sign : std_logic := '0';

 	--Outputs
   signal Outm : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux2to1_32bit PORT MAP (
          Q0 => Q0,
          Q1 => Q1,
          Sign => Sign,
          Outm => Outm
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      Q0<="00000000001111111111000000000000";
		Q1<="00000000001111111111000000000011";
		Sign<='0';
      wait for 100 ns;	
		Q0<="00000000001111111111000000000000";
		Q1<="00000000001111111111000000000011";
		Sign<='1';
      

      -- insert stimulus here 

      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:30:42 02/22/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB2/testSEModule.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SEModule
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
 
ENTITY testSEModule IS
END testSEModule;
 
ARCHITECTURE behavior OF testSEModule IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SEModule
    PORT(
         SE_input : IN  std_logic_vector(15 downto 0);
         Opcode : IN  std_logic_vector(5 downto 0);
         SE_output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SE_input : std_logic_vector(15 downto 0) := (others => '0');
   signal Opcode : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal SE_output : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SEModule PORT MAP (
          SE_input => SE_input,
          Opcode => Opcode,
          SE_output => SE_output
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
		Opcode<="111000";
		SE_input<="1000000000000000";
      wait for 100 ns;
		Opcode<="111001";
		SE_input<="1000000000000000";
      wait for 100 ns;
		Opcode<="110000";
		SE_input<="1000000000000000";
      wait for 100 ns;			
		Opcode<="110010";
		SE_input<="1000000000000000";
      wait for 100 ns;	
		Opcode<="110011";
		SE_input<="1000000000000000";
      wait for 100 ns;
		Opcode<="111111";
		SE_input<="1000000000000000";
      wait for 100 ns;
		Opcode<="000000";
		SE_input<="1000000000000000";
      wait for 100 ns;
		Opcode<="000001";
		SE_input<="1000000000000000";
      wait for 100 ns;
		Opcode<="000011";
		SE_input<="1000000000000000";
      wait for 100 ns;
      -- insert stimulus here 

      wait;
   end process;

END;

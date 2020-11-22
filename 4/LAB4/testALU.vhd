--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:29:29 02/17/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB1/testALU.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY testALU IS
END testALU;
 
ARCHITECTURE behavior OF testALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         Op : IN  std_logic_vector(3 downto 0);
         Outp : OUT  std_logic_vector(31 downto 0);
         Zero : OUT  std_logic;
         Cout : OUT  std_logic;
         Ovf : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal Op : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Outp : std_logic_vector(31 downto 0);
   signal Zero : std_logic;
   signal Cout : std_logic;
   signal Ovf : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          Op => Op,
          Outp => Outp,
          Zero => Zero,
          Cout => Cout,
          Ovf => Ovf
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      A<="00000000000000000000000000000011";
		B<="00000000000000000000000000000101";
		Op<="0000";
      wait for 50 ns;	
      A<="11111111111111111111111111111111";
		B<="00000000000000000000000000000001";
		Op<="0000";
		wait for 50 ns;
		A<="01111111111111111111111111111111";
		B<="00000000000000000000000000000011";
		Op<="0000";
		wait for 50 ns;
		A<="11111100000100000010000000000011";
		B<="01111000000000000000000000000110";
		Op<="0001";
		wait for 50 ns;
		A<="00000000000000000000000000000011";
		B<="00000000000000000000000000000101";
		Op<="0010";
		wait for 50 ns;
		A<="00000000000000000000000000000011";
		B<="00000000000000000000000000000101";
		Op<="0011";		
      wait for 50 ns;
		A<="00000000000000000000000000000011";
		Op<="0100";
      wait for 50 ns;
		A<="00000000000000000000000000000011";
		Op<="1000";
      wait for 50 ns;
		A<="00000000000000000000000000000011";
		Op<="1001";
      wait for 50 ns;
		A<="00000000000000000000000000000011";
		Op<="1010";
      wait for 50 ns;
		A<="00000000000000000000000000000011";
		Op<="1100";
      wait for 50 ns;
		A<="00000000000000000000000000000011";
		Op<="1101";
		wait for 50 ns;
		A<="00000011000000110000001100000011";
		B<="00100000001000000010000000100000";
		Op<="1110";
		
      wait;
   end process;

END;

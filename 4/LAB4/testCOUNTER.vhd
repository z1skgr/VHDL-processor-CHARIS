--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:40:19 04/03/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB4/testCOUNTER.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: COUNTER
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
 
ENTITY testCOUNTER IS
END testCOUNTER;
 
ARCHITECTURE behavior OF testCOUNTER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT COUNTER
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         Q : OUT  std_logic;
         Enable : IN  std_logic;
         output : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';
   signal Enable : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal output : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: COUNTER PORT MAP (
          Clk => Clk,
          Rst => Rst,
          Q => Q,
          Enable => Enable,
          output => output
        );

   -- Clock process definitions
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
      Rst<='1';
      wait for 100 ns;	
		Rst<='0';
		Enable<='0';
      wait for Clk_period*10;
		Enable<='1';
      -- insert stimulus here 

      wait;
   end process;

END;

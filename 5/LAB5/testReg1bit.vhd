--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:32:45 05/07/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB5/testReg1bit.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Reg1Bit
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
 
ENTITY testReg1bit IS
END testReg1bit;
 
ARCHITECTURE behavior OF testReg1bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Reg1Bit
    PORT(
			Reset:in std_logic;
         Clk : IN  std_logic;
         WE : IN  std_logic;
         Data : IN  std_logic;
         Dout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
	signal Reset:std_logic:='0';
   signal Clk : std_logic := '0';
   signal WE : std_logic := '0';
   signal Data : std_logic := '0';

 	--Outputs
   signal Dout : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Reg1Bit PORT MAP (
			 Reset=>Reset,
          Clk => Clk,
          WE => WE,
          Data => Data,
          Dout => Dout
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
      Reset<='1';
		WE<='1';
		Data<='0';
      wait for 100 ns;	
		Reset<='0';
		WE<='0';
		Data<='1';
      wait for 100 ns;

		Reset<='0';
		WE<='1';
		Data<='0';
      wait for 100 ns;
		Reset<='0';
		WE<='1';
		Data<='1';
      wait for 100 ns;

      wait;
   end process;

END;

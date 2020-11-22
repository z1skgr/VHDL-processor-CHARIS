--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:24:01 05/07/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB5/testReg5bit.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Reg5Bit
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
 
ENTITY testReg5bit IS
END testReg5bit;
 
ARCHITECTURE behavior OF testReg5bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Reg5Bit
    PORT(
         Clk : IN  std_logic;
         WE : IN  std_logic;
         Reset : IN  std_logic;
         Data : IN  std_logic_vector(4 downto 0);
         Dout : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal WE : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Data : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Dout : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Reg5Bit PORT MAP (
          Clk => Clk,
          WE => WE,
          Reset => Reset,
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
		Data<="00000";
      wait for 100 ns;	
		Reset<='0';
		WE<='0';
		Data<="10101";
      wait for 100 ns;

		Reset<='0';
		WE<='1';
		Data<="01000";
      wait for 100 ns;
		Reset<='0';
		WE<='1';
		Data<="11111";
      wait for 100 ns;


      wait;
   end process;

END;

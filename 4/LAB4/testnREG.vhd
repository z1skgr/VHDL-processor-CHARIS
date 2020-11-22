--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:17:29 04/10/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB4/testnREG.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nREG
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
 
ENTITY testnREG IS
END testnREG;
 
ARCHITECTURE behavior OF testnREG IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nREG
    PORT(
         Clk : IN  std_logic;
         Data : IN  std_logic_vector(31 downto 0);
         Rst : IN  std_logic;
         Dout : OUT  std_logic_vector(31 downto 0);
         WE : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Data : std_logic_vector(31 downto 0) := (others => '0');
   signal Rst : std_logic := '0';
   signal WE : std_logic := '0';

 	--Outputs
   signal Dout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nREG PORT MAP (
          Clk => Clk,
          Data => Data,
          Rst => Rst,
          Dout => Dout,
          WE => WE
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
		WE<='1';
		Data<="00000000000000000000000000000011";
      wait for 100 ns;	
		Rst<='0';
		WE<='0';
		Data<="00000000000000000000000000001010";
      wait for 100 ns;

		Rst<='0';
		WE<='1';
		Data<="00000000000000000000000000001010";
      wait for 100 ns;
		Rst<='0';
		WE<='1';
		Data<="00000000000000000000000000001010";
      wait for 100 ns;
		Rst<='0';
		WE<='1';
		Data<="00000000000000000000000000000101";
      wait for 100 ns;
      wait;
   end process;

END;

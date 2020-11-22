--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:17:39 02/19/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB1/testRF.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RF
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
 
ENTITY testRF IS
END testRF;
 
ARCHITECTURE behavior OF testRF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF
    PORT(
         Ard1 : IN  std_logic_vector(4 downto 0);
         Ard2 : IN  std_logic_vector(4 downto 0);
         Awr : IN  std_logic_vector(4 downto 0);
         Dout1 : OUT  std_logic_vector(31 downto 0);
         Dout2 : OUT  std_logic_vector(31 downto 0);
         Din : IN  std_logic_vector(31 downto 0);
         WrEn : IN  std_logic;
         Clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Ard1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Ard2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Awr : std_logic_vector(4 downto 0) := (others => '0');
   signal Din : std_logic_vector(31 downto 0) := (others => '0');
   signal WrEn : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Dout1 : std_logic_vector(31 downto 0);
   signal Dout2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF PORT MAP (
          Ard1 => Ard1,
          Ard2 => Ard2,
          Awr => Awr,
          Dout1 => Dout1,
          Dout2 => Dout2,
          Din => Din,
          WrEn => WrEn,
          Clk => Clk
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
		Ard1<="00000"; 
      Ard2<="00000"; 
      Awr<="00000"; 
      Din<="00000000000000000000000000000011"; 
      WrEn<='1';
     
      wait for 50 ns;
		Ard1<="00000"; 
      Ard2<="00011"; 
      Awr<="00011"; 
      Din<="00000000000000000000000000000011"; 
      WrEn<='1';
     
      wait for 50 ns;
		Ard1<="00000"; 
      Ard2<="00011"; 
      Awr<="00000"; 
      Din<="00000000000000000000000000000011"; 
      WrEn<='1';
     
      wait for 50 ns;
		Ard1<="00000"; 
      Ard2<="00011"; 
		Awr<="00100"; 
      Din<="00000000000000000000000000000100"; 
      WrEn<='0';	
      wait for 100 ns;
		Ard1<="00000"; 
      Ard2<="00011"; 
		Awr<="00100"; 
      Din<="00000000000000000000000000000100"; 
      WrEn<='1';	
      wait for 50 ns;
		Ard1<="00100"; 
      Ard2<="00011"; 
		Awr<="00100"; 
      Din<="00000000000000000000000000000100"; 
      WrEn<='1';	
      wait for 50 ns;
		Ard1<="00100"; 
      Ard2<="00011"; 
		Awr<="00100"; 
      Din<="00000000000000000000000000001111"; 
      WrEn<='1';
		wait for 50 ns;
		Ard1<="00100"; 
      Ard2<="00011"; 
		Awr<="00011"; 
      Din<="00000000000000000000000000001111"; 
      WrEn<='1';
   end process;

END;

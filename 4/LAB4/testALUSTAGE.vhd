--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:07:22 02/22/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB2/testALUSTAGE.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALUSTAGE
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
 
ENTITY testALUSTAGE IS
END testALUSTAGE;
 
ARCHITECTURE behavior OF testALUSTAGE IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALUSTAGE
    PORT(
         RF_A : IN  std_logic_vector(31 downto 0);
         RF_B : IN  std_logic_vector(31 downto 0);
         Immed : IN  std_logic_vector(31 downto 0);
         ALU_Bin_sel : IN  std_logic;
			ALU_Ain_sel : IN  std_logic;
			ALU_Cin_sel : IN  std_logic;
			ALU_Din_sel : IN  std_logic;
			ALU_Ein_sel:in std_logic;
         ALU_func : IN  std_logic_vector(3 downto 0);
			Zero:out std_logic;
         ALU_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RF_A : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_B : std_logic_vector(31 downto 0) := (others => '0');
   signal Immed : std_logic_vector(31 downto 0) := (others => '0');
   signal ALU_Bin_sel : std_logic := '0';
	signal ALU_Ain_sel : std_logic := '0';
	signal ALU_Cin_sel : std_logic := '0';
	signal ALU_Din_sel : std_logic := '0';
	signal ALU_Ein_sel : std_logic := '0';
   signal ALU_func : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ALU_out : std_logic_vector(31 downto 0);
	signal Zero: std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALUSTAGE PORT MAP (
          RF_A => RF_A,
          RF_B => RF_B,
          Immed => Immed,
          ALU_Bin_sel => ALU_Bin_sel,
			 ALU_Ain_sel=>ALU_Ain_sel,
			 ALU_Cin_sel => ALU_Cin_sel,
			 ALU_Din_sel=>ALU_Din_sel,
			 ALU_Ein_sel=>ALU_Ein_sel,
          ALU_func => ALU_func,
			 Zero=>Zero,
          ALU_out =>ALU_out
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      RF_A<="11111111111111111111111111111011";
		RF_B<="00000000000000000000000000001100";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='0';
		ALU_Ain_sel<='1';
		ALU_func<="0000";
      wait for 50 ns;	
		RF_A<="00000000000000000000000000000011";
		RF_B<="00000000000000000000000000001100";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='1';
		ALU_Ain_sel<='0';
		ALU_func<="0000";
      wait for 50 ns;
		RF_A<="00000000000000000000000000000011";
		RF_B<="00000000000000000000000000001100";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='0';
		ALU_func<="0001";
		wait for 50 ns;
		RF_A<="11111111111111111111111111111111";
		RF_B<="11111111111111111111111111111111";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='0';
		ALU_func<="0001";
		wait for 50 ns;
		RF_A<="00000000000000000000000000000011";
		RF_B<="00000000000000000000000000001100";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='0';
		ALU_func<="0010";
		wait for 50 ns;
		RF_A<="00000000000000000000000000000011";
		RF_B<="00000000000000000000000000001100";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='0';
		ALU_func<="0011";
		wait for 50 ns;
		RF_A<="00000000000000000000000000000011";
		RF_B<="00000000000000000000000000001100";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='1';
		ALU_func<="0011";
		wait for 50 ns;
		RF_A<="00000000000000000000000000000011";
		RF_B<="00000000000000000000000000001100";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='0';
		ALU_func<="0100";
		wait for 50 ns;
		
		RF_A<="00000000000000000000000000000011";
		RF_B<="00000000000000000000000000001100";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='0';
		ALU_func<="1101";
		wait for 50 ns;
		RF_A<="00000000000000000000000000000011";
		RF_B<="00000000000000000000000000001100";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='0';
		ALU_Cin_sel<='1';
		ALU_Din_sel<='0';
		ALU_Ain_sel<='1';
		ALU_func<="1011";
		wait for 50 ns;
				RF_A<="00000000000000000000000000000011";
		RF_B<="00000000000000000000000000001100";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='0';
		ALU_Cin_sel<='0';
		ALU_Din_sel<='1';
		ALU_Ain_sel<='1';
		ALU_func<="1011";
		wait for 50 ns;
		RF_A<="00000000000000000000000000000011";
		RF_B<="00000000000000000000000000001100";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='0';
		ALU_Cin_sel<='0';
		ALU_Din_sel<='0';
		ALU_Ain_sel<='1';
		ALU_func<="1011";
		wait for 50 ns;
		RF_A<="00000000000000000000000000000011";
		RF_B<="00000000000000000000000000001100";
		Immed<="00000000000000000000000001100000";
		ALU_Bin_sel<='0';
		ALU_Cin_sel<='0';
		ALU_Din_sel<='0';
		ALU_Ain_sel<='1';
		ALU_Ein_sel<='1';
		ALU_func<="0000";
		wait for 50 ns;
      wait;
   end process;

END;

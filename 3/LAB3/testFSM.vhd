--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:31:57 03/26/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB3/testFSM.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CONTROL
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
 
ENTITY testFSM IS
END testFSM;
 
ARCHITECTURE behavior OF testFSM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CONTROL
    PORT(
         Clk : IN  std_logic;
         Instr : IN  std_logic_vector(31 downto 0);
         Zero : IN  std_logic;
         Reset : IN  std_logic;
         PC_Sel : OUT  std_logic;
         PC_LdEn : OUT  std_logic;
         RF_WrEn : OUT  std_logic;
         RF_WrData_sel : OUT  std_logic;
         RF_B_sel : OUT  std_logic;
         ALU_Bin_Sel : OUT  std_logic;
         ALU_Ain_Sel : OUT  std_logic;
         ALUop : OUT  std_logic_vector(2 downto 0);
         MEM_Dout_sel : OUT  std_logic;
         MEM_Din_sel : OUT  std_logic;
         MEM_WrEn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Instr : std_logic_vector(31 downto 0) := (others => '0');
   signal Zero : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal PC_Sel : std_logic;
   signal PC_LdEn : std_logic;
   signal RF_WrEn : std_logic;
   signal RF_WrData_sel : std_logic;
   signal RF_B_sel : std_logic;
   signal ALU_Bin_Sel : std_logic;
   signal ALU_Ain_Sel : std_logic;
   signal ALUop : std_logic_vector(2 downto 0);
   signal MEM_Dout_sel : std_logic;
   signal MEM_Din_sel : std_logic;
   signal MEM_WrEn : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CONTROL PORT MAP (
          Clk => Clk,
          Instr => Instr,
          Zero => Zero,
          Reset => Reset,
          PC_Sel => PC_Sel,
          PC_LdEn => PC_LdEn,
          RF_WrEn => RF_WrEn,
          RF_WrData_sel => RF_WrData_sel,
          RF_B_sel => RF_B_sel,
          ALU_Bin_Sel => ALU_Bin_Sel,
          ALU_Ain_Sel => ALU_Ain_Sel,
          ALUop => ALUop,
          MEM_Dout_sel => MEM_Dout_sel,
          MEM_Din_sel => MEM_Din_sel,
          MEM_WrEn => MEM_WrEn
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
      Reset <= '1';
		wait for 50 NS;	
		
		Reset <= '0';	--nop
      Instr <= "00000000000000000000000000000000"; --nop
      wait for 50 ns;
		
		Instr <= "11100000000000010000000000000010"; --li
      wait for 50 ns;	
		
		Instr <= "10000000010001100001000000110000"; --add
      wait for 50 ns;			

		Instr <= "11000000100010010000000000000100"; --addi
      wait for 50 ns;	
				
		Instr <= "11100000000000000000000000001011"; -- li akurh entoli prepei na bgalei nop
      wait for 50 ns;	
		
      Instr <= "11111100000000000000000000000011"; -- b
      wait for 50 ns;
		
      Instr <= "00000000000000000000000000000000"; -- nop
      wait for 50 ns;
		
		Zero <= '0';
      Instr <= "00000001110000100000000000000011"; -- beq
      wait for 50 ns;		
		
		Zero <= '1';
      Instr<="00000001110000100000000000000011"; -- beq
      wait for 50 ns;
		Instr<="00000101110001100000000000000001"; --bne
		wait for 50 ns;
		Zero<='0';
		wait for 50 ns;

      Instr <= "01111100011001010000000000000100"; -- sw
      wait for 50 ns;

      Instr <= "00011101111010100000000000001000"; -- sb
      wait for 50 ns;
		
      Instr <= "00111101010100100000000000000010"; -- lw
      wait for 50 ns;

      Instr <= "00001100000100110000000000001000"; -- lb
      wait for 50 ns;		
 

      wait;
   end process;

END;

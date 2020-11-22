--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:22:16 02/23/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB2/testDECSTAGE.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DECSTAGE
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
 
ENTITY testDECSTAGE IS
END testDECSTAGE;
 
ARCHITECTURE behavior OF testDECSTAGE IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DECSTAGE
    PORT(
         Instr : IN  std_logic_vector(31 downto 0);
         RF_WrEn : IN  std_logic;
         ALU_out : IN  std_logic_vector(31 downto 0);
         MEM_out : IN  std_logic_vector(31 downto 0);
         RF_WrData_sel : IN  std_logic;
         RF_B_sel : IN  std_logic;
         Clk : IN  std_logic;
         Immed : OUT  std_logic_vector(31 downto 0);
         RF_A : OUT  std_logic_vector(31 downto 0);
         RF_B : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Instr : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_WrEn : std_logic := '0';
   signal ALU_out : std_logic_vector(31 downto 0) := (others => '0');
   signal MEM_out : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_WrData_sel : std_logic := '0';
   signal RF_B_sel : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Immed : std_logic_vector(31 downto 0);
   signal RF_A : std_logic_vector(31 downto 0);
   signal RF_B : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DECSTAGE PORT MAP (
          Instr => Instr,
          RF_WrEn => RF_WrEn,
          ALU_out => ALU_out,
          MEM_out => MEM_out,
          RF_WrData_sel => RF_WrData_sel,
          RF_B_sel => RF_B_sel,
          Clk => Clk,
          Immed => Immed,
          RF_A => RF_A,
          RF_B => RF_B
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
      -- (31downto26)(25downto21)(20downto16)(15downto11)(11 downto 0)
		Instr<="100000" & "00000" & "00000" & "00000" & "10000000001";
		RF_WrEn<='1';
		ALU_out<="00000000000000000000000000000001";--Rtype
		MEM_out<="00000000000000000000000000000011";
		RF_WrData_Sel<='0';	--ALU
		RF_B_Sel<='0';	--(15-11)
      wait for 50 ns;
		-- (31downto26)(25downto21)(20downto16)(15downto11)(11 downto 0)
		Instr<="100000" & "00000" & "00010" & "00000" & "10000000001";
		RF_WrEn<='0';
		ALU_out<="00000000000000000000000000000001";--Rtype
		MEM_out<="00000000110000000000000000000011";
		RF_WrData_Sel<='1';--MEM
		RF_B_Sel<='0';--(15-11)
      wait for 50 ns;
		-- (31downto26)(25downto21)(20downto16)(15downto11)(11 downto 0)
		Instr<="100000" & "00010" & "00011" & "00001" & "10000000001";
		RF_WrEn<='0';
		ALU_out<="00000000000000000000000000000001";--Rtype
		MEM_out<="00000000000000000000000000000000";
		RF_WrData_Sel<='0';--ALU
		RF_B_Sel<='0';--(15-11)
      wait for 50 ns;
		-- (31downto26)(25downto21)(20downto16)(15downto11)(11 downto 0)
		Instr<="100000" & "00010" & "00011" & "00001" & "10000000001";
		RF_WrEn<='1';
		ALU_out<="00000000000000000000000000001111";--Rtype
		MEM_out<="00000000110000000000000000000011";
		RF_WrData_Sel<='0';--ALU
		RF_B_Sel<='0';--(15-11)
      wait for 50 ns;
		-- (31downto26)(25downto21)(20downto16)(15downto11)(11 downto 0)
		Instr<="111000" & "00011" & "00001" & "00010" & "10000000001";
		RF_WrEn<='0';
		ALU_out<="00000000000000000000000000111111";--sign extention
		MEM_out<="00000000110000000000000011111111";
		RF_WrData_Sel<='1';--MEM
		RF_B_Sel<='0';--(20-16)
      wait for 50 ns;
		-- (31downto26)(25downto21)(20downto16)(15downto11)(11 downto 0)
		Instr<="111000" & "00010" & "00110" & "00001" & "10000000001";
		RF_WrEn<='1';
		ALU_out<="00000000000000000000000000111111";--Sign-extention
		MEM_out<="00000000110000000000000000000011";
		RF_WrData_Sel<='0';--ALU
		RF_B_Sel<='1';--(20-16)
      wait for 50 ns;
-- (31downto26)(25downto21)(20downto16)(15downto11)(11 downto 0)
		Instr<="111001" & "10000" & "01110" & "00110" & "11000000001";
		RF_WrEn<='0';
		ALU_out<="00000000000000000000000011111111";--Zero fill
		MEM_out<="11000000110000000000000000001111";
		RF_WrData_Sel<='1';--MEM
		RF_B_Sel<='0';--(15-11)
      wait for 50 ns;
		-- (31downto26)(25downto21)(20downto16)(15downto11)(11 downto 0)
		Instr<="110000" & "01110" & "10001" & "11110" & "11100000001";
		RF_WrEn<='1';
		ALU_out<="00000000000000000000001111111111";--Sign-extention
		MEM_out<="11100000110000000000000000001111";
		RF_WrData_Sel<='1';--MEM
		RF_B_Sel<='0';--(15-11)
      wait for 50 ns;
		-- (31downto26)(25downto21)(20downto16)(15downto11)(11 downto 0)
		Instr<="110011" & "10001" & "11111" & "01110" & "11110000001";
		RF_WrEn<='0';
		ALU_out<="00000000000000000000111111111111";--Zero fill
		MEM_out<="11100000110000000000000000001111";
		RF_WrData_Sel<='0';--MEM
		RF_B_Sel<='0';--(15-11)
      wait for 50 ns;
		-- (31downto26)(25downto21)(20downto16)(15downto11)(11 downto 0)
		Instr<="000000" & "10001" & "11111" & "01110" & "11110000001";
		RF_WrEn<='1';
		ALU_out<="00000000000000000000111111111111";--Sign-extention and shift 2
		MEM_out<="11100000110000000000000000001111";
		RF_WrData_Sel<='0';--MEM
		RF_B_Sel<='0';--(15-11)
      wait for 50 ns;
		
		
		wait;
   end process;

END;

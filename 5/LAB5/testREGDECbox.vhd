--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:36:42 05/07/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB5/testREGDECbox.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: REGDECbox
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
 
ENTITY testREGDECbox IS
END testREGDECbox;
 
ARCHITECTURE behavior OF testREGDECbox IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REGDECbox
    PORT(
         Clk : IN  std_logic;
         RF_WrData_sel : IN  std_logic;
         RF_WrEn : IN  std_logic;
         ALU_Ain_sel : IN  std_logic;
         ALU_Bin_sel : IN  std_logic;
         ALU_func : IN  std_logic_vector(3 downto 0);
         MEM_WrEn : IN  std_logic;
         MEM_Din_sel : IN  std_logic;
         MEM_Dout_sel : IN  std_logic;
         RegRF_WrEn : OUT  std_logic;
         RegRF_WrData_sel : OUT  std_logic;
         RegALU_Ain_sel : OUT  std_logic;
         RegALU_Bin_sel : OUT  std_logic;
         RegALU_func : OUT  std_logic_vector(3 downto 0);
         RegMEM_WrEn : OUT  std_logic;
         RegMEM_Din_sel : OUT  std_logic;
         RegMEM_Dout_sel : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal RF_WrData_sel : std_logic := '0';
   signal RF_WrEn : std_logic := '0';
   signal ALU_Ain_sel : std_logic := '0';
   signal ALU_Bin_sel : std_logic := '0';
   signal ALU_func : std_logic_vector(3 downto 0) := (others => '0');
   signal MEM_WrEn : std_logic := '0';
   signal MEM_Din_sel : std_logic := '0';
   signal MEM_Dout_sel : std_logic := '0';

 	--Outputs
   signal RegRF_WrEn : std_logic;
   signal RegRF_WrData_sel : std_logic;
   signal RegALU_Ain_sel : std_logic;
   signal RegALU_Bin_sel : std_logic;
   signal RegALU_func : std_logic_vector(3 downto 0);
   signal RegMEM_WrEn : std_logic;
   signal RegMEM_Din_sel : std_logic;
   signal RegMEM_Dout_sel : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REGDECbox PORT MAP (
          Clk => Clk,
          RF_WrData_sel => RF_WrData_sel,
          RF_WrEn => RF_WrEn,
          ALU_Ain_sel => ALU_Ain_sel,
          ALU_Bin_sel => ALU_Bin_sel,
          ALU_func => ALU_func,
          MEM_WrEn => MEM_WrEn,
          MEM_Din_sel => MEM_Din_sel,
          MEM_Dout_sel => MEM_Dout_sel,
          RegRF_WrEn => RegRF_WrEn,
          RegRF_WrData_sel => RegRF_WrData_sel,
          RegALU_Ain_sel => RegALU_Ain_sel,
          RegALU_Bin_sel => RegALU_Bin_sel,
          RegALU_func => RegALU_func,
          RegMEM_WrEn => RegMEM_WrEn,
          RegMEM_Din_sel => RegMEM_Din_sel,
          RegMEM_Dout_sel => RegMEM_Dout_sel
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
      RF_WrData_sel <='0';
         RF_WrEn <='0';
         ALU_Ain_sel<='0';
         ALU_Bin_sel <='0';
         ALU_func <="0000";
         MEM_WrEn <='0';
         MEM_Din_sel <='0';
         MEM_Dout_sel <='0';
      wait for 100 ns;	  RF_WrData_sel <='1';
         RF_WrEn <='0';
         ALU_Ain_sel<='1';
         ALU_Bin_sel <='1';
         ALU_func <="0001";
         MEM_WrEn <='1';
         MEM_Din_sel <='1';
         MEM_Dout_sel <='0';
      wait for 100 ns;	
		RF_WrData_sel <='1';
         RF_WrEn <='1';
         ALU_Ain_sel<='1';
         ALU_Bin_sel <='1';
         ALU_func <="0011";
         MEM_WrEn <='1';
         MEM_Din_sel <='1';
         MEM_Dout_sel <='1';
      wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;

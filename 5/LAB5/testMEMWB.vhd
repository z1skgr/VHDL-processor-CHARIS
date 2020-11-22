--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:01:49 05/07/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB5/testMEMWB.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MEMWB
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
 
ENTITY testMEMWB IS
END testMEMWB;
 
ARCHITECTURE behavior OF testMEMWB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEMWB
    PORT(
         Clk : IN  std_logic;
         ALUout : IN  std_logic_vector(31 downto 0);
			RF_WrData_sel:in std_logic;
			RF_WrEn:in std_logic;
         rd : IN  std_logic_vector(4 downto 0);
			rs : IN  std_logic_vector(4 downto 0);
			rt : IN  std_logic_vector(4 downto 0);
			RegRF_WrData_sel:out std_logic;
			RegRF_WrEn:out std_logic;
         RegALU : OUT  std_logic_vector(31 downto 0);
			RegRt : OUT  std_logic_vector(4 downto 0);
			RegRs : OUT  std_logic_vector(4 downto 0);
         RegW : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal ALUout : std_logic_vector(31 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');
	signal rs : std_logic_vector(4 downto 0) := (others => '0');
	signal rt : std_logic_vector(4 downto 0) := (others => '0');
	signal RF_WrData_sel: std_logic;
	signal RF_WrEn:std_logic;

 	--Outputs
   signal RegALU : std_logic_vector(31 downto 0);
   signal RegW : std_logic_vector(4 downto 0);
	signal RegRs : std_logic_vector(4 downto 0);
	signal RegRt : std_logic_vector(4 downto 0);
	signal RegRF_WrData_sel: std_logic;
	signal RegRF_WrEn: std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMWB PORT MAP (
          Clk => Clk,
          ALUout => ALUout,
			 RF_WrData_sel=>RF_WrData_sel,
			 RF_WrEn=>RF_WrEn,
          rd => rd,
			 rt=>rt,
			 rs=>rs,
			 RegRF_WrData_sel=>RegRF_WrData_sel,
			 RegRF_WrEn=>RegRF_WrEn,
          RegALU => RegALU,
          RegW => RegW,
			 RegRs=>RegRs,
			 RegRt=>RegRt
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
      ALUout<="00010010010001001001000100100100";
		rd<="01111";
		rs<="11111";
		rt<="00111";
		RF_WrEn<='0';
		RF_WrData_sel<='0';
      wait for 100 ns;	
		ALUout<="00010010010001001001000100100111";
		RF_WrEn<='1';
		RF_WrData_sel<='1';
		rd<="01110";
		rs<="11100";
		rt<="00100";
      wait for 100 NS;

      -- insert stimulus here 

      wait;
   end process;

END;

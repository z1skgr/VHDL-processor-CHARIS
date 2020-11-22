--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:56:35 05/07/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB5/testEXMEM.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: EXMEM
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
 
ENTITY testEXMEM IS
END testEXMEM;
 
ARCHITECTURE behavior OF testEXMEM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EXMEM
    PORT(
         Clk : IN  std_logic;
         ALUout : IN  std_logic_vector(31 downto 0);
         RF_B : IN  std_logic_vector(31 downto 0);
         rd : IN  std_logic_vector(4 downto 0);
         rs : IN  std_logic_vector(4 downto 0);
         rt : IN  std_logic_vector(4 downto 0);
			RF_WrData_sel:in std_logic;
			RF_WrEn:in std_logic;
			MEM_WrEn:in std_logic;
			RegMEM_WrEn:out std_logic;
			RegRF_WrEn:out std_logic;
			RegRF_WrData_sel:out std_logic;
         RegALU : OUT  std_logic_vector(31 downto 0);
         RegB : OUT  std_logic_vector(31 downto 0);
         RegRt : OUT  std_logic_vector(4 downto 0);
         RegRs : OUT  std_logic_vector(4 downto 0);
         RegW : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal ALUout : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_B : std_logic_vector(31 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');
   signal rs : std_logic_vector(4 downto 0) := (others => '0');
   signal rt : std_logic_vector(4 downto 0) := (others => '0');
	signal RF_WrData_sel:std_logic:='0';
	signal RF_WrEn:std_logic:='0';
	signal MEM_WrEn:std_logic:='0';

 	--Outputs
	signal RegMEM_WrEn:std_logic;
	signal RegRF_WrEn:std_logic;
	signal RegRF_WrData_sel:std_logic;
   signal RegALU : std_logic_vector(31 downto 0);
   signal RegB : std_logic_vector(31 downto 0);
   signal RegRt : std_logic_vector(4 downto 0);
   signal RegRs : std_logic_vector(4 downto 0);
   signal RegW : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EXMEM PORT MAP (
          RF_WrData_sel=>RF_WrData_sel,
			 RF_WrEn=>RF_WrEn,
			 MEM_WrEn=>MEM_WrEn,
			 Clk => Clk,
          ALUout => ALUout,
          RF_B => RF_B,
          rd => rd,
          rs => rs,
          rt => rt,
          RegALU => RegALU,
          RegB => RegB,
          RegRt => RegRt,
          RegRs => RegRs,
          RegW => RegW,
			 RegMEM_WrEn=>RegMEM_WrEn,
			 RegRF_WrData_sel=>RegRF_WrData_sel,
			 RegRF_WrEn=>RegRF_WrEn
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
ALUout <="01000100100100010010010001001000";	
        RF_B<= "01000100100100010010010001111000";	
          rd <="01111";
          rs <="10011";
          rt <="10010";
			 MEM_WrEn<='0';
			RF_WrData_sel<='0';
			RF_WrEn<='0';
      wait for 100 ns;	
ALUout <="01000100100100010010010001111000";	
        RF_B<= "01000100100100010010011111111000";	
          rd <="01111";
          rs <="10111";
          rt <="11010";
			 MEM_WrEn<='1';
			RF_WrData_sel<='1';
			RF_WrEn<='1';
      wait for 100 NS;

      -- insert stimulus here 

      wait;
   end process;

END;

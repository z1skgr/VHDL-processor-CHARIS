--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:48:25 05/07/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB5/testDECEX.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DECEX
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
 
ENTITY testDECEX IS
END testDECEX;
 
ARCHITECTURE behavior OF testDECEX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DECEX
    PORT(Clk:in std_logic;
	RF_A:in std_logic_vector(31 downto 0);
	RF_B:in std_logic_vector(31 downto 0);
	rs:in std_logic_vector(4 downto 0);
	rt:in std_logic_vector(4 downto 0);
	rd:in std_logic_vector(4 downto 0);
	Immed:in std_logic_vector(31 downto 0);
	RF_WrData_sel:in std_logic;
	Opcode:in std_logic_vector(5 downto 0);
	RF_WrEn:in std_logic;
	ALU_func:in std_logic_vector(3 downto 0);
	MEM_WrEn:in std_logic;
	RegMEM_WrEn:out std_logic;
	RegALU_func:out std_logic_vector(3 downto 0);
	RegRF_WrEn:out std_logic;
	RegRF_WrData_sel:out std_logic;
	RegA:out std_logic_vector(31 downto 0);
	RegB:out std_logic_vector(31 downto 0);
	RegImmed: out std_logic_vector(31 downto 0);
	RegOpcode:out std_logic_vector(5 downto 0);
	RegRs:out std_logic_vector(4 downto 0);
	RegRt:out std_logic_vector(4 downto 0);
	RegW:out std_logic_vector(4 downto 0));
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal RF_A : std_logic_vector(31 downto 0) := (others => '0');
   signal RF_B : std_logic_vector(31 downto 0) := (others => '0');
   signal rs : std_logic_vector(4 downto 0) := (others => '0');
   signal rt : std_logic_vector(4 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');
   signal Immed : std_logic_vector(31 downto 0) := (others => '0');
	signal RF_WrData_sel:std_logic:='0';
	signal RF_WrEn:std_logic:='0';
	signal ALU_func:std_logic_vector(3 downto 0):=(others=>'0');
	signal MEM_WrEn:std_logic:='0';
	signal Opcode:std_logic_vector(5 downto 0):="000000";

 	--Outputs
	signal RegALU_func:std_logic_vector(3 downto 0);
	signal RegMEM_WrEn:std_logic;
	signal RegRF_WrEn:std_logic;
	signal RegRF_WrData_sel:std_logic;
   signal RegA : std_logic_vector(31 downto 0);
   signal RegB : std_logic_vector(31 downto 0);
   signal RegImmed : std_logic_vector(31 downto 0);
   signal RegRs : std_logic_vector(4 downto 0);
   signal RegRt : std_logic_vector(4 downto 0);
   signal RegW : std_logic_vector(4 downto 0);
	signal RegOpcode:std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DECEX PORT MAP (
			RF_WrData_sel=>RF_WrData_sel,
			RF_WrEn=>RF_WrEn,
			ALU_func=>ALU_func,
			MEM_WrEn=>MEM_WrEn,
			Opcode=>Opcode,
          Clk => Clk,
          RF_A => RF_A,
          RF_B => RF_B,
          rs => rs,
          rt => rt,
          rd => rd,
          Immed => Immed,
          RegA => RegA,
          RegB => RegB,
          RegImmed => RegImmed,
          RegRs => RegRs,
          RegRt => RegRt,
          RegW => RegW,
			 RegOpcode=>RegOpcode,
			 RegALU_func=>RegALU_func,
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
	 RF_A <="01010101010101010101010101010010";
         RF_B <="11010101010101010101010101010011";
         rs<="00000";
         rt<="01000";
         rd<="10000";
         Immed<="11111111110000000000101010101000";
			ALU_func<="0100";
			MEM_WrEn<='0';
			RF_WrData_sel<='0';
			RF_WrEn<='0';
			Opcode<="111111";
			wait for 100 ns;
				 RF_A <="01010101010101010101010101010010";
         RF_B <="11010101010101010101010101010011";
         rs<="00001";
         rt<="01001";
         rd<="10001";
         Immed<="11111111110000000000101010101000";
			ALU_func<="0110";
			MEM_WrEn<='1';
			RF_WrData_sel<='1';
			RF_WrEn<='1';
			Opcode<="000000";
			wait for 100 ns;

      wait;
   end process;

END;

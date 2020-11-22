--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:03:18 02/22/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB2/testIFSTAGE.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IFSTAGE
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
 
ENTITY testIFSTAGE IS
END testIFSTAGE;
 
ARCHITECTURE behavior OF testIFSTAGE IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IFSTAGE
    PORT(
         PC_Immed : IN  std_logic_vector(31 downto 0);
         PC_sel : IN  std_logic;
         PC_LdEn : IN  std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Instr : OUT  std_logic_vector(10 downto 0)
        );
    END COMPONENT;
    component RAM
    port (  
        clk     : in std_logic;  
        inst_addr : in std_logic_vector(10 downto 0);  
        inst_dout : out std_logic_vector(31 downto 0);  
        data_we     : in std_logic:='0';
        data_addr     : in std_logic_vector(10 downto 0);  
        data_din     : in std_logic_vector(31 downto 0);  
        data_dout  : out std_logic_vector(31 downto 0));  
    end component;

   --Inputs
   signal PC_Immed : std_logic_vector(31 downto 0) := (others => '0');
   signal PC_sel : std_logic := '0';
   signal PC_LdEn : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';
	signal inst_addr:std_logic_vector(10 downto 0):="00000000000";
	signal data_we:std_logic:='0';
	signal data_addr:std_logic_vector(10 downto 0):="00000000000";
	signal data_din:std_logic_vector(31 downto 0):="00000000000000000000000000000000";


 	--Outputs
   signal Instr : std_logic_vector(10 downto 0);
	signal inst_dout:std_logic_vector(31 downto 0);
	signal data_dout:std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IFSTAGE PORT MAP (
          PC_Immed => PC_Immed,
          PC_sel => PC_sel,
          PC_LdEn => PC_LdEn,
          Reset => Reset,
          Clk => Clk,
          Instr => Instr
        );
	uut2:RAM PORT MAP(
			clk=>Clk,
			inst_addr=>Instr,
			inst_dout=>inst_dout,
			data_we=>data_we,
			data_addr=>data_addr,
			data_din=>data_din,
			data_dout=>data_dout
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
		PC_Immed<="00000000000000000000000000000000";
		PC_Sel<='0';
		PC_LdEn<='0';
		Reset<='1';
      wait for 20 ns;
		PC_Immed<="00000000000000000000000000000000";
		PC_Sel<='0';
		PC_LdEn<='1';
		Reset<='1';
		wait for 20 ns;
		PC_Immed<="00000000000000000000000000000000";
		PC_Sel<='0';
		PC_LdEn<='1';
		Reset<='0';
		wait for 40 ns;
		PC_Immed<="00000000000000000000000000000100";
		PC_Sel<='1';
		PC_LdEn<='1';
		Reset<='0';
		wait for 20 ns;
		PC_Immed<="00000000000000000000000000000100";
		PC_Sel<='0';
		PC_LdEn<='0';
		Reset<='0';
		wait for 20 ns;
		PC_Immed<="00000000000000000000000000000100";
		PC_Sel<='1';
		PC_LdEn<='1';
		Reset<='0';
		wait for 20 ns;
      wait;
   end process;

END;

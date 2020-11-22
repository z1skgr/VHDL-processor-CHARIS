--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:33:52 02/22/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB2/testMEMSTAGE.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MEMSTAGE
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
 
ENTITY testMEMSTAGE IS
END testMEMSTAGE;
 
ARCHITECTURE behavior OF testMEMSTAGE IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEMSTAGE
    PORT(
         clk : IN  std_logic;
         Mem_WrEn : IN  std_logic;
         ALU_MEM_Addr : IN  std_logic_vector(31 downto 0);
         MEM_DataIn : IN  std_logic_vector(31 downto 0);
			ALU_MEM_Addr_new:out std_logic_vector(10 downto 0);
         MEM_DataOut : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    component RAM
    port (  
        clk     : in std_logic;  
        inst_addr : in std_logic_vector(10 downto 0);  
        inst_dout : out std_logic_vector(31 downto 0);  
        data_we     : in std_logic;
        data_addr     : in std_logic_vector(10 downto 0);  
        data_din     : in std_logic_vector(31 downto 0);  
        data_dout  : out std_logic_vector(31 downto 0));  
    end component;

   --Inputs
   signal clk : std_logic := '0';
   signal Mem_WrEn : std_logic := '0';
   signal ALU_MEM_Addr : std_logic_vector(31 downto 0) := (others => '0');
   signal MEM_DataIn : std_logic_vector(31 downto 0) := (others => '0');
	signal inst_dout: std_logic_vector(31 downto 0):=(others=>'0');
	signal inst_addr:std_logic_vector(10 downto 0):="00000000000";

	signal data_addr:std_logic_vector(10 downto 0):="00000000000";
 	--Outputs
   signal MEM_DataOut : std_logic_vector(31 downto 0);
	signal data_dout: std_logic_vector(31 downto 0);
	signal ALU_MEM_Addr_new:std_logic_vector(10 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMSTAGE PORT MAP (
          clk => clk,
          Mem_WrEn => Mem_WrEn,
          ALU_MEM_Addr => ALU_MEM_Addr,
          MEM_DataIn => MEM_DataIn,
			 ALU_MEM_Addr_new=>ALU_MEM_Addr_new,
          MEM_DataOut => MEM_DataOut
        );
		  
	uut2:RAM PORT MAP(
			clk=>Clk,
			inst_addr=>inst_addr,
			inst_dout=>inst_dout,
			data_we=>Mem_WrEn,
			data_addr=>ALU_MEM_Addr_new,
			data_din=>MEM_DataOut,
			data_dout=>data_dout
	);

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;
		Mem_WrEn<='0';
		MEM_DataIn<="00000000000000000000000000000010";
		ALU_MEM_Addr<="00000000000000000000000000000000";
		wait for 100 ns;
		ALU_MEM_Addr<="00000000000000000000000000000100";
		Mem_WrEn<='1';
		wait for 100 ns;
		Mem_WrEn<='0';
		ALU_MEM_Addr<="00000000000000000000000000001100";
		MEM_DataIn<="00000000000000000000000000100000";
		wait for 100 ns;
		Mem_WrEn<='1';
		



      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:26:21 02/17/2018
-- Design Name:   
-- Module Name:   C:/Users/xristos ziskas/Documents/Xilinx/organwsh/LAB1/testMux32to1.vhd
-- Project Name:  LAB1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux32to1_32bit
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
 
ENTITY testMux32to1 IS
END testMux32to1;
 
ARCHITECTURE behavior OF testMux32to1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux32to1_32bit
    PORT(
         Q0 : IN  std_logic_vector(31 downto 0);
         Q1 : IN  std_logic_vector(31 downto 0);
         Q2 : IN  std_logic_vector(31 downto 0);
         Q3 : IN  std_logic_vector(31 downto 0);
         Q4 : IN  std_logic_vector(31 downto 0);
         Q5 : IN  std_logic_vector(31 downto 0);
         Q6 : IN  std_logic_vector(31 downto 0);
         Q7 : IN  std_logic_vector(31 downto 0);
         Q8 : IN  std_logic_vector(31 downto 0);
         Q9 : IN  std_logic_vector(31 downto 0);
         Q10 : IN  std_logic_vector(31 downto 0);
         Q11 : IN  std_logic_vector(31 downto 0);
         Q12 : IN  std_logic_vector(31 downto 0);
         Q13 : IN  std_logic_vector(31 downto 0);
         Q14 : IN  std_logic_vector(31 downto 0);
         Q15 : IN  std_logic_vector(31 downto 0);
         Q16 : IN  std_logic_vector(31 downto 0);
         Q17 : IN  std_logic_vector(31 downto 0);
         Q18 : IN  std_logic_vector(31 downto 0);
         Q19 : IN  std_logic_vector(31 downto 0);
         Q20 : IN  std_logic_vector(31 downto 0);
         Q21 : IN  std_logic_vector(31 downto 0);
         Q22 : IN  std_logic_vector(31 downto 0);
         Q23 : IN  std_logic_vector(31 downto 0);
         Q24 : IN  std_logic_vector(31 downto 0);
         Q25 : IN  std_logic_vector(31 downto 0);
         Q26 : IN  std_logic_vector(31 downto 0);
         Q27 : IN  std_logic_vector(31 downto 0);
         Q28 : IN  std_logic_vector(31 downto 0);
         Q29 : IN  std_logic_vector(31 downto 0);
         Q30 : IN  std_logic_vector(31 downto 0);
         Q31 : IN  std_logic_vector(31 downto 0);
         Sign : IN  std_logic_vector(4 downto 0);
         Outm : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Q0 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q2 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q3 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q4 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q5 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q6 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q7 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q8 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q9 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q10 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q11 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q12 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q13 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q14 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q15 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q16 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q17 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q18 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q19 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q20 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q21 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q22 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q23 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q24 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q25 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q26 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q27 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q28 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q29 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q30 : std_logic_vector(31 downto 0) := (others => '0');
   signal Q31 : std_logic_vector(31 downto 0) := (others => '0');
   signal Sign : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Outm : std_logic_vector(31 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux32to1_32bit PORT MAP (
          Q0 => Q0,
          Q1 => Q1,
          Q2 => Q2,
          Q3 => Q3,
          Q4 => Q4,
          Q5 => Q5,
          Q6 => Q6,
          Q7 => Q7,
          Q8 => Q8,
          Q9 => Q9,
          Q10 => Q10,
          Q11 => Q11,
          Q12 => Q12,
          Q13 => Q13,
          Q14 => Q14,
          Q15 => Q15,
          Q16 => Q16,
          Q17 => Q17,
          Q18 => Q18,
          Q19 => Q19,
          Q20 => Q20,
          Q21 => Q21,
          Q22 => Q22,
          Q23 => Q23,
          Q24 => Q24,
          Q25 => Q25,
          Q26 => Q26,
          Q27 => Q27,
          Q28 => Q28,
          Q29 => Q29,
          Q30 => Q30,
          Q31 => Q31,
          Sign => Sign,
          Outm => Outm
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
	Q0<="00000000000000000000000000000001";
	Sign<="00000";
	Q1<="00000000000000000000000000000010";
	Q2<="00000000000000000000000000011101";
	Q3<="00000000000111000000000000000001";
	Q4<="00000000000000000000000000000001";
	Q5<="11111000000000000000000000000001";
	Q6<="00000000001100000000000000000001";
	Q10<="00000000000000000000000000000001";
	Q15<="00000000011110000000000000000001";
   Q19<="00001111000000000000000000000001";
   Q23<="00000000000000000000000000000001";
   Q27<="11111111000000000000000000000001";
   Q31<="00000000000000111111100000000001";
  
   -- hold reset state for 100 ns.
      wait for 100 ns;	
Q0<="00000000000000000000000000000001";
	Sign<="00001";
	Q1<="00000000000000000000000000000010";
	Q2<="00000000000000000000000000011101";
	Q3<="00000000000111000000000000000001";
	Q4<="00000000000000000000000000000001";
	Q10<="00000000000000000000000000000001";
	Q15<="00000000011110000000000000000001";
   Q19<="00001111000000000000000000000001";
   Q23<="00000000000000000000000000000001";
   Q27<="11111111000000000000000000000001";
   Q31<="00000000000000111111100000000001";
   

   wait for 100 ns;	
Q0<="00000000000000000000000000000001";
	Sign<="11111";
	Q1<="00000000000000000000000000000010";
	Q2<="00000000000000000000000000011101";
	Q3<="00000000000111000000000000000001";
	Q4<="00000000000000000000000000000001";
	Q10<="00000000000000000000000000000001";
	Q15<="00000000011110000000000000000001";
   Q19<="00001111000000000000000000000001";
   Q23<="00000000000000000000000000000001";
   Q27<="11111111000000000000000000000001";
   Q31<="00000000000000111111100000000001";
  
      -- insert stimulus here 

   wait for 100 ns;	
Q0<="00000000000000000000000000000001";
	Sign<="01101";
	Q1<="00000000000000000000000000000010";
	Q2<="00000000000000000000000000011101";
	Q3<="00000000000111000000000000000001";
	Q4<="00000000000000000000000000000001";
	Q10<="00000000000000000000000000000001";
	Q15<="00000000011110000000000000000001";
   Q19<="00001111000000000000000000000001";
   Q23<="00000000000000000000000000000001";
   Q27<="11111111000000000000000000000001";
   Q31<="00000000000000111111100000000001";
   
      wait;
   end process;

END;

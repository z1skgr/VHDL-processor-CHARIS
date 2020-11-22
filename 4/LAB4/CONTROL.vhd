----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:04:35 03/20/2018 
-- Design Name: 
-- Module Name:    CONTROL - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CONTROL is
port( Clk:in std_logic;
		Instr:in std_logic_vector(31 downto 0);
		Zero:in std_logic;
		COUNT:in std_logic_vector(4 downto 0);
		Reset: in std_logic;
		PC_Sel:out std_logic;
		PC_LdEn:out std_logic;
		RF_WrEn:out std_logic;
		MUXCounter_sel:out std_logic;
		COUNTER_sel:out std_logic;
		RF_WrData_sel:out std_logic;
		RF_WrData2_sel:out std_logic;
		RF_B_sel:out std_logic;
		ALU_Bin_Sel:out std_logic;
		ALU_Ain_Sel:out std_logic;
		ALU_Cin_sel:out std_logic;
		ALU_Din_sel:out std_logic;
		ALU_Ein_sel:out std_logic;
		ALUReg_En:out std_logic;
		POLY2_sel:out std_logic;
		POLY2Reg_En:out std_logic;
		ADDR_sel:out std_logic;
		MEM_Dout_sel:out std_logic;
		MEM_Din_sel:out std_logic;
		ALUop:out std_logic_vector(2 downto 0);
		MEM_WrEn:out std_logic		
);
end CONTROL;

architecture Behavioral of CONTROL is
type stateType is  (resetS,fetchS,finalS,RtypeS,ItypeIS,RexecS,poly2aS,poly2bS,poly2cS,poly2dS,poly2eS,poly2fS,poly2gS,newInstS,ItypeS,IexecS,IexeclS,bS,beqS,bneS,memoryS,
							mem_lS,mem_sS,mem_rfstS,mem_rfldS,mem_rfldcS,mem_lcS);
signal currentS, nextS: stateType;
signal op,func: std_logic_vector(5 downto 0);
begin
func<=Instr(5 downto 0);
op<=Instr(31 downto 26);
fsm_sync:process(op,func,currentS,Zero,COUNT)
begin
case currentS is
	when fetchS=>if op="100000" then
	              nextS<=RtypeS;
					  ALUop<="100";
				 elsif op="111111" then
                 nextS<=bS;
					  ALUop<="110";
			    elsif op(5 downto 1)="11100" then
                 nextS<=ItypeIS; 
					  ALUop<="010";
				 elsif op(5 downto 4)="11" then
						nextS<=ItypeS;
						if op="110011" then --ori
							ALUop<="001";
						elsif op="110010" then --nandi
							ALUop<="000";
						elsif op="110000" then	
							ALUop<="010"; 	--add
						elsif op="110001" then
							ALUop<="111"; --mmxaddibyte
						else
							ALUop<="010";
						end if;
				 elsif op="000000" then
                 nextS<=beqS;
					  ALUop<="110";
				 elsif op="000001" then
                 nextS<=bneS;
					  ALUop<="110";
				 else
                  nextS<=memoryS;
						ALUop<="010";
             end if;
				      PC_Sel<='0';
						PC_LdEn<='0';
						RF_WrEn<='0';
						RF_WrData_sel<='0';
						RF_B_sel<='0';
						ALU_Ain_Sel<='0';
						ALU_Bin_Sel<='0';
						ALUReg_En<='0';
						MEM_Dout_sel<='0';
						MEM_Din_sel<='0';
						MEM_WrEn<='0';
						COUNTER_sel<='0';
						MUXCounter_sel<='0';
						ALU_Cin_sel<='0';
						ALU_Din_sel<='0';
						POLY2_sel<='0';
						POLY2Reg_En<='0';
						ADDR_sel<='0';
						RF_WrData2_sel<='0';
						ALU_Ein_sel<='0';

		
		 when RtypeS=>    PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								ALUReg_En<='1';
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								if func="010000" then
									nextS<=poly2aS;
								else
									nextS<=RexecS;
								end if;
								ALU_Ein_sel<='0';
							
		
	  when poly2aS=> 		PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='1';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								ALUReg_En<='1';
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='1';
								ALU_Din_sel<='0';
								ADDR_sel<='1';
								RF_WrData2_sel<='1';
								POLY2Reg_En<='0';
								POLY2_sel<='0';
								nextS<=poly2bS;
								ALU_Ein_sel<='0';
		
		when poly2bS=> 	PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='1';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								ALUReg_En<='1';
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='1';
								ALU_Din_sel<='0';
								ADDR_sel<='1';
								RF_WrData2_sel<='1';
								POLY2Reg_En<='1';
								POLY2_sel<='0';
								nextS<=poly2cS;
								ALU_Ein_sel<='0';
								
		when poly2cS=> 		PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='1';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								ALUReg_En<='1';
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='1';
								ADDR_sel<='1';
								RF_WrData2_sel<='1';
								POLY2Reg_En<='0';
								POLY2_sel<='1';
								nextS<=poly2dS;
								ALU_Ein_sel<='0';
		
		when poly2dS=> 	PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='1';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								ALUReg_En<='1';
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='1';
								ADDR_sel<='1';
								RF_WrData2_sel<='1';
								POLY2Reg_En<='1';
								POLY2_sel<='1';
								nextS<=poly2eS;
								ALU_Ein_sel<='0';
								
		when poly2eS=> 	PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='1';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								ALUReg_En<='1';
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								ADDR_sel<='1';
								RF_WrData2_sel<='1';
								POLY2Reg_En<='0';
								POLY2_sel<='1';
								nextS<=poly2fS;
								ALUop<="010";
								ALU_Ein_sel<='1';
		
		when poly2fS=> 	PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='1';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								ALUReg_En<='1';
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								ADDR_sel<='1';
								RF_WrData2_sel<='1';
								POLY2Reg_En<='1';
								POLY2_sel<='1';
								nextS<=poly2gS;
								ALU_Ein_sel<='1';
								
		when poly2gS=> 	PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='1';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='1';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								ALUReg_En<='0';
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								ADDR_sel<='1';
								RF_WrData2_sel<='1';
								POLY2Reg_En<='0';
								POLY2_sel<='1';
								nextS<=newInstS;
								ALUop<="010";
								ALU_Ein_sel<='1';
								
								
     
	  when RexecS=> PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='1';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								nextS<= newInstS;
								ALUReg_En<='1';
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
		
		when newInstS=>	PC_Sel<='0';
								PC_LdEn<='1';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								nextS<= finalS;
								ALUReg_En<='0';
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';

								
		when finalS=>PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';
								ALUReg_En<='0';
								nextS<= fetchS;
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';

									
		when ItypeS=>	PC_Sel<='0';
							PC_LdEn<='0';
							RF_WrEn<='0';
							RF_WrData_sel<='0';
							RF_B_sel<='0';
							ALU_Bin_Sel<='1';
							ALU_Ain_Sel<='0';
							MEM_Dout_sel<='0';
							MEM_Din_sel<='0';
							MEM_WrEn<='0';
							ALUReg_En<='1';					
							nextS<= IexecS;
							COUNTER_sel<='0';
							MUXCounter_sel<='0';
							ALU_Cin_sel<='0';
							ALU_Din_sel<='0';
							POLY2_sel<='0';
							POLY2Reg_En<='0';
							ADDR_sel<='0';
							RF_WrData2_sel<='0';
							ALU_Ein_sel<='0';
							
							
		when ItypeIS=>	PC_Sel<='0';
							PC_LdEn<='0';
							RF_WrEn<='0';
							RF_WrData_sel<='0';
							RF_B_sel<='0';
							ALU_Bin_Sel<='1';
							ALU_Ain_Sel<='1';
							MEM_Dout_sel<='0';
							MEM_Din_sel<='0';
							MEM_WrEn<='0';
							ALUReg_En<='1';
							COUNTER_sel<='0';
							MUXCounter_sel<='0';
		               nextS<= IexeclS;
							ALU_Cin_sel<='0';
							ALU_Din_sel<='0';
							POLY2_sel<='0';
							POLY2Reg_En<='0';
							ADDR_sel<='0';
							RF_WrData2_sel<='0';
							ALU_Ein_sel<='0';


		when IexeclS=>PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='1';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='1';
								ALU_Ain_Sel<='1';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								ALUReg_En<='1';
								nextS<=newInstS;
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
								
		
		when IexecS=>PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='1';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='1';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								nextS<= newInstS;
								ALUReg_En<='1';
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
		
      when bS=>         PC_Sel<='1';
								PC_LdEn<='1';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								nextS<= finalS;
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';								
		
		
		when bneS=>       PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='1';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';									
								if  Zero='0' then
		                    nextS<=bS;
							   else
							     nextS<= newInstS;
							   end if;
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
								
		when beqS=>       PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='1';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								if  Zero='1' then
		                    nextS<=bS;
							   else
							     nextS<= newInstS;
							   end if;
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
								
       when memoryS=>   PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='1';
								ALU_Bin_Sel<='1';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';
								ALUReg_En<='1';
								if  op="000011" OR op="001111" then
		                    nextS<=mem_lS;
							   elsif op="000111" OR op="011111" then
							     nextS<=mem_sS;
								elsif op="011110" then
									nextS<=mem_rfstS;
								elsif op="011100" then
									nextS<=mem_rfldS;
								else
									nextS<=memoryS;
							   end if;
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
		
		 when mem_rfstS=>PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='1';
								ALUReg_En<='1';
								ALU_Bin_Sel<='1';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='1';
								if COUNT="11111" then
									nextS<=newInstS;
								else
									nextS<=mem_rfstS;
								end if;
								COUNTER_sel<='1';
								MUXCounter_sel<='1';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
								
		 when mem_rfldS=>PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='1';----
								RF_B_sel<='1'; --------
								ALU_Bin_Sel<='1';------
								ALU_Ain_Sel<='0';
								MEM_Din_sel<='0'; -----
								MEM_WrEn<='0';
								ALUReg_En<='1';
								MEM_Dout_sel<='0';
								nextS<=mem_rfldcS;
								COUNTER_sel<='1';
								MUXCounter_sel<='1';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
																
		when mem_rfldcS=>PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='1';
								ALUReg_En<='0';
								RF_WrData_sel<='1';----
								RF_B_sel<='1'; --------
								ALU_Bin_Sel<='1';------
								ALU_Ain_Sel<='0';
								MEM_Din_sel<='0'; -----
								MEM_Dout_sel<='0';
								MEM_WrEn<='0';
								COUNTER_sel<='0';
								MUXCounter_sel<='1';
								if COUNT="11111" then
									nextS<=newInstS;
								else
									nextS<=mem_rfldS;
								end if;
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
		 
       when mem_lS=>   PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='1';----
								RF_B_sel<='1'; --------
								ALU_Bin_Sel<='1';------
								ALU_Ain_Sel<='0';
								MEM_Din_sel<='0'; -----
								MEM_WrEn<='0';
								ALUReg_En<='1';
								if op="000011" then
									MEM_Dout_sel<='1';
								else
									MEM_Dout_sel<='0';
								end if;
								nextS<=mem_lcS;
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
		
		when mem_lcS=>PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='1';
								ALUReg_En<='1';
								RF_WrData_sel<='1';----
								RF_B_sel<='1'; --------
								ALU_Bin_Sel<='1';------
								ALU_Ain_Sel<='0';
								MEM_Din_sel<='0'; -----
								MEM_WrEn<='0';
								nextS<=newInstS;
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
													
								
      when mem_sS=>   PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='1';
								ALUReg_En<='1';
								ALU_Bin_Sel<='1';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_WrEn<='1';
								if op="000111" then
									MEM_Din_sel<='1';
								else
									MEM_Din_sel<='0';
								end if;
                        nextS<=newInstS;
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
								
		when resetS=>		PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';
								ALUop<="111";
								ALUReg_En<='0';
								nextS<=fetchS;
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
								
		when others=>     nextS<=fetchS;
		                  PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALUReg_En<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';
								ALUop<="111";
								COUNTER_sel<='0';
								MUXCounter_sel<='0';
								ALU_Cin_sel<='0';
								ALU_Din_sel<='0';
								POLY2_sel<='0';
								POLY2Reg_En<='0';
								ADDR_sel<='0';
								RF_WrData2_sel<='0';
								ALU_Ein_sel<='0';
				 
  end case;
end process fsm_sync;



rst_sync: process (Clk, Reset)
begin
 if (Reset='1') then currentS <= resetS;
 elsif (rising_edge(Clk)) then currentS <= nextS;
 end if;
end process rst_sync;
end Behavioral;



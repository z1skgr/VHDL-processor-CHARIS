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
		Reset: in std_logic;
		PC_Sel:out std_logic;
		PC_LdEn:out std_logic;
		RF_WrEn:out std_logic;
		RF_WrData_sel:out std_logic;
		RF_B_sel:out std_logic;
		ALU_Bin_Sel:out std_logic;
		ALU_Ain_Sel:out std_logic;
		MEM_Dout_sel:out std_logic;
		MEM_Din_sel:out std_logic;
		ALUop:out std_logic_vector(2 downto 0);
		MEM_WrEn:out std_logic		
);
end CONTROL;

architecture Behavioral of CONTROL is
type stateType is  (resetS,fetchS,finalS,RtypeS,RexecS,newInstS,ItypeS,IexecS,IexeclS,bS,beqS,bneS,memoryS
							,mem_lS,mem_sS,mem_lcS);
signal currentS, nextS: stateType;
signal op,func: std_logic_vector(5 downto 0);
begin
func<=Instr(5 downto 0);
op<=Instr(31 downto 26);
fsm_sync:process(op,func,currentS,Zero)
begin
case currentS is
	when fetchS=>if op="100000" then
	              nextS<=RtypeS;
					  ALUop<="100";
				 elsif op="111111" then
                 nextS<=bS;
					  ALUop<="110";
			    elsif op(5 downto 4)="11" then
                 nextS<=ItypeS; 
					  if op="110011" then --ori
							ALUop<="001";
						elsif op="110010" then --nandi
							ALUop<="000";
						else	
							ALUop<="010"; 	--add
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
						MEM_Dout_sel<='0';
						MEM_Din_sel<='0';
						MEM_WrEn<='0';									
		
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
								nextS<= RexecS;
     
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
								nextS<= fetchS;
									
		when ItypeS=>	PC_Sel<='0';
							PC_LdEn<='0';
							RF_WrEn<='0';
							RF_WrData_sel<='0';
							RF_B_sel<='0';
							ALU_Bin_Sel<='1';
							ALU_Ain_Sel<='1';
							MEM_Dout_sel<='0';
							MEM_Din_sel<='0';
							MEM_WrEn<='0';
							if  op(5 downto 1)="11100" then
		                    nextS<= IexeclS;
							else
							     nextS<= IexecS;
							end if;
							
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
								nextS<=newInstS;
		
		when IexecS=>PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='1';
								RF_WrData_sel<='0';
								RF_B_sel<='1';
								ALU_Bin_Sel<='1';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
								nextS<= newInstS;
		
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
								if  op="000011" OR op="001111" then
		                    nextS<=mem_lS;
							   elsif op="000111" OR op="011111" then
							     nextS<=mem_sS;
								else
									nextS<=memoryS;
							   end if;

       when mem_lS=>   PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='1';----
								RF_B_sel<='1'; --------
								ALU_Bin_Sel<='1';------
								ALU_Ain_Sel<='0';
								MEM_Din_sel<='0'; -----
								MEM_WrEn<='0';
								if op="000011" then
									MEM_Dout_sel<='1';
								else
									MEM_Dout_sel<='0';
								end if;
								nextS<=mem_lcS;
		
		when mem_lcS=>PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='1';
								RF_WrData_sel<='1';----
								RF_B_sel<='1'; --------
								ALU_Bin_Sel<='1';------
								ALU_Ain_Sel<='0';
								MEM_Din_sel<='0'; -----
								MEM_WrEn<='0';
								nextS<=newInstS;
													
								
      when mem_sS=>   PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='1';
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
								
		when others=>     nextS<=fetchS;
		                  PC_Sel<='0';
								PC_LdEn<='0';
								RF_WrEn<='0';
								RF_WrData_sel<='0';
								RF_B_sel<='0';
								ALU_Bin_Sel<='0';
								ALU_Ain_Sel<='0';
								MEM_Dout_sel<='0';
								MEM_Din_sel<='0';
								MEM_WrEn<='0';	
				 
  end case;
end process fsm_sync;



rst_sync: process (Clk, Reset)
begin
 if (Reset='1') then currentS <= resetS;
 elsif (rising_edge(Clk)) then currentS <= nextS;
 end if;
end process rst_sync;
end Behavioral;





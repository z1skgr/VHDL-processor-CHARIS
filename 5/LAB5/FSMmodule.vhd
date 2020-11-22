
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMmodule is
	 Port (	Clk:in std_logic;
		Instr:in std_logic_vector(31 downto 0);
		Reset:in std_logic;
		RF_WrEn:out std_logic;
		RF_WrData_sel:out std_logic;
		RF_B_sel:out std_logic;
		ALU_func:out std_logic_vector(3 downto 0);
		MEM_WrEn:out std_logic	);
end FSMmodule;

architecture Behavioral of FSMmodule is
component Reg is
    Port ( Clk : in  STD_LOGIC;
           Data : in  STD_LOGIC_VECTOR (31 downto 0);
			  Rst: in std_logic;
           Dout : out  STD_LOGIC_VECTOR (31 downto 0);
           WE : in  STD_LOGIC);
end component;
signal instrout:std_logic_vector(31 downto 0);
signal check:std_logic;
begin

FSMproc : process (Instr)
	begin

		if Instr(31 downto 26) = "100000" then --add
			
--			if (check='1') then
--			RF_WrEn<='0';
--			else
			RF_WrEn<='1';
--			end if;
			RF_WrData_sel<='0';
			RF_B_sel<='0';
			ALU_func<="0000";
			MEM_WrEn<='0';
		elsif Instr(31 downto 26) = "111000" then --li
--			if (check='1') then
--			RF_WrEn<='0';
--			else
			RF_WrEn<='1';
--			end if;
			RF_WrData_sel<='0';
			RF_B_sel<='0';
			ALU_func<="0000";
			MEM_WrEn<='0';
		elsif Instr(31 downto 26) = "001111" then --lw
--			if (check='1') then
--			RF_WrEn<='0';
--			else
			RF_WrEn<='1';
--			end if;
			RF_WrData_sel<='1';
			RF_B_sel<='1';
			ALU_func<="0000";
			MEM_WrEn<='0';
		elsif Instr(31 downto 26) = "011111" then --sw
			RF_WrEn<='0';
			RF_WrData_sel<='0';
			RF_B_sel<='1';
			ALU_func<="0000";
			MEM_WrEn<='1';
		else --nothing
			RF_WrEn<='0';
			RF_WrData_sel<='0';
			RF_B_sel<='0';
			ALU_func<="1111";
			MEM_WrEn<='0';						
		end if;

		
	end process;
	
Regi: Reg 
    Port map( Clk=>Clk,
           Data=>Instr,
			  Rst=>Reset,
           Dout=>instrout,
           WE=>'1');
			  
check<='1' when Instr=instrout else
		'0';

end Behavioral;


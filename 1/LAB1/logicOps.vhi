
-- VHDL Instantiation Created from source file logicOps.vhd -- 18:22:53 02/15/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT logicOps
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		Op : IN std_logic_vector(3 downto 0);          
		Outp : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_logicOps: logicOps PORT MAP(
		A => ,
		B => ,
		Op => ,
		Outp => 
	);



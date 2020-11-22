
-- VHDL Instantiation Created from source file ALU.vhd -- 00:46:28 02/19/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		Op : IN std_logic_vector(3 downto 0);          
		Outp : OUT std_logic_vector(31 downto 0);
		Zero : OUT std_logic;
		Cout : OUT std_logic;
		Ovf : OUT std_logic
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		A => ,
		B => ,
		Op => ,
		Outp => ,
		Zero => ,
		Cout => ,
		Ovf => 
	);



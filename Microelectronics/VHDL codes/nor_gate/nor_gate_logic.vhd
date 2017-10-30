LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor_gate IS 

	PORT ( a, b : IN std_ulogic ;
		c_logic : OUT std_ulogic ) ;

END nor_gate;




ARCHITECTURE nor_logic1 OF nor_gate  IS
BEGIN	

	c_logic <= a NOR b;


END nor_logic1;



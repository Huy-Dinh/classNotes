LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor_gate IS 

	PORT ( a, b : IN std_ulogic ;
		c : OUT std_ulogic ) ;

END nor_gate;




ARCHITECTURE nor_selected OF nor_gate  IS
  SIGNAL abor : std_ulogic_vector(1 downto 0) ; 

BEGIN	
	abor <= a & b;

	with (abor) select
	 c  <= '1' AFTER 10 ns when "00" ,
	        '0' AFTER 10 NS when others;


END nor_selected;



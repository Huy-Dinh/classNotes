LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor_gate_when IS 
	PORT ( a, b : IN std_ulogic;
		c_when: OUT std_ulogic;

END nor_gate_when;


ARCHITECTURE when_nor OF nor_gate IS
BEGIN

	c_when<=  '1' after 10ns WHEN a = '0' AND b = '0' ELSE
		'0' after 10ns;

END when_nor;


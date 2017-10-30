LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor_gate_if IS 
	PORT ( a, b : IN std_ulogic;
		c_if:OUT std_ulogic;
);
END nor_gate_if;




ARCHITECTURE nor_if OF nor_gate IS

BEGIN
	PROCESS (a, b)
	BEGIN
	IF (a = '0') AND (b = '0') THEN
	   c_if <= '1' AFTER 10ns;
        ELSE 
	   c_if <= '0' AFTER 10ns; 
	END IF;
	END PROCESS;
END nor_if;



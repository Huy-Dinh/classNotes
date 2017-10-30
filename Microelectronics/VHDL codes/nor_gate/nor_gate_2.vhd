ENTITY nor_gate IS
  PORT(a,b: IN BIT;
	c: OUT BIT);
END nor_gate;

ARCHITECTURE data_flow_no_delay OF nor_gate IS

BEGIN
     c<='1' WHEN a='0' AND b='0' ELSE
	'0' WHEN a='0' AND b='1' ELSE
	'0' WHEN a='1' AND b='0' ELSE
	'0' WHEN a='1' AND b='1' ELSE
	'0';
END data_flow_no_delay;

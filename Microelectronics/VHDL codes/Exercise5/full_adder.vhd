entity full_adder is
port (x, y, z : in BIT;
	c, s : out BIT);
end full_adder;

architecture dataflow_full of full_adder is
	component half_adder
		port(a, b : in BIT;
		c, s : out BIT);
	end component;
	signal hs, hc, tc: BIT;
	FOR HA1,HA2: half_adder USE ENTITY work.half_adder;
	begin
		HA1: half_adder
		port map (x, y, hc, hs);
		HA2: half_adder
		port map (hs, z, tc, s);
		c <= tc or hc;
end dataflow_full;

entity tb_nor is
end tb_nor;

architecture testvec of tb_nor is
signal A_in, B_in: bit;
signal C_out: bit;

component nor_gate
PORT (a, b: IN BIT;
	c : OUT BIT );
end component;

for u1: nor_gate use entity work.nor_gate;
begin
u1: nor_gate port map(A_in, B_in, C_out);
	a_in <= '0', '0' after 100 ns, '1' after 200 ns, '1' after 300 ns;
	b_in <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns;
end testvec;

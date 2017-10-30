entity adderTestBench is
Port(	signal A_in,B_in : in std_logic_vector(3 downto 0);
	signal S_out : out std_logic_vector(3 downto 0);
	signal C_in: std_logic;
	signal c4_out : std_logic);
end adderTestBench;

architecture TestBenchArch of adderTestBench is

component Rip_Ad
	port (a,b : in bit_vector(3 downto 0);
	s : out bit_vector(3 downto 0);
	c0: in bit;
	c4 : out bit);
end component;

for u1: Rip_Ad use entity work.Rip_Ad;
begin
u1:Rip_Ad port map(A_in, B_in, S_out, C_in, c4_out);
testpattern: process
begin
	C_in <= '0';
	A_in <= "1101";
	B_in <= "0100"; 
	wait for 10 ns;
	assert (c4_out = '1' and S_out = "0001") report "ERROR: Test 1 failed" severity error;
	wait for 390 ns;
	A_in <= "1100";
	B_in <= "0010";
	wait for 10 ns;
	assert (c4_out = '0' and S_out = "1110") report "ERROR: Test 2 failed" severity error;
end process;
end architecture;
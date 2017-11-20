entity array_multi_tb is
end array_multi_tb;

architecture testBenchArch of array_multi_tb is
signal X_in: bit_vector (3 downto 0);
signal Y_in: bit_vector (3 downto 0);
signal P_out: bit_vector (7 downto 0);

component myArrayMult
  port(X, Y: in bit_vector(3 downto 0);
  P: out bit_vector(7 downto 0));
end component;

for U1: myArrayMult use entity work.Array_Mult;
begin
U1: myArrayMult port map (X_in, Y_in, P_out);
testProcess: PROCESS
BEGIN
  X_in <= "0001";
  Y_in <= "0001";
  wait for 10ns;
  assert (P_out = "00000001") report "Test 1 failed" severity error;
  wait for 50ns;

  X_in <= "0011";
  Y_in <= "1001";
  wait for 10ns;
  assert (P_out = "00011011") report "Test 2 failed" severity error;
  wait;
end PROCESS;
end testBenchArch;

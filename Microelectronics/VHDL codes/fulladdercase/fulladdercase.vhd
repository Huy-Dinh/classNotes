library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladdercase is
 Port(A:in bit;
      B:in bit;
      Cin: in bit;
      S : out bit;
      Cout : out bit);
end fulladdercase;
architecture Behavioural of fulladdercase is
	signal A_B_Cin: bit_vector(2 downto 0);
	signal Sout: bit_vector(1 downto 0);

begin
	A_B_Cin<=A&B&Cin;
	via: PROCESS(A,B,Cin,A_B_Cin)
		begin

	case A_B_Cin is
		when "000" => S <='0';Cout<='0';
		when "100" => S <='1';Cout<='0';
		when "010" => S <='1';Cout<='0';
		when "110" => S <='0';Cout<='1';
		when "001" => S <='1';Cout<='0';
		when "011" => S <='0';Cout<='1';
		when "101" => S <='0';Cout<='1';
		when "111" => S <='1';Cout<='1';

end case;
end process via;
end architecture Behavioural;
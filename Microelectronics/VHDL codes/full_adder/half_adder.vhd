library ieee;
use ieee.std_logic_1164.all;

entity HALF_ADDER is
  port(a,   b:     in  std_logic;
       s, c: out std_logic);
end HALF_ADDER;

architecture DATAFLOW of HALF_ADDER is
begin
    s   <= A xor B;
    C <= A and B;
end DATAFLOW;

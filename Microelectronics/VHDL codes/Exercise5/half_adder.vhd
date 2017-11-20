entity HALF_ADDER is
  port(a,   b:     in  BIT;
       c, s: out BIT);
end HALF_ADDER;

architecture DATAFLOW of HALF_ADDER is
begin
    s   <= A xor B;
    C <= A and B;
end DATAFLOW;

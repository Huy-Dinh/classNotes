library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
 port (x, y, z : in std_logic;
 s, c : out std_logic);
end full_adder;

architecture dataflow_full of full_adder is
 component half_adder
 port(a, b : in std_logic;
 s, c : out std_logic);
 end component;
 signal hs, hc, tc: std_logic;
 FOR HA1,HA2: half_adder USE ENTITY work.half_adder;
 begin
 HA1: half_adder
 port map (x, y, hs, hc);
 HA2: half_adder
 port map (hs, z, s, tc);
 c <= tc or hc;
end dataflow_full;

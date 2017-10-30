library ieee;
use ieee.std_logic_1164.all;

entity ripple_adder is
 port (a, b : in std_logic_vector(3 downto 0);
--	c0: in std_logic;
 s_out: out std_logic_vector(3 downto 0);
 c_out: out std_logic);
end ripple_adder;

architecture struc_dataflow_3 of ripple_adder is
 component full_adder
 port(x, y, z: in std_logic;
 s, c : out std_logic);
 end component;

 signal F0_C, F1_C, F2_C, F3_C: std_logic;
 FOR FA0,FA1,FA2,FA3: full_adder USE ENTITY work.full_adder;
 begin
 FA0: full_adder
 port map (a(0),b(0),'0',s_out(0),F0_C);
 FA1: full_adder
 port map (a(1),b(1),F0_C,s_out(1),F1_C);
 FA2: full_adder
 port map (a(2),b(2),F1_C,s_out(2),F2_C);
 FA3: full_adder
 port map (a(3),b(3),F2_C,s_out(3), F3_C);
 c_out <= f3_c;
--butt
end struc_dataflow_3;

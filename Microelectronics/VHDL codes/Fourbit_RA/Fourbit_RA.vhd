library ieee;
use ieee.std_logic_1164.all;
entity Rip_Ad is
port (a,b : in bit_vector(3 downto 0);
s : out bit_vector(3 downto 0);
c0: in bit;
c4 : out bit);
end Rip_Ad;
architecture structural_4 of Rip_Ad is
component fulladdercase
port(A,B,Cin : in bit;
s, cout : out bit);
end component;
signal c :bit_vector(4 downto 0);
FOR FA1,FA2,FA3,FA4: fulladdercase USE ENTITY work.fulladdercase(Behavioural);
begin
FA1: fulladdercase
port map(a(0),B(0),c0,S(0),C(1) );
FA2: fulladdercase
port map(a(1),B(1),C(1),S(1),C(2) );
FA3: fulladdercase
port map(c(2),B(2),C(2),S(2),C(3) );
FA4: fulladdercase
port map(c(3),B(3),C(3),S(3),C(4) );
--c (0)<= c0;
c4<=C(4);
--FA1: fulladdercase
--port map(a(0),B(0),S(0),C(1) );
--FA2: fulladdercase
--port map(a(1),B(1),S(1),C(2) );
--FA3: fulladdercase
--port map(c(2),B(2),S(2),C(3) );
--FA4: fulladdercase
--port map(c(3),B(3),S(3),C(4) );
--c (0)<= c0;
--c4<=(4);
end structural_4;

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
-- 
--entity Ripple_Adder is
--Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
--B : in STD_LOGIC_VECTOR (3 downto 0);
--Cin : in STD_LOGIC;
--S : out STD_LOGIC_VECTOR (3 downto 0);
--Cout : out STD_LOGIC);
--end Ripple_Adder;
-- 
--architecture Behavioral of Ripple_Adder is
-- 
---- Full Adder VHDL Code Component Decalaration
--component full_adder_vhdl_code
--Port ( A : in STD_LOGIC;
--B : in STD_LOGIC;
--Cin : in STD_LOGIC;
--S : out STD_LOGIC;
--Cout : out STD_LOGIC);
--end component;
-- 
---- Intermediate Carry declaration
--signal c1,c2,c3: STD_LOGIC;
-- 
--begin
-- 
---- Port Mapping Full Adder 4 times
--FA1: full_adder_vhdl_code port map( A(0), B(0), Cin, S(0), c1);
--FA2: full_adder_vhdl_code port map( A(1), B(1), c1, S(1), c2);
--FA3: full_adder_vhdl_code port map( A(2), B(2), c2, S(2), c3);
--FA4: full_adder_vhdl_code port map( A(3), B(3), c3, S(3), Cout);
-- 
--end Behavioral;

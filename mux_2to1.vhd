library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux_2to1 is
    Port ( A,B,SEL : in std_logic;
           O : out std_logic);
end mux_2to1;
architecture Behavioral of mux_2to1  is
begin
    O <= A WHEN SEL ='1' ELSE B;
end Behavioral;
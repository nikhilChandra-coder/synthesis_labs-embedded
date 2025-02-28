library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity equal is
    port(
        A: in std_logic_vector(0 to 7);
        B: in std_logic_vector(0 to 7);
        Y: out std_logic);
end equal;
architecture Behavioral of equal is
begin
    process(A,B)
    begin
      if ( A = B ) then
         Y <= '1';
      else
         Y <= '0';
      end if;
    end process;
end Behavioral;
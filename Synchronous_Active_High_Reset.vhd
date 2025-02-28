library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Synchronous_Active_High_Reset is
  Port ( CLK, D, RESET : in std_logic;
         Q : out std_logic);
end Synchronous_Active_High_Reset;
architecture Behavioral of Synchronous_Active_High_Reset is
begin
process (CLK)
begin
      if rising_edge(CLK) then
        if RESET = '1' then
           Q <= '0';
        else
           Q <= D;
        end if;
      end if;
end process;
end Behavioral;
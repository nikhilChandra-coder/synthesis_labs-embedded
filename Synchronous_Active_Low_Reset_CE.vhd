library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Synchronous_Active_Low_Reset_CE is
  Port ( CLK, D, ENABLE, RESET : in std_logic;
         Q : out std_logic);
end Synchronous_Active_Low_Reset_CE;
architecture Behavioral of Synchronous_Active_Low_Reset_CE is
begin
process (CLK)
begin
      if rising_edge(CLK) then
        if RESET = '0' then
           Q <= '0';
        elsif ENABLE = '1' then
           Q <= D;
        end if;
      end if;
end process;
end Behavioral;
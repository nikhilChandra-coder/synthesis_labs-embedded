library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity encoder_4to1 is
    Port ( 
            A : in  std_logic_vector(0 to 3);
            O: out std_logic_vector(0 to 1));
end encoder_4to1;
architecture Behavioral of encoder_4to1  is
begin
    process(A)
    begin
         case A is
            when "0001" => O <= "00";
            when "0010" => O <= "01";
            when "0100" => O <= "10";
            when "1000" => O <= "11";
            when others => O <= "00";
         end case;
    end process;
end Behavioral;
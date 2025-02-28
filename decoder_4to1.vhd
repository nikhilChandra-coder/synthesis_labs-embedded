library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity decoder_4to1 is
    Port (
            O : out std_logic_vector(0 to 3);
            A: in std_logic_vector(0 to 1));
end decoder_4to1;
architecture Behavioral of decoder_4to1  is
begin
    process(A)
    begin
         case A is
            when "00" => O <= "0001";
            when "01" => O <= "0010";
            when "10" => O <= "0100";
            when "11" => O <= "1000";
            when others => O <= "0000";
         end case;
    end process;
end Behavioral;
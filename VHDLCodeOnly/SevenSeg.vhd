--Objective:
--Convert binary inputs via switch to hexadecimal outputs via the seven segment display
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SevenSeg is
    Port ( Binary : in STD_LOGIC_VECTOR (3 downto 0); --Binary input
           SevenSeg : out STD_LOGIC_VECTOR (6 downto 0)); --Hexadecimal output
end SevenSeg;

architecture Behavioral of SevenSeg is
    begin
        process(Binary)
            begin
                case Binary is
                    when "0000" => SevenSeg <= "1000000";--0
                    when "0001" => SevenSeg <= "1111001";--1
                    when "0010" => SevenSeg <= "0100100";--2
                    when "0011" => SevenSeg <= "0110000";--3
                    when "0100" => SevenSeg <= "0011001";--4
                    when "0101" => SevenSeg <= "0010010";--5
                    when "0110" => SevenSeg <= "0000010";--6
                    when "0111" => SevenSeg <= "1111000";--7
                    when "1000" => SevenSeg <= "0000000";--8
                    when "1001" => SevenSeg <= "0011000";--9
                    when "1010" => SevenSeg <= "0001000";--A
                    when "1011" => SevenSeg <= "0000011";--B
                    when "1100" => SevenSeg <= "1000110";--C
                    when "1101" => SevenSeg <= "0100001";--D
                    when "1110" => SevenSeg <= "0000110";--E
                    when "1111" => SevenSeg <= "0001110";--F
                end case;
        end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SevenSegment is
    Port ( ALUResult : in STD_LOGIC_VECTOR (3 downto 0);--Takes in the binary ALU results
           ToSevenSegment : out STD_LOGIC_VECTOR (6 downto 0));--creates seven segment output
end SevenSegment;

architecture Behavioral of SevenSegment is

begin

convert_binary_to_SevenSeg_Hex : process(ALUResult)
    begin
        case ALUResult is
            when "0000" =>--0
                ToSevenSegment <= "1000000";
            when "0001" =>--1
                ToSevenSegment <= "1111001";
            when "0010" =>--2
                ToSevenSegment <= "0100100";
            when "0011" =>--3
                ToSevenSegment <= "0110000";
            when "0100" =>--4
                ToSevenSegment <= "0011001";
            when "0101" =>--5
                ToSevenSegment <= "0010010";
            when "0110" =>--6
                ToSevenSegment <= "0000010";
            when "0111" =>--7
                ToSevenSegment <= "1111000";
            when "1000" =>--8
                ToSevenSegment <= "0000000";
            when "1001" =>--9
                ToSevenSegment <= "0011000";
            when "1010" =>--A
                ToSevenSegment <= "0001000";
            when "1011" =>--B
                ToSevenSegment <= "0000000";
            when "1100" =>--C
                ToSevenSegment <= "1000110";
            when "1101" =>--D
                ToSevenSegment <= "1000000";
            when "1110" =>--E
                ToSevenSegment <= "0000110";
            when "1111" =>--F
                ToSevenSegment <= "0001110";
        end case;
   end process;
end Behavioral;

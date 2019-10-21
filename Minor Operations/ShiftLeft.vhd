library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ShiftLeft is
    Port ( LeftA : in STD_LOGIC_VECTOR (3 downto 0);--ALU input
           LeftB : in STD_LOGIC_VECTOR (3 downto 0);--ALU input
           selectLineLeft : in STD_LOGIC;--determine which input will be shifted
           ShiftLeftOut : out STD_LOGIC_VECTOR (3 downto 0));--outputs the shifted results
end ShiftLeft;

architecture Behavioral of ShiftLeft is
    SIGNAL unsigning : unsigned(3 downto 0);--needed to create unsigned value for shift
    begin
    determine_bit_shifting : process(selectLineLeft)
        begin
            if(selectLineLeft = '0') then--shift A input
                unsigning <= unsigned(LeftA);
             else -- shift B input
                unsigning <= unsigned(LeftB);
            end if;
    end process;
    ShiftLeftOut <= std_logic_vector(unsigning sll 2);-- performs the shift
end Behavioral;

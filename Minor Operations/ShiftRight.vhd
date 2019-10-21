library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ShiftRight is
    Port ( RightA : in STD_LOGIC_VECTOR (3 downto 0);--ALU input
           RightB : in STD_LOGIC_VECTOR (3 downto 0);--ALU input
           selectLineRight : in STD_LOGIC;--determine which input will be shifted
           ShiftRightOut : out STD_LOGIC_VECTOR (3 downto 0)--outputs the shifted results
         );
end ShiftRight;

architecture Behavioral of ShiftRight is
    SIGNAL unsigning : unsigned(3 downto 0);--needed to create unsigned value for shift
    begin
    determine_bit_shifting : process(selectLineRight)
        begin
            if(selectLineRight = '0') then--shift A input
                unsigning <= unsigned(RightA);
             else--shift B input
                unsigning <= unsigned(RightB);
            end if;
    end process;
    ShiftRightOut <= std_logic_vector(unsigning srl 3);-- performs the shift
end Behavioral;

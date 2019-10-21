library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);--top level first input
           B : in STD_LOGIC_vector (3 downto 0);--top level second input
           selectLine : in STD_LOGIC_VECTOR (2 downto 0);--select line for inputs and operations
           Output : out STD_LOGIC_VECTOR (3 downto 0);--ALU output
           SevenSegOutput : out STD_LOGIC_VECTOR (6 downto 0)--output to seven segment
           );
end ALU;

architecture Behavioral of ALU is

COMPONENT ShiftLeft is--builds component
    Port ( LeftA : in STD_LOGIC_VECTOR (3 downto 0);--ALU input
           LeftB : in STD_LOGIC_VECTOR (3 downto 0);--ALU input
           selectLineLeft : in STD_LOGIC;--determine which input will be shifted
           ShiftLeftOut : out STD_LOGIC_VECTOR (3 downto 0));--outputs the shifted results
END COMPONENT;

COMPONENT ShiftRight is --builds component 
    Port ( RightA : in STD_LOGIC_VECTOR (3 downto 0);--ALU input
           RightB : in STD_LOGIC_VECTOR (3 downto 0);--ALU input
           selectLineRight : in STD_LOGIC;--determine which input will be shifted
           ShiftRightOut : out STD_LOGIC_VECTOR (3 downto 0));--outputs the shifted results
END COMPONENT;

COMPONENT NANDGate is --builds component
    Port ( NANDA : in STD_LOGIC_VECTOR (3 downto 0); --ALU input
           NANDB : in STD_LOGIC_VECTOR (3 downto 0); --ALU input
           NANDOutput : out STD_LOGIC_VECTOR (3 downto 0)); --outputs the NAND result
END COMPONENT;

COMPONENT XORGate is --builds component
    Port ( XORA : in STD_LOGIC_VECTOR (3 downto 0); --ALU Input
           XORB : in STD_LOGIC_VECTOR (3 downto 0); --ALU Input
           XOROutput : out STD_LOGIC_VECTOR (3 downto 0)); --outputs the XOR result
END COMPONENT;

COMPONENT SevenSegment is
    Port ( ALUResult : in STD_LOGIC_VECTOR (3 downto 0);--Takes in the binary ALU results
           ToSevenSegment : out STD_LOGIC_VECTOR (6 downto 0));--creates seven segment output
END COMPONENT;

SIGNAL ShiftLeftResult : std_logic_vector(3 downto 0); --signal for component output
SIGNAL ShiftRightResult : std_logic_vector(3 downto 0); --signal for component output
SIGNAL NANDResult : std_logic_vector(3 downto 0); --signal for component output
SIGNAL XORResult : std_logic_vector(3 downto 0); --signal for component output
SIGNAL BinaryTOHex : std_logic_vector(3 downto 0);--signal to hold any results

begin

--Map component ports to ALU ports
U1 : ShiftRight port map(RightA => A, RightB => B, selectLineRight => selectLine(2), ShiftRightOut => ShiftRightResult);
--Map component ports to ALU ports
U2 : ShiftLeft port map(LeftA => A, LeftB => B, selectLineLeft => selectLine(2), ShiftLeftOut => ShiftLeftResult);
--Map component ports to ALU ports
U3 : NANDGate port map(NANDA => A, NANDB => B, NANDOutput => NANDResult);
--Map component ports to ALU ports
U4 : XORGate port map(XORA => A, XORB => B, XOROutput => XORResult);
--Map component ports to ALU ports
U5 : SevenSegment port map(ALUResult => BinaryToHex, ToSevenSegment => SevenSegOutput);
Determine_ALU_Function : process(selectLine)
    begin
    case selectLine is
        when "000" =>
            BinaryToHex <= ShiftLeftResult;--output when A is shifted left
        when "100" =>
            BinaryToHex <= ShiftLeftResult;--output when B is shifted left
        when "001" =>
            BinaryToHex <= ShiftRightResult;--output when A is shifted right
        when "101" =>
            BinaryToHex <= ShiftRightResult;--output when B is shifted right
        when "010" =>
            BinaryToHex <= NANDResult;--output when A and B are NAND'd
        when "011" =>
            BinaryToHex <= XORResult;--output when A and B are XOR'd
        when others =>
            BinaryToHex <= "0000";
    end case;
    output <= BinaryToHex;--Signal is storing output for desired operation
end process;

end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity XORGate is
    Port ( XORA : in STD_LOGIC_VECTOR (3 downto 0); --ALU Input
           XORB : in STD_LOGIC_VECTOR (3 downto 0); --ALU Input
           XOROutput : out STD_LOGIC_VECTOR (3 downto 0)); --outputs the XOR result
end XORGate;

architecture Behavioral of XORGate is

begin
    XOROutput <= XORA xor XORB;--performs the XOR operation
end Behavioral;

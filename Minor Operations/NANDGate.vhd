library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity NANDGate is
    Port ( NANDA : in STD_LOGIC_VECTOR (3 downto 0); --ALU input
           NANDB : in STD_LOGIC_VECTOR (3 downto 0); --ALU input
           NANDOutput : out STD_LOGIC_VECTOR (3 downto 0)); --outputs the NAND result
end NANDGate;

architecture Behavioral of NANDGate is

begin
    NANDOutput <= NANDA nand NANDB;--performs the NAND operation
end Behavioral;

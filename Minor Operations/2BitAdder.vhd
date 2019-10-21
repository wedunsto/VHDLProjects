----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/25/2019 05:59:47 PM
-- Design Name: 
-- Module Name: 2BitAdder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TwoBitAdder is
    Port ( N : IN STD_LOGIC_VECTOR(4 downto 0);
            --input is formated by A1A0B1B0Cin
           SUM : out STD_LOGIC_VECTOR(2 downto 0);
end TwoBitAdder;

architecture Behavioral of 2BitAdder is

begin

    Process (n)
		Begin
			Case n is
				When "00000" => Sum <= "000";
				When "00001" => Sum <= "001";
				When "00010" => Sum <= "001";
				When "00011" => Sum <= "010";
				When "00101" => Sum <= "011";
				When "00110" => Sum <= "011";
				When "00111" => Sum <= "001";
				When "01000" => Sum <= "001";
				When "01001" => Sum <= "010";
				When "01010" => Sum <= "010";
				When "01011" => Sum <= "011";
				When "01100" => Sum <= "011";
				When "01101" => Sum <= "100";
				When "01110" => Sum <= "000";
				When "01111" => Sum <= "101";
				When "10000" => Sum <= "010";
				When "10001" => Sum <= "011";
				When "10010" => Sum <= "011";
				When "10011" => Sum <= "100";
				When "10100" => Sum <= "100";
				When "10101" => Sum <= "101";
				When "10110" => Sum <= "101";
				When "10111" => Sum <= "110";
				When "00000" => Sum <= "000";
				When "11000" => Sum <= "011";
				When "11001" => Sum <= "100";
				When "11010" => Sum <= "100";
				When "11011" => Sum <= "101";
				When "11100" => Sum <= "101";
				When "11101" => Sum <= "110";
				When "11110" => Sum <= "110";
				When "11111" => Sum <= "111";
			End case;
		End process;


end Behavioral;

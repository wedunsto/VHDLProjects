----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/24/2019 12:13:52 PM
-- Design Name: 
-- Module Name: comparator - Behavioral
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

entity comparator is
    Port ( N : in STD_LOGIC_VECTOR(4 downto 0);
           RESULT : out STD_LOGIC_VECTOR(2 downto 0));
end comparator;

architecture Behavioral of comparator is
    
    begin
        Process(N)
            begin
                Case N is
                    when "00000" =>
                        RESULT <= "010";
                    when "00001" =>
                        RESULT <= "001";
                    when "00010" =>
                        RESULT <= "001";
                    when "00011" =>
                        Result <= "001";
                    when "00100" =>
                        RESULT <= "100";
                    when "00101" =>
                        RESULT <= "010";
                    when "00110" =>
                        RESULT <= "001";
                    when "00111" =>
                        Result <= "001";
                    when "01000" =>
                        RESULT <= "100";
                    when "01001" =>
                        RESULT <= "100";
                    when "01010" =>
                        RESULT <= "010";
                    when "01011" =>
                        Result <= "001";
                    when "01100" =>
                        RESULT <= "100";
                    when "01101" =>
                        RESULT <= "100";
                    when "01110" =>
                        RESULT <= "100";
                    when "01111" =>
                        RESULT <= "010";
                    when others =>
                        RESULT <= "000";
                 end case;
              end process;
    
end Behavioral;

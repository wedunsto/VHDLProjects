----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/02/2019 05:47:17 PM
-- Design Name: 
-- Module Name: SRLatchNew - Behavioral
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

entity SRLatchNew is
    Port ( oS : in STD_LOGIC;
           ooR : in STD_LOGIC;
           oE : in STD_LOGIC;
           oQ : out STD_LOGIC;
           oQBar : out STD_LOGIC);
end SRLatchNew;

architecture Behavioral of SRLatchNew is

SIGNAL storedQ : STD_LOGIC;

begin

process(oS, ooR)
    variable SCR : STD_LOGIC_VECTOR(1 downto 0);
    begin
    SCR := oS & ooR;
    case SCR is
    when "00" =>
    oQ <= storedQ;
    oQBar <= not(storedQ);
    when "10" =>
        oQ <= '1';
        oQBar <= '0';
        storedQ <= '1';
    when "01" =>
        oQ <= '0';
        oQBar <= '1';
        storedQ <= '0';
    when "11" =>
        oQ <= oE;
        oQBar <= not(oE);
    end case;
    end process;


end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/02/2019 05:49:27 PM
-- Design Name: 
-- Module Name: DFlipFlop - Behavioral
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

entity DFlipFlop is
    Port ( iD : in STD_LOGIC;
           iE : in STD_LOGIC;
           iQ : out STD_LOGIC;
           iQBar : out STD_LOGIC);
end DFlipFlop;

architecture Behavioral of DFlipFlop is

SIGNAL storedQ : STD_LOGIC;

begin

process(iE)

begin
    case iE is
        when '1' =>
            iQ <= iD;
            storedQ <= iD;
            iQBar <= not(iD);
        when '0' =>
            iQ <= storedQ;
            iQBar <= not(storedQ);
    end case;
    end process;
end Behavioral;

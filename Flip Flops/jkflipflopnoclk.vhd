----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2019 03:05:07 PM
-- Design Name: 
-- Module Name: jkflipflop - Behavioral
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

entity jkflipflop is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           en : in STD_LOGIC;
           r : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar: out STD_LOGIC);
end jkflipflop;

architecture Behavioral of jkflipflop is
    signal storedQ : std_logic;
    signal storedQbar : std_logic;
begin
    
    process(en, J, K)
    begin
        if(en = '1' and J = '0' and K = '1' and r = '0') then 
            Q <= '0';
            Qbar <= '1';
            storedQ <= '0';
            storedQbar <= '1';
        elsif(en = '1' and J = '1' and K = '0' and r = '0') then
            Q <= '1';
            Qbar <= '0';
            storedQ <= '1';
            storedQbar <= '0';
        elsif(en = '1' and J = '1' and K = '1' and r = '0') then
            Q <= storedQbar;
            Qbar <= storedQ;
            storedQ <= storedQbar;
            storedQbar <= storedQ;
        elsif(r = '0' and (en = '0' or (J='0' and K='0'))) then 
            Q <= storedQ;
            Qbar <= storedQbar;
            storedQ <= storedQ;
            storedQbar <= storedQ;
        else
            Q <= '0';
            Qbar <= '0';
            storedQ <= '0';
            storedQbar <= '0';
        end if;
    end process;
    
    Q <= storedQ;
end Behavioral;

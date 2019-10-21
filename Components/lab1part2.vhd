----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/29/2019 03:23:25 PM
-- Design Name: 
-- Module Name: lab1part2 - lab1part2arch
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

entity lab1part2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : out STD_LOGIC);
end lab1part2;

architecture lab1part2arch of lab1part2 is
    --instantiating signals 
    signal A_Bar : STD_LOGIC;
    signal B_Bar : STD_LOGIC;
    signal C_Bar : STD_LOGIC;
    
    signal temp1 : STD_LOGIC;
    signal temp2 : STD_LOGIC;
    signal temp3 : STD_LOGIC;
begin
    A_Bar <= not A;
    B_Bar <= not B;
    C_Bar <= not C;
    
    temp1 <= A_Bar and D;
    temp2 <= B and C_Bar and D;
    temp3 <= B_Bar and C and D;
    
    E <= temp1 or temp2 or temp3;

end lab1part2arch;

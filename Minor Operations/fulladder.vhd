----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2019 03:20:34 PM
-- Design Name: 
-- Module Name: fulladder - adderarch
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

entity fulladder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cn : in STD_LOGIC;
           ct : out STD_LOGIC;
           sm : out STD_LOGIC);
end fulladder;

architecture adderarch of fulladder is

    signal temp1 : std_logic;
    signal temp2 : std_logic;
    signal temp3 : std_logic;

begin

    temp1 <= (a xor b);
    temp2 <= (cn and temp1);
    temp3 <= (a and b);
    
    sm <= temp1 xor cn; 
    ct <= temp2 or temp3;


end adderarch;

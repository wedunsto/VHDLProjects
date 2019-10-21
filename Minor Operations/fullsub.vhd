----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2019 03:23:00 PM
-- Design Name: 
-- Module Name: fullsub - subarch
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

entity fullsub is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cn : in STD_LOGIC;
           df : out STD_LOGIC;
           br : out STD_LOGIC);
end fullsub;

architecture subarch of fullsub is

begin

    df <= a xor b xor cn;
    br <= ((not a) and (b or cn)) or (b and cn);

end subarch;

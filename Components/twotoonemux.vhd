----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2019 03:26:18 PM
-- Design Name: 
-- Module Name: twotoonemux - muxarch
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

entity twotoonemux is
    Port ( sm : in STD_LOGIC;
           df : in STD_LOGIC;
           ctl : in STD_LOGIC;
           z : out STD_LOGIC);
end twotoonemux;

architecture muxarch of twotoonemux is

component adder
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cn : in STD_LOGIC;
           ct : out STD_LOGIC;
           sm : out STD_LOGIC);
end component;

component subber
    Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cn : in STD_LOGIC;
               df : out STD_LOGIC;
               br : out STD_LOGIC);
end component;

begin

add: adder
sub: subber

 process(ctl)
        begin
            case ctl is
                when '0' => 
                    z <= sm;
                when '1' => 
                    z <= df;
            end case;
        end process;
bn 
end muxarch;

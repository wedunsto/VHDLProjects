--Objective:
--Directly translate the state of the switch to the state of the LED
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SimpleSwitchSource is
    Port ( SwitchIn : in STD_LOGIC; --Input switch
           LEDOut : out STD_LOGIC); --Output LED
end SimpleSwitchSource;

architecture Behavioral of SimpleSwitchSource is
SIGNAL SwitchStatus : std_logic; --Signal to store the status of the switch
    begin
    
        SwitchStatus <= SwitchIn; --Stores the input value in the signal
        LEDOut <= SwitchStatus; --Stores the signal value in the output
    
end Behavioral;

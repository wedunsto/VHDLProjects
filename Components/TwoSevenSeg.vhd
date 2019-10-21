library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
entity TwoSevenSeg is
    Port ( CLK : in STD_LOGIC;--clock input
           DisplaySeg : out STD_LOGIC_VECTOR (3 downto 0);--decides which segment to use 
           HexSeg : out STD_LOGIC_VECTOR (6 downto 0));--goes to seven segment
end TwoSevenSeg;

architecture Behavioral of TwoSevenSeg is
    type state_type is (secondSeg, firstSeg);--states to light seven segments
    signal next_state, current_state : state_type;--signals to hold states
    signal refresh : std_logic_vector(19 downto 0);--slows clock down to display on seven seg
    signal transition : std_logic;--retains slow clock
    begin
    process(CLK)
        begin
        if(rising_edge(CLK)) then
            refresh <= refresh +1;
        end if;
        transition <= refresh(10);
        if(transition = '1') then
            current_state <= next_state;--transitions state
        end if;
   end process;
   
   process(current_state)
        begin
        case current_state is
            when secondSeg =>--when the 1 is lit
                DisplaySeg <= "1101";
                HexSeg <= "1001111";
                next_state <= firstSeg;
           when firstSeg =>-- when the 4 is lit
                DisplaySeg <= "1110";
                HexSeg <= "1001100";
                next_state <= secondSeg;
           end case;
   end process;
end Behavioral;

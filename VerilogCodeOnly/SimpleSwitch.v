/*
Objective: 
Translate the status of the input switch to the LED output
*/
`timescale 1ns / 1ps

module SimpleSwitch(
    input SwitchIn,//define the input
    output LEDOut//define the ouput
    );
    
    assign LEDOut = SwitchIn; //assigns the output to the input
    
endmodule

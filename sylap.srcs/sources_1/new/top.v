`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Design Name: SYLAP
// Author: Mattia Donato
// License: GPLv2
// Company: Istituto Italiano di Tecnologia
// Year: 2020
//////////////////////////////////////////////////////////////////////////////////


module top(
    output J11,
    output J12,
    output J13,
    output J14,
    output[7:0] LED,
    input clk200_p,
    input clk200_n,
    input UART_PORT_RX,
    output UART_PORT_TX,
    output [5:0] extraHPC,
    input SM_FAN_PWM
    );
    
    
    wire clk_400, clk_400_p, clk_50,clk_100;
    wire reset, locked;
    wire simLaser, simPulse, simPulseFineDelayed, simStart;
    assign SM_FAN_PWM=0;
    assign reset=!locked;
    
//    assign J11=simLaser;
//    assign J12=simLaser;
//    assign J13=simPulseFineDelayed;
//    assign J14=simPulseFineDelayed;

    assign J11=simStart;
    assign J12=!simLaser;
    assign J13=simPulseFineDelayed;
    assign J14=simLaser;
    
    assign extraHPC[2]=simLaser;
    assign extraHPC[3]=!simLaser;
    assign extraHPC[4]=simPulseFineDelayed;
    assign extraHPC[5]=simStart;    
    
    
      clk_wiz_0 CLKTEST  
      (
      // Clock out ports  
      .clk_400(clk_400),
      .clk_400_p(clk_400_p),
      .clk_50(clk_50),
      .clk_100(clk_100),
      // Status and control signals               
      .reset(0), 
      .locked(locked),
      .clk_in1_p(clk200_p),
      .clk_in1_n(clk200_n)
      );      

 sylapTop sylapTopINST(
    .output_simLaser(simLaser),
    .output_simPulse(simPulse),
    .output_simPulseFineDelayed(simPulseFineDelayed),
    .output_simStart(simStart),
    .DebugLED(LED),
    .reset(reset),
    .clk_400(clk_400), 
    .clk_50(clk_50),
    .UART_PORT_RX(UART_PORT_RX),
    .UART_PORT_TX(UART_PORT_TX)
    );
    
    

                        
endmodule

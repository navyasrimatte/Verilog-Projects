`timescale 1ns / 1ps




module dff(input d,  
               input clk,  
               input rstn,  
               output reg q,  
               output qn);  
   always @ (posedge clk or negedge rstn)  
      if (!rstn)  
         q <= 0;  
      else  
         q <= d;  
  
   assign qn = ~q;  
endmodule

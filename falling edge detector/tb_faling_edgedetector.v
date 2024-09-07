`timescale 1ns / 1ps
module tb_faling_edgedetector();
reg clk,rst,D;
wire Detect;
 faling_edgedetector  fd( clk,rst,D, Detect);
 initial begin
 clk=1'b0;
 forever
 #5 clk=~clk;
 end
 task initalize();
 begin
 D=0;
 rst=0;
 end
 endtask
 task reset();
 begin
    @(negedge clk)
     rst=1'b1;
     @(negedge clk)
     rst=1'b0;
  end
  endtask
  task d_input(input K);
  begin
  @(posedge clk)
  #5 D = K;
  end
  endtask
  initial begin
  initalize;
  reset;
  d_input(1'b1);
   reset;
  d_input(1'b0);
  end 
endmodule

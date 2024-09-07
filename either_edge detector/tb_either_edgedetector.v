`timescale 1ns / 1ps


module tb_either_edgedetector();
reg clk,rst,D;
wire detect;
either_edgedetector ed( D,clk,rst, detect);
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
  d_input(1'b0);
  end 
endmodule


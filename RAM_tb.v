`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2025 02:44:12 PM
// Design Name: 
// Module Name: RAM_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RAM_tb;
  wire [7:0] read_data;
  
  reg clk; reg rst; reg write_en;
  reg [2:0] address; reg [7:0] write_data;
  
  RAM dut(.clk(clk),.rst(rst),.write_en(write_en),.address(address),
          .write_data(write_data),.read_data(read_data));
  
  initial begin
    clk = 0;
    rst = 1;
    write_en = 0;
    address = 0;
    write_data = 0;
  end
  
  
  
  always begin
    #1 clk = ~clk;
  end
  
  initial begin
    #2 rst = 0; write_en = 1; write_data = 0; address = 0;
    #2 write_en = 1; write_data = 1; address = 1;
    #2 write_en = 1; write_data = 2; address = 2;
    #2 write_en = 1; write_data = 3; address = 3;
    #2 write_en = 1; write_data = 4; address = 4;
    #2 write_en = 1; write_data = 5; address = 5;
    #2 write_en = 1; write_data = 6; address = 6;
    #2 write_en = 1; write_data = 7; address = 7;
    #2 write_en = 0; address = 0;
    #2 write_en = 0; address = 1;
    #2 write_en = 0; address = 2;
    #2 write_en = 0; address = 3;
    #2 write_en = 0; address = 4;
    #2 write_en = 0; address = 5;
    #2 write_en = 0; address = 6;
    #2 write_en = 0; address = 7;
    #2 rst = 1; address = 0;
    #2 rst = 0; write_en = 0; address = 1;
    #2 write_en = 0; address = 2;
    #2 write_en = 0; address = 3;
    #2 write_en = 0; address = 4;
    #2 write_en = 0; address = 5;
    #2 write_en = 0; address = 6;
    #2 write_en = 0; address = 7;
  end
    
  

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #50 $finish;
  end
  
endmodule

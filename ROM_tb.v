module ROM_tb;
  
  reg [2:0] address;
  wire [3:0] read_data;
  
  ROM dut(.address(address),.read_data(read_data));
  
  initial begin
    address = 0;
    #2 address = 1;
    #2 address = 2;
    #2 address = 3;
    #2 address = 4;
    #2 address = 5;
    #2 address = 6;
    #2 address = 7;
    #2 $finish;
  end
  
  
 initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
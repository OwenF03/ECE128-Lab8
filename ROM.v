module ROM(
  input [2:0] address,
  output [3:0] read_data
);
  
  reg [3:0] mem [0:7];
  
  

  assign read_data = mem[address];
  
  initial begin
    $readmemh("rom.hex", mem);
  end
  
endmodule
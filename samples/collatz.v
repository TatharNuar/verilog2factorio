
module collatz (input clk, input start, input [15:0] data, output reg [15:0] val);
  always @(posedge clk) begin
    if(start) 
      val <= data;
    else if(!val[0]) // even
      val <= val >> 1; // x/2
    else
      val <= val + {val,1'b1}; // 3x+1
  end
endmodule

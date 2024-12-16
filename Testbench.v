`timescale 1ns / 1ps
module tb();

reg clk,start;
reg [11:0]din;
wire sclk,cs,mosi,done;

spi dut(clk,start,din,sclk,cs,mosi,done);

initial
begin
clk=1;
end

always #5 clk=~clk;

initial
begin
    start=1'b0;
    #10;
    start=1'b1;
    din= 12'h00C;
end

endmodule

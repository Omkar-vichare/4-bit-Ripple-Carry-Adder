`timescale 1ns / 1ps

module RCA_tb();
reg [3:0]a = 0;
reg [3:0]b = 0; 
reg ci = 0;
wire [3:0]s;
wire cout;

RCA dut(s,cout,a,b,ci);
    always @(*)
        if (a == 4'd8)
            #10 a <= 4'd0;  
        else #10 a <= a + 4'd1;
    always @(*)     
        if (b == 4'd8)
          #10  b <= 4'd0;
        else #10 b <= b + 4'd1;
    
    always #80 ci = ~ci;
    
    initial begin
     #180
    $finish;
    end
 
endmodule

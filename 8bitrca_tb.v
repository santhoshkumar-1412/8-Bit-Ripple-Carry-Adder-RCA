`timescale 1ns/1ps	
module bitrca8_tb();
wire [7:0]s;
wire cout,c1,c2,c3,c4,c5,c6,c7;
reg [7:0]a,b;
reg cin;
bit4_rca dut(.s(s),.cout(cout),.a(a),.b(b),.cin(cin));
initial 
begin
a=8'b01100100;b=8'b01010011;cin=0;
#10;a=8'b01011000;b=8'b10101110;cin=1;
#10;a=8'b11111111;b=8'b00000001;cin=0;
#10;a=8'b10101010;b=8'b01010101;cin=1;
#10;a=8'b00001111;b=8'b00000001;cin=0;
#10;a=8'b11110000;b=8'b00001111;cin=1;
#10;
$finish;
end
initial
begin
$dumpfile("bitrca8.vcd");
$dumpvars(0, bitrca8_tb);
$monitor("Time=%0t | a=%b | b=%b | cin=%b | sum=%b | cout=%b",$time,a,b,cin,s,cout);
end
endmodule

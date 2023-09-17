//Test bench Verilog code for 8 Bit Prime Number 
module tb_primenumber();
reg [7:0] num;
wire is_prime;
prime_number p1(.num(num),.is_prime(is_prime));
initial
begin
num=8'd1;//is_prime=1
#5 num=8'd4;//is_prime=1
#5 num=8'd3;//is_prime=1
#5 num=8'd10;//is_prime=0
#5 num=8'd20;//is_prime=0
#5 num=8'd21;//is_prime=1
#5 num=8'd50;//is_prime=0
#5 num=8'd53;//is_prime=1
#5 num=8'd100;//is_prime=0
#5 num=8'd254;//is_prime=0
#5 num=8'd255;//is_prime=0 
#50 $finish;
end
endmodule


//Prime number detection logic in Verilog, given an 8-bit number as input 
module prime_number(num,is_prime);
input [7:0] num;
output reg is_prime;
reg [7:0] i; 
always @(*) begin
    is_prime = 1; // Assume num is prime  
    if (num <= 1)
        is_prime = 0;
    else if (num == 2)
        is_prime = 1; 
    else if (num == 3)
        is_prime = 1; // 
    else if (num[0] == 0) // Check least significant bit is 0 (even number)
        is_prime = 0; 
    else begin
        i = 3;
        while (i * i <= num) begin
            if ((num & i) == 0) begin
                is_prime = 0; // If num is divisible by odd number, it's not prime
            end
            i = i + 2; // next odd number
        end
    end
end
endmodule

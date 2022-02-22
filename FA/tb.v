`include "fulladd.v"
module tb;

reg [3:0] a;
reg [3:0] b;
reg c_in;
wire c_out;
wire [3:0] sum;
integer i;

fulladd fa0(
.a(a),
.b(b),
.c_in(c_in),
.c_out(c_out),
.sum(sum) 
);

initial begin
    a <= 0;
    b <= 0;
    c_in <= 0;

    $monitor ("a = 0x%x, b = 0x%x c_in = 0x%x, c_out = 0x%x, sum =0x%x", a,b,c_in,c_out,sum);

    for (i =0; i<5; i = i+1) begin
        #10 a<= $random;
            b<= $random;
            c_in <= $random;
    end


end

endmodule
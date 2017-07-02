
module adder_1b(input a, b, input carry_in, output sum, output carry_out);

wire and_out,xor_out,and2_out;

and (and_out,a,b);
xor (xor_out,a,b);
and (and2_out,xor_out,carry_in);
xor (sum, xor_out,carry_in);
or (carry_out,and_out,and2_out);


endmodule 


module adder_32b(
input [31:0] a, b, 
input carry_in, 
output [31:0] sum, 
output carry_out
);

wire [30:0] adder_carry;


/* Instantiation begins*/
adder_1b a0(
.a(a[0]), 
.b(b[0]), 
.carry_in(carry_in), 
.sum(sum[0]), 
.carry_out(adder_carry[0])
);

adder_1b a1(
.a(a[1]), 
.b(b[1]), 
.carry_in(adder_carry[0]), 
.sum(sum[1]), 
.carry_out(adder_carry[1])
);

adder_1b a2 (
.a(a[2]), 
.b(b[2]), 
.carry_in(adder_carry[1]), 
.sum(sum[2]), 
.carry_out(adder_carry[2])
);

adder_1b a3 (
.a(a[3]), 
.b(b[3]), 
.carry_in(adder_carry[2]), 
.sum(sum[3]), 
.carry_out(adder_carry[3])
);

/*Kredo code here........................*/
adder_1b a4 (
.a(a[4]), 
.b(b[4]), 
.carry_in(adder_carry[3]), 
.sum(sum[4]), 
.carry_out(adder_carry[4])
);


adder_1b a5 (
.a(a[5]), 
.b(b[5]), 
.carry_in(adder_carry[4]), 
.sum(sum[5]), 
.carry_out(adder_carry[5])
);

/*Kredo code here...........*/
adder_1b a6 (
.a(a[6]), 
.b(b[6]), 
.carry_in(adder_carry[5]), 
.sum(sum[6]), 
.carry_out(adder_carry[6])
);

adder_1b a7 (
.a(a[7]), 
.b(b[7]), 
.carry_in(adder_carry[6]), 
.sum(sum[7]), 
.carry_out(adder_carry[7])
);

adder_1b a8 (
.a(a[8]), 
.b(b[8]), 
.carry_in(adder_carry[7]), 
.sum(sum[8]), 
.carry_out(adder_carry[8])
);

adder_1b a9 (
.a(a[9]), 
.b(b[9]), 
.carry_in(adder_carry[8]), 
.sum(sum[9]), 
.carry_out(adder_carry[9])
);

adder_1b a10 (
.a(a[10]), 
.b(b[10]), 
.carry_in(adder_carry[9]), 
.sum(sum[10]), 
.carry_out(adder_carry[10])
);

adder_1b a11 (
.a(a[11]), 
.b(b[11]), 
.carry_in(adder_carry[10]), 
.sum(sum[11]), 
.carry_out(adder_carry[11])
);

adder_1b a12 (
.a(a[12]), 
.b(b[12]), 
.carry_in(adder_carry[11]), 
.sum(sum[12]), 
.carry_out(adder_carry[12])
);

adder_1b a13 (
.a(a[13]), 
.b(b[13]), 
.carry_in(adder_carry[12]), 
.sum(sum[13]), 
.carry_out(adder_carry[13])
);

adder_1b a14 (
.a(a[14]), 
.b(b[14]), 
.carry_in(adder_carry[13]), 
.sum(sum[14]), 
.carry_out(adder_carry[14])
);

adder_1b a15 (
.a(a[15]), 
.b(b[15]), 
.carry_in(adder_carry[14]), 
.sum(sum[15]), 
.carry_out(adder_carry[15])
);

adder_1b a16 (
.a(a[16]), 
.b(b[16]), 
.carry_in(adder_carry[15]), 
.sum(sum[16]), 
.carry_out(adder_carry[16])
);

adder_1b a17 (
.a(a[17]), 
.b(b[17]), 
.carry_in(adder_carry[16]), 
.sum(sum[17]), 
.carry_out(adder_carry[17])
);

adder_1b a18 (
.a(a[18]), 
.b(b[18]), 
.carry_in(adder_carry[17]), 
.sum(sum[18]), 
.carry_out(adder_carry[18])
);

adder_1b a19 (
.a(a[19]), 
.b(b[19]), 
.carry_in(adder_carry[18]), 
.sum(sum[19]), 
.carry_out(adder_carry[19])
);

adder_1b a20 (
.a(a[20]), 
.b(b[20]), 
.carry_in(adder_carry[19]), 
.sum(sum[20]), 
.carry_out(adder_carry[20])
);

adder_1b a21 (
.a(a[21]), 
.b(b[21]), 
.carry_in(adder_carry[20]), 
.sum(sum[21]), 
.carry_out(adder_carry[21])
);

adder_1b a22 (
.a(a[22]), 
.b(b[22]), 
.carry_in(adder_carry[21]), 
.sum(sum[22]), 
.carry_out(adder_carry[22])
);

adder_1b a23 (
.a(a[23]), 
.b(b[23]), 
.carry_in(adder_carry[22]), 
.sum(sum[23]), 
.carry_out(adder_carry[23])
);

adder_1b a24 (
.a(a[24]), 
.b(b[24]), 
.carry_in(adder_carry[23]), 
.sum(sum[24]), 
.carry_out(adder_carry[24])
);

adder_1b a25 (
.a(a[25]), 
.b(b[25]), 
.carry_in(adder_carry[24]), 
.sum(sum[25]), 
.carry_out(adder_carry[25])
);

adder_1b a26 (
.a(a[26]), 
.b(b[26]), 
.carry_in(adder_carry[25]), 
.sum(sum[26]), 
.carry_out(adder_carry[26])
);

adder_1b a27 (
.a(a[27]), 
.b(b[27]), 
.carry_in(adder_carry[26]), 
.sum(sum[27]), 
.carry_out(adder_carry[27])
);

adder_1b a28 (
.a(a[28]), 
.b(b[28]), 
.carry_in(adder_carry[27]), 
.sum(sum[28]), 
.carry_out(adder_carry[28])
);

adder_1b a29 (
.a(a[29]), 
.b(b[29]), 
.carry_in(adder_carry[28]), 
.sum(sum[29]), 
.carry_out(adder_carry[29])
);

adder_1b a30 (
.a(a[30]), 
.b(b[30]), 
.carry_in(adder_carry[29]), 
.sum(sum[30]), 
.carry_out(adder_carry[30])
);

adder_1b a31 (
.a(a[31]), 
.b(b[31]), 
.carry_in(adder_carry[30]), 
.sum(sum[31]), 
.carry_out(carry_out)
);
endmodule



//One adder
/*
module adder_1b(input a[0],b[0], carry_in, output sum, output carry_out);

   assign sum= a^b^carry_in;
   assign carry_out= a&b|(a^b)&carry_in;

endmodule

module 
*/


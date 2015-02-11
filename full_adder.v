module full_adder(
cout,
sum, 
a, 
b, 
c);

input a, b, c;
output cout, sum;
wire n1, n2, n3;

xor (n1, a, b);
xor (sum, n1, c);
nand (n2, a, b);
nand (n3, n1, c);
nand (cout,n3, n2);

endmodule 
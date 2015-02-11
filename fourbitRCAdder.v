/*module fourbitRCAdder(
    input [3:0] a,
    input [3:0] b,
    output [3:0] sum,
    output carry
    );
        wire cin;
        
        assign cin = 1'b0;
        full_adder Fadder1( .a( a[0] ), .b( b[0]), .cin( cin ), .s( sum[0]), .cout( ripple0 ) );
        full_adder Fadder2( .a( a[1] ), .b( b[1]), .cin( ripple0 ), .s( sum[1]), .cout( ripple1 ) );
        full_adder Fadder3( .a( a[2] ), .b( b[2]), .cin( ripple1 ), .s( sum[2]), .cout( ripple2 ) );
        full_adder Fadder2( .a( a[3] ), .b( b[3]), .cin( ripple2 ), .s( sum[3]), .cout( carry ) );

endmodule

module full_adder (
         input a,
         input b,
         input cin,
         output s,
         output cout );
         
         // wires (from ands to or)
         wire w1, w2, w3;
         
         // carry-out circuitry
         and( w1, a, b );
         and( w2, a, cin );
         and( w3, b, cin );
         or( cout, w1, w2, w3 );
         
         // sum
         xor( s, a, b, cin );

endmodule*/

module fourbitRCAdder(
    input [3:0] A,
    input [3:0] B,
    output [3:0] sum,
    output carry
    );
        wire cin;
        
        assign cin = 1'b0;
        full_adder Fadder1( .A( A[0] ), .B( B[0]), .C( cin ), .S( sum[0]), .CY( ripple0 ) );
        full_adder Fadder2( .A( A[1] ), .B( B[1]), .C( ripple0 ), .S( sum[1]), .CY( ripple1 ) );
        full_adder Fadder3( .A( A[2] ), .B( B[2]), .C( ripple1 ), .S( sum[2]), .CY( ripple2 ) );
        full_adder Fadder4( .A( A[3] ), .B( B[3]), .C( ripple2 ), .S( sum[3]), .CY( carry ) );

endmodule

module full_adder (
         input A,
         input B,
         input C,
         output S,
         output CY );
         
         // wires (from ands to or)
         wire w1, w2, w3;
         
         // carry-out and sum circuitry
			xor (w1, A, B);
			nand (w2, w1, C);
			nand (w3, A, B);
			xor (S, C, w1);
			nand (CY, w2, w3);
      
endmodule

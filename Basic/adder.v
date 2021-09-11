//结构化描述方式
module adder
(
	input a,b,cin,
	output sum,cout
);
wire s1,m1,m2,m3;//这个还是表示线网型的
xor(s1,a,b);//s1 = a^b,接着sum = s1^cin
xor(sum,s1,cin);
and(m1,a,b);//这个是m1 = a&b,下面的是m2 = a&cin，再接着是m3 = b&cin
and(m2,a,cin);
and(m3,b,cin);
or(m1,m2,m3);
endmodule

module full_adder(
	//输入信号，ain表示被加数，bin表示加数，cin表示低位向高位的进位
	input ain,bin,cin,
	//输出信号,cout表示向高位的进位，sum表示本位的相加和
	output reg cout,sum

);
reg s1,s2,s3;
always @(ain or bin or cin) begin
	sum=(ain^bin)^cin;//本位和输出表达式
	s1=ain&cin;
	s2=bin&cin;
	s3=ain&bin;
	cout=(s1|s2)|s3;//高位进位输出表达式
end
endmodule

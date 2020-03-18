tests
testLiteralWithMultipleLines

	startRule := #Object.
	
	self shouldParse: '"This is a multi-line\nliteral\nit is"' .
	
as yet unclassified
testLiteralWithMultipleLines

	startRule := #Object.
	
	self shouldParse: '"This is a multi-line\nliteral\nit is"' .
	
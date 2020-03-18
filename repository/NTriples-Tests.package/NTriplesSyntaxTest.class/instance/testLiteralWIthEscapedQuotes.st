tests
testLiteralWIthEscapedQuotes

	startRule := #Object.
	
	self shouldParse: '"This is a literal with many quotes (\"\"\"\"\")."' .
	
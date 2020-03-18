tests
testLiteralWithApostrophes

	startRule := #Object.
	
	self shouldParse: '"This is a literal with two apostrophes ('')."' .
	
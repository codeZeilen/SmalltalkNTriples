as yet unclassified
testLiteralWithApostrophes

	startRule := #Object.
	
	self shouldParse: '"This is a literal with two apostrophes ('')."' .
	
as yet unclassified
testEscapedTriples

	startRule := #Triples.
	
	self shouldParse: '<http://example.org/#spiderman> <http://example.org/text> "This is a multi-line\nliteral with many quotes (\"\"\"\"\")\nand two apostrophes ('').".' .
	
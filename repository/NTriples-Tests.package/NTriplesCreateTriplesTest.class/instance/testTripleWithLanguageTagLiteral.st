as yet unclassified
testTripleWithLanguageTagLiteral

	| triple triples |
	triples := self createTriplesFrom: '<http://example.org/#spiderman> <http://example.org/text> "a text"@en-gb.'.
	triple := triples first.
	self 
		assert: 'http://example.org/#spiderman' equals: triple first asString;
		assert: 'http://example.org/text' equals: triple second asString;
		assert: triple third equals: 'a text';
		assert: 'en-gb' equals: triple third languageTag
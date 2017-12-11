as yet unclassified
testTripleWithLanguageTagLiteral

	| triple triples |
	triples := self createTriplesFrom: '<http://example.org/#spiderman> <http://example.org/text> "a text"@en-gb.'.
	triple := triples first.
	self 
		assert: 'http://example.org/#spiderman' asUrl equals: triple first;
		assert: 'http://example.org/text' asUrl equals: triple second;
		assert: triple third equals: 'a text';
		assert: 'en-gb' equals: triple third languageTag
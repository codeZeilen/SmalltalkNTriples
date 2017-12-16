as yet unclassified
testSimpleTriple

	| triple triples |
	triples := self createTriplesFrom: '<http://example.org/#spiderman> <http://example.org/text> "a text".'.
	triple := triples first.
	self 
		assert: 'http://example.org/#spiderman' equals: triple first asString;
		assert: 'http://example.org/text' equals: triple second asString;
		assert: triple third equals: 'a text'.
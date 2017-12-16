as yet unclassified
testTripleWithSchemaLiteral

	| triple triples |
	triples := self createTriplesFrom: '<http://example.org/#spiderman> <http://example.org/text> "2"^^<http://www.w3.org/2001/XMLSchema#integer>.'.
	triple := triples first.
	self 
		assert: 'http://example.org/#spiderman' equals: triple first asString;
		assert: 'http://example.org/text' equals: triple second asString;
		assert: triple third equals: '2';
		assert: 'http://www.w3.org/2001/XMLSchema#integer' equals: triple third schema asString.
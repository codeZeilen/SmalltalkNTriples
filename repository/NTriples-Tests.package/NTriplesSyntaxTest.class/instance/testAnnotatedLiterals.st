as yet unclassified
testAnnotatedLiterals

	startRule := #Triples.
	
	self shouldParseAll: {
	'<http://example.org/show/218> <http://www.w3.org/2000/01/rdf-schema#label> "That Seventies Show"^^<http://www.w3.org/2001/XMLSchema#string> .'.
	'<http://example.org/show/218> <http://example.org/show/localName> "That Seventies Show"@en.' .
	'<http://example.org/show/218> <http://example.org/show/localName> "Cette Série des Années Septante"@fr-be .' .
	'<http://en.wikipedia.org/wiki/Helium> <http://example.org/elements/atomicNumber> "2"^^<http://www.w3.org/2001/XMLSchema#integer> . ' .
	'<http://en.wikipedia.org/wiki/Helium> <http://example.org/elements/specificGravity> "1.663E-4"^^<http://www.w3.org/2001/XMLSchema#double> .' }
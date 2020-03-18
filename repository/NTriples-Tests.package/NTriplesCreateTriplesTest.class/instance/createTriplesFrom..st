utility
createTriplesFrom: aString

	| cst |
	cst := NTriplesGrammar match: aString startingFrom: #Triples.
	^ (NTriplesGrammar synthesizedAttribute: NTCreateTriples new) value: cst 
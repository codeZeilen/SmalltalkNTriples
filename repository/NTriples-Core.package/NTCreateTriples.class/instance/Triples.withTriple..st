rules
Triples: aNode withTriple: triples 
	^ triples children collect: [:t | self value: t]
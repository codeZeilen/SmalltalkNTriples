tests
testBasicTriples

	startRule := #Triples.
	
	self shouldParse: '<http://example.org/#spiderman> <http://www.perceive.net/schemas/relationship/enemyOf> <http://example.org/#green-goblin> .'
accessing
printOn: aStream

	aStream << self content asString.
	
	self languageTag ifNotNil: [
		aStream << '@' << self languageTag asString].
	
	self schema ifNotNil: [
		aStream << '^^<' << self schema asString << '>']
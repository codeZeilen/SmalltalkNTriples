as yet unclassified
literal: aNode withStringLiteral: stringLiteral withOptionalStringLiteralAddition: stringAddition 

	| addition content result |
	content := stringLiteral interval contents allButFirst allButLast.
	addition := self value: stringAddition.
	result := NTLiteral new content: content; yourself.
	
	addition ifNil: [^ result].
	addition key = #language ifTrue: [result languageTag: addition value].
	addition key = #schema ifTrue: [result schema: addition value].
	
	^ result 
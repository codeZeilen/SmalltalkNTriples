rules
reference: aNode withPrimitive: primitive withManySequences: manySequences withPrimitive: primitive1 

	| rawUrlString |

	rawUrlString := aNode interval contents copyFrom: 2 to: aNode interval contents size - 1.

	rawUrlString := rawUrlString 
		copyWithRegex: '\u[a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9]' 
		matchesTranslatedUsing: [:m | 
			(Unicode value: (Number readFrom: (m last: 4) base: 16)) asString ].

	rawUrlString 
		copyWithRegex: '\u[a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9]' 
		matchesTranslatedUsing: [:m | 
			(Unicode value: (Number readFrom: (m last: 8) base: 16)) asString ].

	^ Url absoluteFromText: rawUrlString
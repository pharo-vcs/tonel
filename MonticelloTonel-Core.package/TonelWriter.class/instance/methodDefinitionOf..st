private - definitions
methodDefinitionOf: aMethodDefinition

	| definition |
	definition := OrderedDictionary new.
	self at: #category put: aMethodDefinition protocol in: definition.
	^ self toSTON: definition
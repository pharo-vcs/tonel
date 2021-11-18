private - definitions
methodDefinitionOf: aMethodDefinition

	| definition |
	definition := OrderedDictionary new.
	self at: #category put: aMethodDefinition category in: definition.
	^ self toSTON: definition
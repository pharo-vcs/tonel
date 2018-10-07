private definitions
methodDefinitionOf: aMethodDefinition

	"categories needs to be saved as Strings. See https://github.com/pharo-vcs/tonel/issues/52"
	^ self toSTON: (OrderedDictionary new 
		at: #category put: aMethodDefinition category asString; 
		yourself)	
	
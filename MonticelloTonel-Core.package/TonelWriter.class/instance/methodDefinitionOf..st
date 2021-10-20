private definitions
methodDefinitionOf: aMethodDefinition

	^ self toSTON:
		  { (#category -> aMethodDefinition category asString) }
			  asOrderedDictionary
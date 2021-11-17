private definitions
typeTraitDefinitionOf: aClassDefinition

	| definition |
	definition := OrderedDictionary new.
	self at: #name put: aClassDefinition className in: definition.

	aClassDefinition variables isEmptyOrNil ifFalse: [ 
		(aClassDefinition variables
			 select: #isInstanceVariable
			 thenCollect: #name) ifNotEmpty: [ :vars | 
			definition at: #instVars put: vars asArray ].
		(aClassDefinition variables
			 select: #isClassInstanceVariable
			 thenCollect: #name) ifNotEmpty: [ :vars | 
			definition at: #classInstVars put: vars asArray ] ].

	aClassDefinition hasTraitComposition ifTrue: [ 
		definition at: #traits put: aClassDefinition traitCompositionString ].

	aClassDefinition hasClassTraitComposition ifTrue: [ 
		definition
			at: #classTraits
			put: aClassDefinition classTraitCompositionString ].

	self at: #category put: aClassDefinition category in: definition.

	^ self toSTON: definition
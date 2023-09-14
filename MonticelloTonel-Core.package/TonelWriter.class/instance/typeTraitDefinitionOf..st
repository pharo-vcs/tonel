private - definitions
typeTraitDefinitionOf: aClassDefinition

	| definition |
	definition := OrderedDictionary new.
	self at: #name put: aClassDefinition className in: definition.

	aClassDefinition variables isEmptyOrNil ifFalse: [
		aClassDefinition instVarNames ifNotEmpty: [ :vars | definition at: #instVars put: vars asArray ].
		aClassDefinition classInstVarNames ifNotEmpty: [ :vars | definition at: #classInstVars put: vars asArray ] ].

	aClassDefinition hasTraitComposition ifTrue: [ definition at: #traits put: aClassDefinition traitCompositionString ].

	aClassDefinition hasClassTraitComposition ifTrue: [ definition at: #classTraits put: aClassDefinition classTraitCompositionString ].

	self setPackageInfoOf: aClassDefinition in: definition.

	^ self toSTON: definition
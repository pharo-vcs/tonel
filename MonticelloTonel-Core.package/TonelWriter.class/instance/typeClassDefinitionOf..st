private definitions
typeClassDefinitionOf: aClassDefinition

	| definition |
	definition := OrderedDictionary new.
	self
		at: #name put: aClassDefinition className in: definition;
		at: #superclass put: aClassDefinition superclassName in: definition.

	aClassDefinition type = #normal ifFalse: [
		self at: #type put: aClassDefinition type in: definition ].

	aClassDefinition hasTraitComposition ifTrue: [
		definition at: #traits put: aClassDefinition traitCompositionString ].

	aClassDefinition hasClassTraitComposition ifTrue: [
		definition
			at: #classTraits
			put: aClassDefinition classTraitCompositionString ].

	(aClassDefinition variables
		 select: #isInstanceVariable
		 thenCollect: #name) ifNotEmpty: [ :vars |
		definition at: #instVars put: vars asArray ].

	(aClassDefinition variables
		 select: #isClassVariable
		 thenCollect: #name) ifNotEmpty: [ :vars |
		definition at: #classVars put: vars asArray ].

	(aClassDefinition variables select: #isPoolImport thenCollect: #name)
		ifNotEmpty: [ :vars | definition at: #pools put: vars asArray ].

	(aClassDefinition variables
		 select: #isClassInstanceVariable
		 thenCollect: #name) ifNotEmpty: [ :vars |
		definition at: #classInstVars put: vars asArray ].

	self at: #category put: aClassDefinition category in: definition.

	^ self toSTON: definition
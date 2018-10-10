private definitions
typeClassDefinitionOf: aClassDefinition
	| definition |
	
	definition := OrderedDictionary new 
		at: #name put: aClassDefinition className asString; 
		at: #superclass put: aClassDefinition superclassName asString;
		yourself.

	aClassDefinition type = #normal ifFalse: [ 
		definition at: #type put: aClassDefinition type asString ].
	
	aClassDefinition hasTraitComposition ifTrue: [ 
		definition at: #traits put: aClassDefinition traitCompositionString ].
	
	aClassDefinition hasClassTraitComposition ifTrue: [ 
		definition at: #classTraits put: aClassDefinition classTraitCompositionString ].
	
	(aClassDefinition variables select: #isInstanceVariable thenCollect: #name)
		ifNotEmpty: [ :vars | definition at: #instVars put: vars asArray ].

	(aClassDefinition variables select: #isClassVariable thenCollect: #name)
		ifNotEmpty: [ :vars | definition at: #classVars put: vars asArray ].
		
	(aClassDefinition variables select: #isPoolImport thenCollect: #name)
		ifNotEmpty: [ :vars | definition at: #pools put: vars asArray ].
		
	(aClassDefinition variables select: #isClassInstanceVariable thenCollect: #name)
		ifNotEmpty: [ :vars | definition at: #classInstVars put: vars asArray ].

	"categories needs to be saved as String. See https://github.com/pharo-vcs/tonel/issues/52"
	definition at: #category put: aClassDefinition category asString.
	
	^ self toSTON: definition
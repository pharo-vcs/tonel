private factory
newTraitDefinitionFrom: anArray
	| metadata traitDefs |
	
	metadata := anArray sixth.
	traitDefs := { self basicNewTraitDefinitionFrom: anArray }.
			
	traitDefs first hasClassTraitComposition ifTrue: [
			traitDefs := traitDefs copyWith: (MCClassTraitDefinition
 				baseTraitName: (metadata at: #name)
 				classTraitComposition: (metadata at: #classTraits)
				category: (metadata at: #category)) ].
			
	^ traitDefs
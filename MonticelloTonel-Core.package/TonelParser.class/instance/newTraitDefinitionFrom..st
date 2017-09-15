private factory
newTraitDefinitionFrom: anArray
	| metadata traitDefs |
	metadata := anArray sixth.
	
	traitDefs := { 
		MCTraitDefinition
			name: (metadata at: #name)
			traitComposition: (metadata at: 'traitcomposition' ifAbsent: [ '{}' ])
			category: (metadata at: #category)
			comment: (anArray second ifNil: [ '' ])
			commentStamp: nil }.
			
	metadata 
		at: #classTraits
		ifPresent: [ :classTraits |
			traitDefs := traitDefs copyWith: (MCClassTraitDefinition
 				baseTraitName: (metadata at: #name)
 				classTraitComposition: classTraits) ].
			
	^ traitDefs
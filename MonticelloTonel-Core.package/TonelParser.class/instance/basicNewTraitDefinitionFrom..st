private factory
basicNewTraitDefinitionFrom: anArray
	| metadata |
	
	metadata := anArray sixth.

	^ MCTraitDefinition
			name: (metadata at: #name)
			traitComposition: (metadata at: #traits ifAbsent: [ '{}' ])
			category: (metadata at: #category)
			instVarNames: (metadata at: #instVars ifAbsent: [ #() ])
			classInstVarNames: (metadata at: #classInstVars ifAbsent: [ #() ])
			classTraitComposition: (metadata at: #classTraits ifAbsent: [ '{}' ])
			comment: (anArray second ifNil: [ '' ])
			commentStamp: nil
private factory
newTraitDefinitionFrom: anArray
	| metadata traitDefs |
	
	metadata := anArray sixth.
	traitDefs := { 
		self hasStatefulTraits 
			ifTrue: [ self newStatefulTraitDefinitionFrom: anArray ]
			ifFalse: [ self newStatelessTraitDefinitionFrom: anArray ] }.
			
	metadata 
		at: #classTraits
		ifPresent: [ :classTraits |
			traitDefs := traitDefs copyWith: (MCClassTraitDefinition
 				baseTraitName: (metadata at: #name)
 				classTraitComposition: classTraits
				category: (metadata at: #category)) ].
			
	^ traitDefs
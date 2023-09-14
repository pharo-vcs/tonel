private - factory
newTraitDefinitionFrom: anArray

	| metadata traitDefs |
	metadata := anArray sixth.
	traitDefs := { (self basicNewTraitDefinitionFrom: anArray) }.

	traitDefs first hasClassTraitComposition ifTrue: [
		| definition |
		definition := (MCClassTraitDefinition baseTraitName: (metadata at: #name))
			              classTraitComposition: (metadata at: #classTraits);
			              yourself.

		self addPackageInfoTo: definition from: metadata.

		traitDefs := traitDefs copyWith: definition ].

	^ traitDefs
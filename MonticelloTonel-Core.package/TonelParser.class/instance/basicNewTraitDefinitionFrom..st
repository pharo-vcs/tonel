private - factory
basicNewTraitDefinitionFrom: anArray

	| metadata definition |
	metadata := anArray sixth.
	definition := (MCTraitDefinition named: (metadata at: #name))
		              comment: (anArray second ifNil: [ '' ]);
		              yourself.

	metadata
		at: #traits ifPresent: [ :composition | definition traitComposition: composition ];
		at: #classTraits ifPresent: [ :composition | definition classTraitComposition: composition ];
		at: #instVars ifPresent: [ :ivar | definition instVarNames: ivar ];
		at: #classInstVars ifPresent: [ :classIVar | definition classInstVarNames: classIVar ].

	self addPackageInfoTo: definition from: metadata.

	^ definition
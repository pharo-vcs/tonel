private - factory
newClassDefinitionFrom: anArray

	| metadata definition |
	metadata := anArray sixth.
	definition := (MCClassDefinition named: (metadata at: #name))
		              superclassName: (metadata at: #superclass);
		              comment: (anArray second ifNil: [ '' ]);
		              yourself.

	metadata
		at: #traits ifPresent: [ :composition | definition traitComposition: composition ];
		at: #classTraits ifPresent: [ :composition | definition classTraitComposition: composition ];
		at: #instVars ifPresent: [ :ivar | definition instVarNames: ivar ];
		at: #classVars ifPresent: [ :classVar | definition classVarNames: classVar ];
		at: #pools ifPresent: [ :pools | definition poolDictionaryNames: pools ];
		at: #classInstVars ifPresent: [ :classIVar | definition classInstVarNames: classIVar ];
		at: #type ifPresent: [ :type | definition type: type asSymbol ].

	self addPackageInfoTo: definition from: metadata.

	^ definition
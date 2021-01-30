writing
writeSnapshot: aSnapshot
	snapshot := aSnapshot.
	
	"ensure package dirs exists. 
	 It has to be just one but well..."
	self writePackage: (snapshot definitions 
		detect: [:each | each isOrganizationDefinition ]
		ifNone: [ self createDefaultOrganizationFrom: snapshot definitions ]).
	"now export classes"
	(snapshot definitions 
		select: [:each | each isClassDefinition])
		do: [ :each | self writeClass: each ].
	"... and method extensions"
	self writeMethodExtensions
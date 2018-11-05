writing
writeSnapshot: aSnapshot
	snapshot := aSnapshot.
	
	"ensure package dirs exists. 
	 It has to be just one but well..."
	self writePackage: (snapshot definitions 
		detect: #isOrganizationDefinition
		ifNone: [ self createDefaultOrganizationFrom: snapshot definitions ]).
	"now export classes"
	(snapshot definitions 
		select: #isClassDefinition)
		do: [ :each | self writeClass: each ].
	"... and method extensions"
	self writeMethodExtensions
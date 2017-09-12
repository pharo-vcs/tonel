writing
writeSnapshot: aSnapshot
	snapshot := aSnapshot.
	
	"ensure package dirs exists. 
	 It has to be just one but well..."
	(snapshot definitions 
		select: #isOrganizationDefinition)
		do: [ :each | self writePackage: each ].
	"now export classes"
	(snapshot definitions 
		select: #isClassDefinition)
		do: [ :each | self writeClass: each ].
	"... and method extensions"
	self writeMethodExtensions
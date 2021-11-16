private
createDefaultOrganizationFrom: aCollection
	"answers a default organisation for the cases where there are none"

	"simplest case, I answer the clas definition"
	snapshot definitions 
		detect: [ :each | each isClassDefinition ]
		ifFound: [ :each | ^ MCOrganizationDefinition categories: { each category } ].
	
	^ self createDefaultOrganizationFromDefinition: (snapshot definitions
		detect: [ :each | each isMethodDefinition ]
		ifNone: [ self error: 'cannot determine package name from empty snapshot' ])

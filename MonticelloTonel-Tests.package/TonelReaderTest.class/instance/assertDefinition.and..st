tests
assertDefinition: a and: b
	a isOrganizationDefinition ifTrue: [ ^ self assertOrganisationDefinition: a and: b ].
	a isClassDefinition ifTrue: [ ^ self assertClassDefinition: a and: b ].
	a isMethodDefinition ifTrue: [ ^ self assertMethodDefinition: a and: b ].
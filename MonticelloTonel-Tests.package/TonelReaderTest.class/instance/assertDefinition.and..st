tests
assertDefinition: actualDefinition and: expectedDefinition

	actualDefinition isOrganizationDefinition ifTrue: [ ^ self assertOrganisationDefinition: actualDefinition and: expectedDefinition ].
	actualDefinition isClassDefinition ifTrue: [ ^ self assertClassDefinition: actualDefinition and: expectedDefinition ].
	actualDefinition isMethodDefinition ifTrue: [ ^ self assertMethodDefinition: actualDefinition and: expectedDefinition ]
tests
assertOrganisationDefinition: actualDefinition and: expectedDefinition

	self assert: actualDefinition packageName equals: expectedDefinition packageName.
	self assert: actualDefinition tagNames equals: expectedDefinition tagNames
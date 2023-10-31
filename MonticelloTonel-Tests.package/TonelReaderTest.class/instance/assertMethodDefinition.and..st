tests
assertMethodDefinition: actualDefinition and: expectedDefinition

	self assert: actualDefinition className equals: expectedDefinition className.
	self assert: actualDefinition selector equals: expectedDefinition selector.
	self assert: actualDefinition protocol equals: expectedDefinition protocol.
	self assert: actualDefinition source asByteArray equals: expectedDefinition source asByteArray.
	self assert: actualDefinition classIsMeta equals: expectedDefinition classIsMeta
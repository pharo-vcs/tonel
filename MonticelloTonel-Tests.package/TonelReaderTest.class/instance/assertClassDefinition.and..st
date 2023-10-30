tests
assertClassDefinition: actualDefinition and: expectedDefinition
	self assert: actualDefinition className equals: expectedDefinition className.
	self assert: actualDefinition superclassName equals: expectedDefinition superclassName.
	self assert: actualDefinition traitCompositionString equals: expectedDefinition traitCompositionString.
	self assert: actualDefinition classTraitCompositionString equals: expectedDefinition classTraitCompositionString.
	self assert: actualDefinition packageName equals: expectedDefinition packageName.
	self assert: actualDefinition tagName equals: expectedDefinition tagName.
	self assert: actualDefinition instVarNames equals: expectedDefinition instVarNames.
	self assert: actualDefinition classInstVarNames equals: expectedDefinition classInstVarNames.
	self assert: actualDefinition classVarNames equals: expectedDefinition classVarNames.
	self assert: actualDefinition poolDictionaries equals: expectedDefinition poolDictionaries.
	self assert: actualDefinition type equals: expectedDefinition type.
	self assert: actualDefinition comment equals: expectedDefinition comment
tests
assertClassDefinition: a and: b
	self assert: a className equals: b className.
	self assert: a superclassName equals: b superclassName.
	self assert: a traitCompositionString equals: b traitCompositionString.
	self assert: a classTraitCompositionString equals: b classTraitCompositionString.
	self assert: a category equals: b category.
	self assert: a instVarNames equals: b instVarNames.
	self assert: a classInstVarNames equals: b classInstVarNames.
	self assert: a classVarNames equals: b classVarNames.
	self assert: a poolDictionaries equals: b poolDictionaries.
	self assert: a type equals: b type.
	self assert: a comment equals: b comment
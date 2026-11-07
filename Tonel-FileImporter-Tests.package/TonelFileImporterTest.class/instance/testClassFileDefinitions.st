tests - parsing
testClassFileDefinitions

	| importer classDefinition |
	importer := TonelFileImporter on: self classFile.
	self assert: importer definitions size equals: 5.
	self assert: importer classDefinitions size equals: 1.
	classDefinition := importer classDefinitions first.
	self assert: classDefinition className equals: #TonelFITestFoo.
	self assert: classDefinition superclassName equals: #Object.
	self assert: classDefinition packageName equals: #TonelFileImporterTestData.
	self assert: classDefinition tagName equals: #Core.
	self assert: classDefinition instanceVariablesString equals: 'alpha beta'.
	self assert: (classDefinition comment includesSubstring: '"comment" and methods contain ] and [')
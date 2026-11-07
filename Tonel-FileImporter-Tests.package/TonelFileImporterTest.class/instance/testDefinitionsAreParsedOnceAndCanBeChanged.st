tests - parsing
testDefinitionsAreParsedOnceAndCanBeChanged

	| importer |
	importer := TonelFileImporter on: self classFile.
	self assert: importer definitions identicalTo: importer definitions.
	importer definitions removeAll: importer methodDefinitions.
	self assert: importer definitions size equals: 1.
	self assert: importer methodDefinitions isEmpty
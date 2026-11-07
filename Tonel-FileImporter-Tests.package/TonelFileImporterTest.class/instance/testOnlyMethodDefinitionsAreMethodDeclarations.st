tests - browser protocol
testOnlyMethodDefinitionsAreMethodDeclarations

	| importer |
	importer := TonelFileImporter on: self classFile.
	self deny: importer classDefinitions first isMethodDeclaration.
	self assert: (importer methodDefinitions allSatisfy: [ :each | each isMethodDeclaration ])
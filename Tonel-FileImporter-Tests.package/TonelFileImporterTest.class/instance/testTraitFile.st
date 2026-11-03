tests - parsing
testTraitFile

	| importer |
	importer := TonelFileImporter on: self traitFile.
	self assert: importer classDefinitions size equals: 1.
	self assert: importer classDefinitions first isTraitDefinition.
	self assert: importer classDefinitions first className equals: #TTonelFITestTrait.
	self assert: importer methodDefinitions size equals: 2.
	self assert: (importer methodDefinitions detect: [ :each | each selector = #classTraitValue ]) classIsMeta
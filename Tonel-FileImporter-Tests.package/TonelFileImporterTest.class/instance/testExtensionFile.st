tests - parsing
testExtensionFile

	| importer method |
	importer := TonelFileImporter on: self extensionFile.
	self assert: importer classDefinitions isEmpty.
	self assert: importer methodDefinitions size equals: 1.
	method := importer methodDefinitions first.
	self assert: method className equals: #String.
	self assert: method selector equals: #tonelFITestExtension.
	self assert: method category equals: #'*TonelFileImporterTestData'
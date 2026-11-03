tests - parsing
testEmptyFileHasNoDefinitions

	| importer |
	importer := TonelFileImporter on: (self fileNamed: 'Empty.class.st' contents: '  
	 ').
	self assert: importer definitions isEmpty
tests - parsing
testGarbageFileSignalsParseError

	self
		should: [ (TonelFileImporter on: (self fileNamed: 'Garbage.st' contents: self garbageFileContents)) definitions ]
		raise: TonelParseError
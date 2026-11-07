tests - parsing
testPackageFileIsNotSupported

	self
		should: [ (TonelFileImporter on: (self fileNamed: 'package.st' contents: self packageFileContents)) definitions ]
		raise: TonelParseError
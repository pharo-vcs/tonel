tests - parsing
testFileNamedReadsFromTheDiskFileSystem

	| file |
	file := FileLocator imageDirectory asFileReference / 'TonelFITest-does-not-exist.class.st'.
	self deny: file exists.
	self should: [ (TonelFileImporter fileNamed: file fullName) definitions ] raise: FileDoesNotExistException
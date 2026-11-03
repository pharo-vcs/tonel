tests - load
testLoadFileNamedOnAMissingFileSignalsAnError

	self
		should: [
		TonelFileImporter loadFileNamed: (FileLocator imageDirectory asFileReference / 'TonelFITest-does-not-exist.class.st') fullName ]
		raise: FileDoesNotExistException.
	self deny: (self class environment includesKey: #TonelFITestFoo)
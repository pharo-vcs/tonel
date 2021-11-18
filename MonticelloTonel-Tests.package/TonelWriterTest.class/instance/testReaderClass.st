tests
testReaderClass

	self
		assert: self actualClass readerClass
		equals: (TonelReader forVersion: self actualClass formatVersion)
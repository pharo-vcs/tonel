tests
testSourceCodeOf

	self
		assert: (self actualClass sourceCodeOf: TonelMock)
		equals: (self expectedSourceCodeForTonelMock withLineEndings:
				 OSPlatform current lineEnding)
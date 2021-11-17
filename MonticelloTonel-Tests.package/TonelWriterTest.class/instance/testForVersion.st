tests
testForVersion

	self
		assert: (TonelWriter forVersion: self actualClass formatVersion)
		equals: self actualClass;
		assert: (TonelWriter forVersion: '') equals: TonelWriterV1
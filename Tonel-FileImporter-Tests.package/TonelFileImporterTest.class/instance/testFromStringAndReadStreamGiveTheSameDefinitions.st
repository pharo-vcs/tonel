tests - parsing
testFromStringAndReadStreamGiveTheSameDefinitions

	| expected |
	expected := (TonelFileImporter on: self classFile) definitions asArray.
	self assert: (TonelFileImporter fromString: self classFileContents) definitions asArray equals: expected.
	self assert: (TonelFileImporter readStream: self classFileContents readStream) definitions asArray equals: expected.
	self assert: (TonelFileImporter definitionsFromStream: self classFileContents readStream) asArray equals: expected
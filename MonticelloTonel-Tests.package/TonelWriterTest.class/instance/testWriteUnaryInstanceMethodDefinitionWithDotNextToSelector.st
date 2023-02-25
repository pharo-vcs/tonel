tests
testWriteUnaryInstanceMethodDefinitionWithDotNextToSelector

	| writer def stream |
	writer := self actualClass new.

	stream := String new writeStream.
	def := MCMethodDefinition
		       className: #Object
		       classIsMeta: false
		       selector: #selector
		       category: 'accessing'
		       timeStamp: nil
		       source: 'selector.
	^ 42'.
	writer writeMethodDefinition: def on: stream.
	self
		assert: stream contents
		equals:
			(self expectedUnaryInstanceMethodWithDotAfterSelectorSourceCode
				 withLineEndings: OSPlatform current lineEnding)
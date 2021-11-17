tests
testWriteKeywordInstanceMethodDefinitionWithDotNextToArgument

	| writer def stream |
	writer := self actualClass new.

	stream := String new writeStream.
	def := MCMethodDefinition
		       className: #Object
		       classIsMeta: false
		       selector: #'min:max'
		       category: 'accessing'
		       timeStamp: nil
		       source: 'min: a max: b.
	^ 42'.
	writer writeMethodDefinition: def on: stream.
	self
		assert: stream contents
		equals:
			(self expectedKeywordInstanceMethodSourceCode withLineEndings:
				 OSPlatform current lineEnding)
tests
testWriteMethodDefinitionOn

	| writer def stream |
	writer := self actualClass new.

	stream := String new writeStream.
	def := MCMethodDefinition
		       className: #Object
		       classIsMeta: false
		       selector: #selector
		       category: 'accessing'
		       timeStamp: nil
		       source: 'selector
	^ 42'.
	writer writeMethodDefinition: def on: stream.
	self
		assert: stream contents
		equals:
			(self expectedUnaryInstanceMethodSourceCode withLineEndings:
				 OSPlatform current lineEnding).

	stream := String new writeStream.
	def := MCMethodDefinition
		       className: #Object
		       classIsMeta: true
		       selector: #selector
		       category: 'accessing'
		       timeStamp: nil
		       source: 'selector
	^ 42'.
	writer writeMethodDefinition: def on: stream.
	self
		assert: stream contents
		equals: (self expectedUnaryClassMethodSourceCode withLineEndings:
				 OSPlatform current lineEnding).


	stream := String new writeStream.
	def := MCMethodDefinition
		       className: #Object
		       classIsMeta: false
		       selector: #=
		       category: 'comparing'
		       timeStamp: nil
		       source: '= anObject
	^ self == anObject'.
	writer writeMethodDefinition: def on: stream.
	self
		assert: stream contents
		equals: (self expectedComparisonMethodSourceCode withLineEndings:
				 OSPlatform current lineEnding)
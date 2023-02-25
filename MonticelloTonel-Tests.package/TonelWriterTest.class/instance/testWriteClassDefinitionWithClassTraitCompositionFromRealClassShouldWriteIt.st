tests
testWriteClassDefinitionWithClassTraitCompositionFromRealClassShouldWriteIt

	| writer def stream |
	writer := self actualClass new.

	stream := String new writeStream.
	def := self classWithTraitsWithClassComposition asClassDefinition.

	writer writeClassDefinition: def on: stream.
	self
		assert: stream contents
		equals:
			(self expectedClassWithTraitsDefinitionSourceCode withLineEndings:
				 OSPlatform current lineEnding).

	stream := String new writeStream.
	def := MCClassDefinition
		       name: #SomeObject
		       superclassName: #Object
		       traitComposition: '{}'
		       classTraitComposition: '{}'
		       category: #Kernel
		       instVarNames: #( a b c )
		       classVarNames: #( D E )
		       poolDictionaryNames: #( POOL )
		       classInstVarNames: #( instVarA )
		       type: #normal
		       comment: 'comment test'
		       commentStamp: nil.
	writer writeClassDefinition: def on: stream.
	self
		assert: stream contents
		equals:
			(self expectedSomeObjectClassDefinitionWithVariablesSourceCode
				 withLineEndings: OSPlatform current lineEnding)
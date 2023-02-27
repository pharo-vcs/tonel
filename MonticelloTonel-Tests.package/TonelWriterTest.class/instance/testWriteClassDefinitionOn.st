tests
testWriteClassDefinitionOn

	| writer def stream |
	writer := self actualClass new.

	stream := String new writeStream.
	def := MCClassDefinition
		       name: #SomeObject
		       superclassName: #Object
		       traitComposition: '{}'
		       classTraitComposition: '{}'
		       category: #Kernel
		       instVarNames: #(  )
		       classVarNames: #(  )
		       poolDictionaryNames: #(  )
		       classInstVarNames: #(  )
		       type: #normal
		       comment: 'comment test'
		       commentStamp: nil.
	writer writeClassDefinition: def on: stream.
	self
		assert: stream contents
		equals:
			(self expectedSomeObjectClassDefinitionSourceCode withLineEndings:
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
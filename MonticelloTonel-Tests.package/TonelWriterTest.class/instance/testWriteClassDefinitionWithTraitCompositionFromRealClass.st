tests
testWriteClassDefinitionWithTraitCompositionFromRealClass

	| writer def stream |
	writer := self actualClass new.

	stream := String new writeStream.
	def := self classWithTraits asClassDefinition.

	writer writeClassDefinition: def on: stream.
	self assert: stream contents equals: (self expectedClassDefinitionWithTraitCompositionFromRealClassSourceCode withLineEndings: OSPlatform current lineEnding).

	stream := String new writeStream.
	def := (MCClassDefinition named: #SomeObject)
		       packageName: #Kernel;
		       instVarNames: #( a b c );
		       classVarNames: #( D E );
		       poolDictionaryNames: #( POOL );
		       classInstVarNames: #( instVarA );
		       comment: 'comment test';
		       yourself.
	writer writeClassDefinition: def on: stream.
	self assert: stream contents equals: (self expectedSomeObjectClassDefinitionWithVariablesSourceCode withLineEndings: OSPlatform current lineEnding)
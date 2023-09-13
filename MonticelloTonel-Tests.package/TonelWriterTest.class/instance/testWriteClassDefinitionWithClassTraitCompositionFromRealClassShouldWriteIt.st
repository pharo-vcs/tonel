tests
testWriteClassDefinitionWithClassTraitCompositionFromRealClassShouldWriteIt

	| writer def stream |
	writer := self actualClass new.

	stream := String new writeStream.
	def := self classWithTraitsWithClassComposition asClassDefinition.

	writer writeClassDefinition: def on: stream.
	self assert: stream contents equals: (self expectedClassWithTraitsDefinitionSourceCode withLineEndings: OSPlatform current lineEnding).

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
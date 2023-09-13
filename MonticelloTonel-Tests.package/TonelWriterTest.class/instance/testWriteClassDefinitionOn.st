tests
testWriteClassDefinitionOn

	| writer def stream |
	writer := self actualClass new.

	stream := String new writeStream.
	def := (MCClassDefinition named: #SomeObject)
		       packageName: #Kernel;
		       comment: 'comment test';
		       yourself.
	writer writeClassDefinition: def on: stream.
	self assert: stream contents equals: (self expectedSomeObjectClassDefinitionSourceCode withLineEndings: OSPlatform current lineEnding).

	stream := String new writeStream.
	def := (MCClassDefinition named: #SomeObject)
		       packageName: #Kernel;
		       comment: 'comment test';
		       instVarNames: #( a b c );
		       classVarNames: #( D E );
		       poolDictionaryNames: #( POOL );
		       classInstVarNames: #( instVarA );
		       yourself.
	writer writeClassDefinition: def on: stream.
	self assert: stream contents equals: (self expectedSomeObjectClassDefinitionWithVariablesSourceCode withLineEndings: OSPlatform current lineEnding)
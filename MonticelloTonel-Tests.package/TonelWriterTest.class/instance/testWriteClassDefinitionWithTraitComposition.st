tests
testWriteClassDefinitionWithTraitComposition

	| writer def stream |
	writer := self actualClass new.

	stream := String new writeStream.
	def := (MCClassDefinition named: #SomeObject)
		       traitComposition: 'T1 + T2';
		       classTraitComposition: 'T1 classTrait + T2 classTrait';
		       packageName: #Kernel;
		       comment: 'comment test';
		       yourself.
	writer writeClassDefinition: def on: stream.
	self assert: stream contents equals: (self expectedClassDefinitionWithTraitCompositionSourceCode withLineEndings: OSPlatform current lineEnding).

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
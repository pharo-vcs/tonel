tests
testWriteTraitDefinitionWithTraitCompositionFromTrait

	| writer def stream |
	writer := self actualClass new.

	stream := String new writeStream.
	def := self classWithTraits asClassDefinition.

	writer writeClassDefinition: def on: stream.
	self assert: stream contents equals: (self
			 expectedClassDefinitionWithTraitCompositionFromRealClassSourceCode
			 withLineEndings: OSPlatform current lineEnding)
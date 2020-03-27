tests
testWriteTraitDefinitionWithTraitCompositionFromTrait
	| writer def stream |
	
	writer := self actualClass new.

	stream := String new writeStream.
	def := self classWithTraits asClassDefinition.
	
	writer writeClassDefinition: def on: stream. 
	self 
		assert: stream contents 
		equals: (
'Class {
	#name : #SomeObject,
	#superclass : #Object,
	#traits : ''T1 + T2'',
	#classTraits : ''T1 classTrait + T2 classTrait'',
	#category : #''MonticelloTonel-Tests''
}
' withLineEndings: OSPlatform current lineEnding).

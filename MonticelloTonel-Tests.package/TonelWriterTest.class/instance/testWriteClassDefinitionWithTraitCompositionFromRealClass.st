tests
testWriteClassDefinitionWithTraitCompositionFromRealClass
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

	stream := String new writeStream.
	def := MCClassDefinition
		name: #SomeObject
		superclassName: #Object
		traitComposition: '{}'
		classTraitComposition: '{}'
		category: #Kernel
		instVarNames: #(a b c)
		classVarNames: #(D E)
		poolDictionaryNames: #(POOL)
		classInstVarNames: #(instVarA)
		type: #normal
		comment: 'comment test'
		commentStamp: nil.
	writer writeClassDefinition: def on: stream. 
	self 
		assert: stream contents 
		equals: ('"
comment test
"
Class {
	#name : #SomeObject,
	#superclass : #Object,
	#instVars : [
		''a'',
		''b'',
		''c''
	],
	#classVars : [
		''D'',
		''E''
	],
	#pools : [
		''POOL''
	],
	#classInstVars : [
		''instVarA''
	],
	#category : #Kernel
}
' withLineEndings: OSPlatform current lineEnding).

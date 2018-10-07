tests
testWriteClassDefinitionOn
	| writer def stream |
	
	writer := TonelWriter new.

	stream := String new writeStream.
	def := MCClassDefinition
		name: #SomeObject
		superclassName: #Object
		traitComposition: '{}'
		classTraitComposition: '{}'
		category: #Kernel
		instVarNames: #()
		classVarNames: #()
		poolDictionaryNames: #()
		classInstVarNames: #()
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
	#category : ''Kernel''
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
	#category : ''Kernel''
}
' withLineEndings: OSPlatform current lineEnding).

private
expectedMTMockASubclassClassSt

	^ '"
A mock class to verify serialization using Tonel format (as a subclass of MTMockClassA) with an instance and a class variable
"
Class {
	#name : #MTMockSubclassOfA,
	#superclass : #MTMockClassA,
	#instVars : [
		''x''
	],
	#classVars : [
		''Y''
	],
	#category : #''MonticelloTonel-Tests-Mocks-Base''
}

{ #category : #''class initialization'' }
MTMockSubclassOfA class >> initialize [

	InitializationOrder := InitializationOrder
										ifNil: [ "let the test fail" -100 ]
										ifNotNil: [ InitializationOrder + 1 ]
]

{ #category : #accessing }
MTMockSubclassOfA >> variables [

	^ x + Y + MTMockClassA
]

{ #category : #accessing }
MTMockSubclassOfA >> variables2 [

	^ ivar + CVar
]
'
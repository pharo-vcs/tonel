private
expectedMTMockASubclassClassSt
	^ '"
A mock class to verify serialization using Tonel format (as a subclass of MTMockClassA)
"
Class {
	#name : #MTMockASubclass,
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
MTMockASubclass class >> initialize [

	InitializationOrder := InitializationOrder
										ifNil: [ "let the test fail" -100 ]
										ifNotNil: [ InitializationOrder + 1 ]
]

{ #category : #accessing }
MTMockASubclass >> variables [

	^ x + Y + MTMockClassA
]

{ #category : #accessing }
MTMockASubclass >> variables2 [

	^ ivar + CVar
]
'
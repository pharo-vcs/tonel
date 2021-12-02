private
expectedMTMockClassAClassSt
	^ '"
A mock class to verify serialization using Tonel format
"
Class {
	#name : #MTMockClassA,
	#superclass : #MTMock,
	#instVars : [
		''ivar''
	],
	#classVars : [
		''CVar'',
		''InitializationOrder''
	],
	#category : #''MonticelloTonel-Tests-Mocks''
}

{ #category : #''as yet unclassified'' }
MTMockClassA class >> cVar [
	^ CVar
]

{ #category : #''as yet unclassified'' }
MTMockClassA class >> initializationOrder [

	^ InitializationOrder
]

{ #category : #''as yet unclassified'' }
MTMockClassA class >> initialize [
	CVar := #initialized.
	InitializationOrder := 1.

]

{ #category : #''as yet unclassified'' }
MTMockClassA class >> one [

	^ 1
]

{ #category : #''as yet unclassified'' }
MTMockClassA class >> touchCVar [
	CVar := #touched
]

{ #category : #numeric }
MTMockClassA >> a [
	^ ''a2''
]

{ #category : #numeric }
MTMockClassA >> b [
	^ ''b1''
]

{ #category : #numeric }
MTMockClassA >> c [
	^ ''c1''
]

{ #category : #numeric }
MTMockClassA >> d [
	^ ''d''
]

{ #category : #boolean }
MTMockClassA >> falsehood [
	^ false
]

{ #category : #boolean }
MTMockClassA >> moreTruth [

	^ true
]

{ #category : #numeric }
MTMockClassA >> one [
	^ 1
]

{ #category : #''drag\''n\''drop'' }
MTMockClassA >> q [
]

{ #category : #boolean }
MTMockClassA >> truth [
	^ true
]

{ #category : #numeric }
MTMockClassA >> two [
	^ 2
]
'
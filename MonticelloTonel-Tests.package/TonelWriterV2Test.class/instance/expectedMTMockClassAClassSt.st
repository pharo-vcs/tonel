private
expectedMTMockClassAClassSt
	^ '"
A mock class to verify serialization using Tonel format
"
Class {
	#name : ''MTMockClassA'',
	#superclass : ''MTMock'',
	#instVars : [
		''ivar''
	],
	#classVars : [
		''CVar'',
		''InitializationOrder''
	],
	#category : ''MonticelloTonel-Tests-Mocks-Base''
}

{ #category : ''accessing'' }
MTMockClassA class >> cVar [

	^ CVar
]

{ #category : ''accessing'' }
MTMockClassA class >> initializationOrder [

	^ InitializationOrder
]

{ #category : ''class initialization'' }
MTMockClassA class >> initialize [

	CVar := #initialized.
	InitializationOrder := 1
]

{ #category : ''accessing'' }
MTMockClassA class >> one [

	^ 1
]

{ #category : ''operating'' }
MTMockClassA class >> touchCVar [

	CVar := #touched
]

{ #category : ''numeric'' }
MTMockClassA >> a [

	^ ''a2''
]

{ #category : ''numeric'' }
MTMockClassA >> b [

	^ ''b1''
]

{ #category : ''numeric'' }
MTMockClassA >> c [

	^ ''c1''
]

{ #category : ''numeric'' }
MTMockClassA >> d [

	^ ''d''
]

{ #category : ''boolean'' }
MTMockClassA >> falsehood [

	^ false
]

{ #category : ''don\''nt remove'' }
MTMockClassA >> methodInCategoryWithApostrophe [
	"A method that is grouped in a method category with an apostrophe"
]

{ #category : ''boolean'' }
MTMockClassA >> moreTruth [

	^ true
]

{ #category : ''numeric'' }
MTMockClassA >> one [

	^ 1
]

{ #category : ''boolean'' }
MTMockClassA >> truth [

	^ true
]

{ #category : ''numeric'' }
MTMockClassA >> two [

	^ 2
]
'
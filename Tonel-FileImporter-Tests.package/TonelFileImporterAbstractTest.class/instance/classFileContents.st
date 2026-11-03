fixtures
classFileContents

	^ '"
I am a test fixture: a class whose ""comment"" and methods contain ] and [.
"
Class {
	#name : #TonelFITestFoo,
	#superclass : #Object,
	#instVars : [
		''alpha'',
		''beta''
	],
	#classVars : [
		''Shared''
	],
	#category : #''TonelFileImporterTestData-Core'',
	#package : #TonelFileImporterTestData,
	#tag : #Core
}

{ #category : #''instance creation'' }
TonelFITestFoo class >> withAlpha: anObject [

	^ self new
		  alpha: anObject;
		  yourself
]

{ #category : #accessing }
TonelFITestFoo >> alpha [

	^ alpha
]

{ #category : #accessing }
TonelFITestFoo >> alpha: anObject [

	alpha := anObject
]

{ #category : #tricky }
TonelFITestFoo >> tricky [
	"a comment with ] and [ inside"

	^ ''][''
]
'
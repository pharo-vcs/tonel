examples
exampleClassFile

	<sampleInstance>
	^ self fromString: '"
I am an example class, read from a Tonel string.
"
Class {
	#name : #TonelExampleCounter,
	#superclass : #Object,
	#instVars : [
		''count''
	],
	#package : #TonelFileImporterExample,
	#tag : #Model
}

{ #category : #operations }
TonelExampleCounter >> increment [

	count := self count + 1
]

{ #category : #accessing }
TonelExampleCounter >> count [

	^ count ifNil: [ 0 ]
]
'
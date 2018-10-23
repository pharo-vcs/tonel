tests
testSourceCodeOf
	self
		assert: (self actualClass sourceCodeOf: TonelMock)
		equals:
			('"
Description
--------------------

I am a simple Mock for Tonel export test
"
Class {
	#name : #TonelMock,
	#superclass : #Object,
	#category : #''MonticelloTonel-Tests''
}

{ #category : #accessing }
TonelMock class >> classMethod [
	^ 8
]

{ #category : #accessing }
TonelMock >> instanceMethod [
	^ true
]
'
				withLineEndings: OSPlatform current lineEnding)
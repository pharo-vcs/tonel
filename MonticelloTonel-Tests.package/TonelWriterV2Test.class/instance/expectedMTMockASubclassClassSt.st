private
expectedMTMockASubclassClassSt
	^ 'Class {
	#name : ''MTMockASubclass'',
	#superclass : ''MTMockClassA'',
	#instVars : [
		''x''
	],
	#classVars : [
		''Y''
	],
	#category : ''MonticelloTonel-Tests-Mocks''
}

{ #category : ''as yet unclassified'' }
MTMockASubclass class >> initialize [

	InitializationOrder := InitializationOrder
		ifNil: [ -100 ] "let the test fail"
		ifNotNil: [ InitializationOrder + 1.]
]

{ #category : ''as yet unclassified'' }
MTMockASubclass >> variables [
	^ x + Y + MTMockClassA
]

{ #category : ''as yet unclassified'' }
MTMockASubclass >> variables2 [
	^ ivar + CVar
]
'
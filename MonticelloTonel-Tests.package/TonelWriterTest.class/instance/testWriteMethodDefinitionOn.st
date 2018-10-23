tests
testWriteMethodDefinitionOn
	| writer def stream |
	
	writer := self actualClass new.

	stream := String new writeStream.
	def := MCMethodDefinition 
		className: #Object
		classIsMeta: false
		selector: #selector
		category: 'accessing' 
		timeStamp: nil
		source: 'selector
	^ 42'.
	writer writeMethodDefinition: def on: stream. 
	self 
		assert: stream contents 
		equals: ('
{ #category : #accessing }
Object >> selector [
	^ 42
]
' withLineEndings: OSPlatform current lineEnding).

	stream := String new writeStream.
	def := MCMethodDefinition 
		className: #Object
		classIsMeta: true
		selector: #selector
		category: 'accessing' 
		timeStamp: nil
		source: 'selector
	^ 42'.
	writer writeMethodDefinition: def on: stream. 
	self 
		assert: stream contents 
		equals: ('
{ #category : #accessing }
Object class >> selector [
	^ 42
]
' withLineEndings: OSPlatform current lineEnding).


	stream := String new writeStream.
	def := MCMethodDefinition 
		className: #Object
		classIsMeta: false
		selector: #=
		category: 'comparing' 
		timeStamp: nil
		source: '= anObject
	^ self == anObject'.
	writer writeMethodDefinition: def on: stream. 
	self 
		assert: stream contents 
		equals: ('
{ #category : #comparing }
Object >> = anObject [
	^ self == anObject
]
' withLineEndings: OSPlatform current lineEnding).
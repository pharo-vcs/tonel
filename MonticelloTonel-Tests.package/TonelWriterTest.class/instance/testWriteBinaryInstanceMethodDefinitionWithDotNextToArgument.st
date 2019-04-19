tests
testWriteBinaryInstanceMethodDefinitionWithDotNextToArgument
	| writer def stream |
	
	writer := self actualClass new.

	stream := String new writeStream.
	def := MCMethodDefinition 
		className: #Object
		classIsMeta: false
		selector: #+
		category: 'accessing' 
		timeStamp: nil
		source: '+ a.
	^ 42'.
	writer writeMethodDefinition: def on: stream. 
	self 
		assert: stream contents 
		equals: ('
{ #category : #accessing }
Object >> + a [.
	^ 42
]
' withLineEndings: OSPlatform current lineEnding).
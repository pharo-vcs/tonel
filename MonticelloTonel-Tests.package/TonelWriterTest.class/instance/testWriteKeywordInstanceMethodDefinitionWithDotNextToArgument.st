tests
testWriteKeywordInstanceMethodDefinitionWithDotNextToArgument
	| writer def stream |
	
	writer := self actualClass new.

	stream := String new writeStream.
	def := MCMethodDefinition 
		className: #Object
		classIsMeta: false
		selector: #min:max
		category: 'accessing' 
		timeStamp: nil
		source: 'min: a max: b.
	^ 42'.
	writer writeMethodDefinition: def on: stream. 
	self 
		assert: stream contents 
		equals: ('
{ #category : #accessing }
Object >> min: a max: b [.
	^ 42
]
' withLineEndings: OSPlatform current lineEnding).
tests
testRemoveFromEnclosingStartEnd
	| parser nl |
	
	nl := OSPlatform current lineEnding.
	parser := TonelParser new.
	self 
		assert: (parser 
			removeFrom: '[ ^ self ]'  
			enclosingStart: $[ 
			end: $])
		equals: '^ self'.
		
	self 
		assert: (parser 
			removeFrom: ('[ 
	^ self ]' withLineEndings: nl) 
			enclosingStart: $[ 
			end: $])
		equals: Character tab asString, '^ self'.
	
	self 
		assert: (parser 
			removeFrom: ('[ 
	^ self
	]' withLineEndings: nl)
			enclosingStart: $[ 
			end: $])
		equals: Character tab asString, '^ self'.
		
	self 
		assert: (parser 
			removeFrom: ('[ 

	^ self

]' withLineEndings: nl)
			enclosingStart: $[ 
			end: $])
		equals: ('
	^ self
' withLineEndings: nl)
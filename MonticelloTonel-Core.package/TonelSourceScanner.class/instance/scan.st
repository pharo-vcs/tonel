scanning
scan
	result := String new writeStream.
	isFinished := isComment := isString := isLiteralArray := false.
	char := prevChar := prevPrevChar := nil.
	count := 0.	
			
	stream peek = $[ ifFalse: [ TonelParseError signal: 'Can''t parse method body' ].
	[ stream atEnd or: [ isFinished ] ]
	whileFalse: [ self scanNextChunk ].
	isFinished ifTrue: [ 
		"clean up to return"
		^ self 
			removeFrom: result contents 
			enclosingStart: $[ 
			end: $]
			clean: #right ].

	TonelParseError signal: 'Can''t parse method body'
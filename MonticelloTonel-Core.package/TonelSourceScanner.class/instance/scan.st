scanning
scan
	self prepareToScan.
	stream peek = $! ifTrue: [
		"Robust mode, source use a *chunk* format. existing ! are escaped (doubled)"
		stream next.
		^ (String streamContents: [ :str |
			| ch |
			[	ch := stream peek.
				ch ~= $! or: [ 
					stream next.
					ch := stream peek.
					ch = $! ] ]
			whileTrue: [ str nextPut: stream next ] ] ) withInternalLineEndings ].

	stream peek = $[ ifFalse: [ TonelParseError signal: 'Can''t parse method body' ].
	[ stream atEnd or: [ isFinished ] ]
	whileFalse: [ self scanNextChunk ].
	isFinished ifTrue: [
		"clean up to return"
		^ self
			removeFrom: result contents withInternalLineEndings
			enclosingStart: $[
			end: $]
			clean: #right ].

	TonelParseError signal: 'Can''t parse method body'
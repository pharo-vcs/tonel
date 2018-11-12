scanning
scanForBlock
	| match |
	match := false.
	char = $[ ifTrue: [ 
		count := count + 1.
		match := true ].
	char = $] ifTrue: [ 
		count := count - 1.
		match := true ].
	isFinished := count = 0.
	^match

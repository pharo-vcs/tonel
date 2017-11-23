scanning
scanForBlockIfMatch: aBlock
	| match |
	
	match := false.
	(char = $[ and: [  prevChar ~= $$ ]) ifTrue: [ 
		count := count + 1.
		match := true ].
	(char = $] and: [ prevChar ~= $$ ]) ifTrue: [ 
		count := count - 1.
		match := true ].
	count = 0 ifTrue: [ isFinished := true ].
	match ifTrue: aBlock

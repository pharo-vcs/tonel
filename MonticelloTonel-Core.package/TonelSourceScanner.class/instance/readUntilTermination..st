private
readUntilTermination: matchChar
	| terminationCount |
	terminationCount := 1.
	self readUntil: [ 
		char = matchChar ifTrue: [ terminationCount := terminationCount + 1 ].
		terminationCount even and: [ stream peek ~= matchChar ] ].